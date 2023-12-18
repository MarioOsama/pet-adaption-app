class AppUser {
  // user constructor
  AppUser({
    required this.email,
    required this.username,
    required this.city,
    required this.phone,
  });

  // new user constructor
  AppUser.newUser({
    required this.email,
    required this.username,
    required this.password,
    required this.city,
    required this.phone,
  });

  // existing user constructor
  AppUser.existingUser({
    required this.email,
    required this.password,
  });

  // declaration of variables
  final String email;
  String? password;
  String? username;
  String? city;
  String? phone;
}
