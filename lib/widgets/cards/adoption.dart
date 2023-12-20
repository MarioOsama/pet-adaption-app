import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:pet_adaption_app/main.dart';
import 'package:pet_adaption_app/models/adoptable-pet.dart';
import 'package:pet_adaption_app/screens/pet-details.dart';

class AdoptionCard extends StatelessWidget {
  const AdoptionCard({super.key, required this.pet});

  final AdoptablePet pet;

  void _onCardPressed(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => PetDetailsScreen(pet: pet)));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _onCardPressed(context);
      },
      child: Card(
        elevation: 3,
        shadowColor: Colors.black,
        color: backgroundColor,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // Pet image
            Hero(
              tag: pet.images[0],
              child: CachedNetworkImage(
                imageUrl: pet.images[0],
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                // Cache manager for image
                cacheManager: CacheManager(
                  Config(
                    pet.images[0],
                    stalePeriod: const Duration(days: 7),
                  ),
                ),
              ),
            ),
            // overlay
            FractionallySizedBox(
              heightFactor: 0.3,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                  ),
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ),

            // Pet details
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Pet name
                  Text(
                    pet.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Pet gender
                      Text(
                        pet.gender.toString().replaceFirst('Gender.', ''),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      // Pet age
                      Text(
                        "${pet.getAge} months",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
