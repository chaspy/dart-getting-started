import 'classes.dart';

mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of ostranants: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(super.name, DateTime super.launchDate);
}

void main() {
  var craft = PilotedCraft('Orbiter', DateTime(2024, 1, 1));
  craft.describeCrew();
}
