class HomeState {
  final double multiplier;

  const HomeState(this.multiplier);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeState && runtimeType == other.runtimeType && multiplier == other.multiplier;

  @override
  int get hashCode => multiplier.hashCode;
}
