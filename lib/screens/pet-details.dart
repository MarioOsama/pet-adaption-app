import 'package:flutter/material.dart';
import 'package:pet_adaption_app/main.dart';
import 'package:pet_adaption_app/models/adoptable-pet.dart';
import 'package:pet_adaption_app/widgets/pets/pet-images-carousel.dart';

class PetDetailsScreen extends StatelessWidget {
  const PetDetailsScreen({super.key, required this.pet});

  final AdoptablePet pet;

  @override
  Widget build(BuildContext context) {
    const double sizedBoxHeight = 10.0;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
          elevation: 5,
          shadowColor: Colors.black,
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          centerTitle: true,
          title: const Text(
            "Pet Details",
          )),
      body: Column(
        children: [
          // Pet images
          Expanded(
            child: PetImagesCarousel(images: pet.images),
          ),

          // Pet details
          Expanded(
            child: SingleChildScrollView(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Pet name
                  Text(pet.name,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 24.0)),
                  const SizedBox(
                    height: sizedBoxHeight,
                  ),
                  // Pet age
                  Text("Age: ${pet.getAge} months",
                      style: Theme.of(context).textTheme.labelMedium),
                  const SizedBox(
                    height: sizedBoxHeight,
                  ),

                  // Pet gender and color
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Pet gender
                      Text(pet.gender.toString().replaceFirst('.', ': '),
                          style: Theme.of(context).textTheme.labelMedium),

                      // Pet color
                      Text('Color: ${pet.color}',
                          style: Theme.of(context).textTheme.labelMedium),
                    ],
                  ),
                  const SizedBox(
                    height: sizedBoxHeight,
                  ),

                  // Pet description
                  Container(
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: foregroundColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Details: ',
                            style: Theme.of(context).textTheme.labelMedium),
                        const SizedBox(
                          height: sizedBoxHeight,
                        ),
                        Text(pet.description,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(fontSize: 12.0)),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: sizedBoxHeight,
                  ),

                  // Adopt button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromHeight(50.0),
                        backgroundColor: foregroundColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                      ),
                      child: Text("Adopt me",
                          style: Theme.of(context).textTheme.bodyMedium),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
