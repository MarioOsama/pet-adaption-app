import 'package:uuid/uuid.dart';

// Create a gender enum
enum Gender {
  male,
  female,
}

// Create an enum for the pets species
enum Species {
  cat,
  dog,
}

class AdoptablePet {
  // Recieve adoptable pet data (images, name, age, gender, color, description)
  AdoptablePet({
    required this.species,
    required this.images,
    required this.name,
    required this.age,
    required this.gender,
    required this.color,
    required this.description,
  }) : petId = const Uuid().v1();

  // Get pet age in months
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
