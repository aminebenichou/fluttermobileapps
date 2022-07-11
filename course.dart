void main() {
  var name = 'Farouk';
  var age = 18;
  var i = 0;
  var persons = [
    {
      'name': 'John Doe',
      'job': 'analyst',
      'age': 18,
    },
    {
      'name': 'John',
      'job': 'Dev',
      'age': 18,
    },
    {
      'name': 'Doe',
      'job': 'engineer',
      'age': 18,
    },
  ];

  for (var person in persons) {
    print(person['name']);
  }

  /*  if (name != 'Farouk') {
    print(age);
  } else if (age == 17) {
    print('louz');
  } else {
    print('object');
  } */

  var b = somme(3, 10); // 13
  print(b);
}

somme(int z, int y) {
  var x = y + z;
  return x; //13
}

class home {
  
  final int rooms;
  final int floor;

  const home({
    required this.floor,
    required this.rooms
  });
}
