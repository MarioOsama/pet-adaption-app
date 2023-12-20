import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:pet_adaption_app/main.dart';
import 'package:pet_adaption_app/models/story.dart';
import 'package:pet_adaption_app/widgets/timer-bar.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({super.key, required this.storyData});

  final Story storyData;

  // show an overlay with story
  Future<void> _onShowStory({required BuildContext context}) {
    // Duration to hide the modalBottomSheet
    const Duration bottomSheetDuration = Duration(seconds: 5);

    return showModalBottomSheet(
      backgroundColor: Colors.black,
      // to fit screen height
      isDismissible: true,
      isScrollControlled: true,
      context: context,
      builder: (ctx) {
        // hide the modalBottomSheet after 5 seconds
        Future.delayed(bottomSheetDuration, () {
          // if the modalBottomSheet is still shown
          if (Navigator.of(ctx).canPop()) {
            Navigator.of(ctx).pop();
          }
          // if the modalBottomSheet is ignored by the user
        }).catchError((error) {
          null;
        });

        return Stack(
          children: [
            // story image
            CachedNetworkImage(
              imageUrl: storyData.imageLink,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              placeholder: (context, url) => const LinearProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              // Cache manager for image
              cacheManager: CacheManager(
                Config(
                  storyData.imageLink,
                  stalePeriod: const Duration(days: 7),
                ),
              ),
            ),

            // Progress bar to show the time remaining
            const Padding(
              padding: EdgeInsets.only(top: 40.0, left: 12.0),
              child: TimerBar(),
            ),

            // back button
            Padding(
              padding: const EdgeInsets.only(top: 34.0, left: 5.0),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_sharp,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // make container clickable
    return InkWell(
      borderRadius: BorderRadius.circular(100.0),
      radius: 15.0,
      splashColor: foregroundColor,
      onTap: () {
        // show an overlay with story
        _onShowStory(context: context);
      },
      // container for image
      child: CachedNetworkImage(
        imageUrl: storyData.imageLink,
        imageBuilder: (context, imageProvider) => Container(
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
            border: Border.all(color: foregroundColor, width: 3.0),
            shape: BoxShape.circle,
          ),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        // Cache manager for image
        cacheManager: CacheManager(
          Config(
            storyData.imageLink,
            stalePeriod: const Duration(days: 7),
          ),
        ),
      ),
    );
  }
}
