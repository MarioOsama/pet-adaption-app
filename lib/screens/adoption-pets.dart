import 'package:flutter/material.dart';
import 'package:pet_adaption_app/data/dummyData.dart';
import 'package:pet_adaption_app/main.dart';
import 'package:pet_adaption_app/models/adoptable-pet.dart';
import 'package:pet_adaption_app/widgets/cards/adoption.dart';

class AdoptionPetsScreen extends StatelessWidget {
  const AdoptionPetsScreen({super.key, required this.species});

  final Species species;

  @override
  Widget build(BuildContext context) {
    final speciesList = dummyAdoptablePetsData.where((pet) {
      return pet.species == species;
    }).toList();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // back button
            TextButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: TextButton.styleFrom(
                  backgroundColor: itemColor,
                  foregroundColor: foregroundColor,
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                icon: const Icon(Icons.arrow_back_ios),
                label: const Text('Back')),

            Expanded(
              child: GridView.builder(
                itemCount: speciesList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0),
                itemBuilder: (ctx, index) {
                  // check Matching Species
                  return AdoptionCard(
                    pet: speciesList[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
