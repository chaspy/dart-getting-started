import 'classes.dart'; // Spacecraft クラスをインポート

class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}

void main() {
  var orbiter = Orbiter('Orbiter', DateTime(2024, 1, 1), 100000);
  orbiter.describe();
}
