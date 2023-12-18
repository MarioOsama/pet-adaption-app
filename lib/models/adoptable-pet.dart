import 'package:uuid/uuid.dart';

// create a gender enum
enum Gender {
  male,
  female,
}

// create an enum for the pets species
enum Species {
  cat,
  dog,
}

class AdoptablePet {
  // recieve adoptable pet data (images, name, age, color, description)
  AdoptablePet({
    required this.species,
    required this.images,
    required this.name,
    required this.age,
    required this.gender,
    required this.color,
    required this.description,
  }) : petId = const Uuid().v1();

  int get getAge {
    return (age * 12).toInt();
  }

  final String petId;
  final Species species;
  final List<String> images;
  final String name;
  final double age;
  final Gender gender;
  final String color;
  final String description;
}
