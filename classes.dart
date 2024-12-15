class Spacecraft {
  String name;
  DateTime? launchDate;

  // Read-only non-final property
  int? get launchYear => launchDate?.year;

  // Constructor, with syntactic sugart for assignment to members
  Spacecraft(this.name, this.launchDate) {
    // initialization
  }

  // Named constructor that forwards to the default one
  Spacecraft.unlaunched(this.name) : launchDate = null;

  // Method
  void describe() {
    print('Spacecraft: $name');
    // Type promotion doesn't work on getters
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate!).inDays ~/ 365;
      print('Launched: $years years ago');
    } else {
      print('Unlaunched');
    }
  }
}

void main() {
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var unlaunched = Spacecraft.unlaunched('Voyager I');
  unlaunched.describe();
}
