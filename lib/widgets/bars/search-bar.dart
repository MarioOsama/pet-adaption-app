import 'package:flutter/material.dart';
import 'package:pet_adaption_app/main.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    // get the screen width
    final double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 77 / 100,
      child: SearchBar(
        textStyle: MaterialStateTextStyle.resolveWith((states) =>
            Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 16)),
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        hintText: 'Search',
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: foregroundColor,
          ),
        ),
      ),
    );
  }
}
