import 'package:flutter/material.dart';

class PetImagesCarousel extends StatefulWidget {
  const PetImagesCarousel({Key? key, required this.images}) : super(key: key);

  final List<String> images;

  @override
  State<PetImagesCarousel> createState() => _PetImagesCarouselState();
}

class _PetImagesCarouselState extends State<PetImagesCarousel> {
  // Create a PageController
  late PageController _pageController;
  // Track the active page
  int activePage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.9);
  }

  @override
  void dispose() {
    // Dispose the PageController
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Get the pet images
    final petImages = widget.images;

    return PageView.builder(
      itemCount: petImages.length,
      pageSnapping: true,
      controller: _pageController,
      onPageChanged: (page) {
        setState(() {
          // Update the active page
          activePage = page;
        });
      },
      itemBuilder: (context, pagePosition) {
        // Set the active page indicator
        bool active = pagePosition == activePage;
        // Set the margin
        EdgeInsets margin =
            EdgeInsets.symmetric(horizontal: active ? 5 : 10, vertical: 20);
        return AnimatedContainer(
          decoration: BoxDecoration(
            // Image shadow
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(2, 5),
              ),
            ],
          ),
          duration: const Duration(milliseconds: 250),
          margin: margin,
          child: Hero(
            tag: petImages[pagePosition],
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                petImages[pagePosition],
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        );
      },
    );
  }
}
