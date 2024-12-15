void main() {
  var year = 2024;

  if (year >= 2000) {
    print('21st century');
  } else if (year >= 1900) {
    print('20th century');
  }

  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

  for (final object in flybyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  year = 2004;

  while (year < 2016) {
    year += 1;
    print(year);
  }
}
