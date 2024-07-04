int calculate() {
  const int trips = 100;
  List<bool> switches = List.filled(trips, false);

  for (int trip = 1; trip <= trips; trip++) {
    for (int switchIndex = trip - 1; switchIndex < trips; switchIndex += trip) {
      switches[switchIndex] = !switches[switchIndex];
    }
  }

  int countOn = switches.where((s) => s).length;
  return countOn;
}
