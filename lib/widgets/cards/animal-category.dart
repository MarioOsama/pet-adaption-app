import 'package:flutter/material.dart';
import 'package:pet_adaption_app/main.dart';
import 'package:pet_adaption_app/models/adoptable-pet.dart';
import 'package:pet_adaption_app/screens/adoption-pets.dart';

class AnimalCategoryCard extends StatelessWidget {
  const AnimalCategoryCard(
      {super.key, required this.title, required this.imagePath});

  final String title;
  final String imagePath;

  void _onBrowseButtonPressed(BuildContext ctx) {
    // get species from title
    final species = Species.values.firstWhere((species) {
      return species.toString().replaceFirst('Species.', '') ==
          title.split(' ')[0][0].toLowerCase() +
              title.split(' ')[0].substring(1);
    });
    // navigate to adoption screen with the targeted species
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return AdoptionPetsScreen(species: species);
    }));
  }

  @override
  Widget build(BuildContext context) {
    // get 40% of screen width
    final double cardWidth = MediaQuery.of(context).size.width * 40 / 100;
    // set card height
    const double cardHeight = 240.0;
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: cardWidth,
      height: cardHeight,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.25),
            spreadRadius: 0.1,
            blurRadius: 5,
            offset: const Offset(2, 3),
          )
        ],
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      // card content
      child: Column(
        children: [
          // card image
          Image.asset(
            imagePath,
          ),

          const Spacer(),

          // card title
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),

          // browse button
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: TextButton.icon(
                onPressed: () {
                  _onBrowseButtonPressed(context);
                },
                style: TextButton.styleFrom(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(0.0),
                    backgroundColor: itemColor,
                    foregroundColor: foregroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
                icon: const Icon(
                  Icons.keyboard_arrow_right,
                  color: foregroundColor,
                ),
                label: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                  child: Text(
                    'Browse',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontWeight: FontWeight.w900, fontSize: 16.0),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
