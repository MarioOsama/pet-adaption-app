class Grooming {
  const Grooming(
      {required this.groomingName,
      required this.price,
      required this.totalServices,
      required this.services});

  final String groomingName;
  final double price;
  final int totalServices;
  final List<String> services;
}
