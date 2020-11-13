import 'package:flutter/material.dart';

class SomeDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: SizedBox(
        height: 100,
        child: Text('Some Dialog'),
      ),
    );
  }
}
