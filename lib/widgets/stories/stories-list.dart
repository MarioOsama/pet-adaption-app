import 'package:flutter/material.dart';
import 'package:pet_adaption_app/data/dummyData.dart';
import 'package:pet_adaption_app/widgets/stories/story-item.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    // build a ListView to contain a StoryItem
    return Expanded(
      child: ListView.builder(
          padding: const EdgeInsets.all(0),
          itemCount: dummyStoriesData.length,
          // horizontal scrolling effect
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            // build a StoryItem
            return StoryItem(storyData: dummyStoriesData[index]);
          }),
    );
  }
}
