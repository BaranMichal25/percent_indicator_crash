import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:percent_indicator_crash/home_notifier.dart';
import 'package:percent_indicator_crash/home_state.dart';
import 'package:percent_indicator_crash/some_dialog.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Selector<HomeNotifier, HomeState>(
        selector: (_, notifier) => notifier.state,
        builder: (_, state, ___) {
          return ListView.builder(
            itemCount: 4,
            itemBuilder: (_, index) {
              return SizedBox(
                width: 100,
                child: ListItem(index * state.multiplier),
              );
            },
          );
        },
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final double index;

  ListItem(this.index) : super(key: ObjectKey(index));

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () => _onButtonClick(context),
        child: Column(
          children: [
            LinearPercentIndicator(
              lineHeight: 10.0,
              percent: 0.8,
              progressColor: Colors.green[500],
              backgroundColor: Colors.grey[500],
              animation: true,
            ),
            SizedBox(height: 800),
          ],
        ),
      ),
    );
  }

  Future<void> _onButtonClick(BuildContext context) async {
    final notifier = Provider.of<HomeNotifier>(context, listen: false);
    await showDialog<void>(
      context: context,
      builder: (_) => SomeDialog(),
    );

    notifier.reloadContent();
  }
}
