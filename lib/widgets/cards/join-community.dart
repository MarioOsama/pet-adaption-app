import 'package:flutter/material.dart';
import 'package:pet_adaption_app/main.dart';

class JoinCommunityCard extends StatelessWidget {
  const JoinCommunityCard({super.key});

  @override
  Widget build(BuildContext context) {
    // get the screen height and width
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        // card content
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          color: backgroundColor,
          child: Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.all(4 * width / 100),
            width: double.infinity,
            child: Column(
              children: [
                // card title
                SizedBox(
                  width: 45 * width / 100,
                  child: Text('Join Our Community',
                      style: Theme.of(context).textTheme.bodyLarge),
                ),

                // card description
                SizedBox(
                  width: 45 * width / 100,
                  child: Text('Share your pet moments with other pet parents.',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontWeight: FontWeight.w900)),
                )
              ],
            ),
          ),
        ),

        // card icon button
        Positioned(
          top: 4 * height / 100,
          right: 3 * width / 100,
          child: IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              backgroundColor: itemColor,
              shape: const CircleBorder(),
              foregroundColor: foregroundColor,
            ),
            icon: const Icon(Icons.keyboard_arrow_right),
          ),
        ),

        // card image
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 15.0),
          child: Image.asset(
            'assets/images/join-community-card.png',
            scale: 1.5,
          ),
        ),
      ],
    );
  }
}
