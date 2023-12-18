import 'package:flutter/material.dart';
import 'package:pet_adaption_app/main.dart';
import 'package:pet_adaption_app/services/guidance-messages.dart';
import 'package:pet_adaption_app/widgets/cards/animal-category.dart';
import 'package:pet_adaption_app/widgets/cards/join-community.dart';
import 'package:pet_adaption_app/widgets/bars/search-bar.dart';
import 'package:pet_adaption_app/widgets/stories/stories-list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // variables initialization
  final double _sizedBoxHeight = 10.0;

  void _onSignOut(context) {
    GuidanceMessages().showSignoutDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    // get screen height
    final double height = MediaQuery.of(context).size.height;

    return
        // make screen scrollable
        SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: height - 8 * height / 100,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 50.0, 16.0, 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // search bar
              Row(
                children: [
                  const HomeSearchBar(),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      _onSignOut(context);
                    },
                    style: IconButton.styleFrom(
                      padding: const EdgeInsets.all(12.0),
                      backgroundColor: backgroundColor,
                      shape: const CircleBorder(),
                    ),
                    icon: const Icon(
                      Icons.output_rounded,
                      size: 30.0,
                      color: Color.fromARGB(255, 44, 50, 50),
                    ),
                  )
                ],
              ),

              const Spacer(),

              // adoption section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // section title
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Who are you looking for?',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(
                    height: _sizedBoxHeight,
                  ),

                  // animal category cards
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AnimalCategoryCard(
                        title: 'Cat adaption',
                        imagePath: "assets/images/cat-card.png",
                      ),
                      AnimalCategoryCard(
                        title: 'Dog adaption',
                        imagePath: "assets/images/dog-card.png",
                      ),
                    ],
                  ),
                ],
              ),

              const Spacer(),

              // community section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // section title
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Community',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(
                    height: _sizedBoxHeight,
                  ),

                  // community card
                  const JoinCommunityCard(),
                ],
              ),

              const Spacer(),

              // stories section
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // section title
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Stories',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                    // stories list
                    const StoriesList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
