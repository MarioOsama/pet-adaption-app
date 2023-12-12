import 'package:flutter/material.dart';
import 'package:pet_adaption_app/main.dart';

class AnimalsDropdownButton extends StatefulWidget {
  const AnimalsDropdownButton({super.key});

  @override
  State<AnimalsDropdownButton> createState() => _AnimalsDropdownButtonState();
}

class _AnimalsDropdownButtonState extends State<AnimalsDropdownButton> {
  String _selectedItem = 'Dog';

  void onChooseAnimal(item) {
    setState(() {
      _selectedItem = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        color: itemColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: DropdownButton<String>(
          borderRadius: BorderRadius.circular(10),
          icon: const Icon(
            Icons.keyboard_arrow_down,
            size: 30,
            color: foregroundColor,
          ),
          dropdownColor: itemColor,
          value: _selectedItem,
          underline: const Text(''),
          items: [
            DropdownMenuItem(
                value: 'Dog',
                child: Container(
                  decoration: BoxDecoration(
                    color: itemColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: backgroundColor,
                        radius: 15,
                        child: Image.asset(
                          "assets/images/dog-face.png",
                          scale: 25,
                          color: foregroundColor,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Dog",
                      )
                    ],
                  ),
                )),
            DropdownMenuItem(
                value: 'Cat',
                child: Container(
                  decoration: BoxDecoration(
                    color: itemColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: backgroundColor,
                        radius: 15,
                        child: Image.asset(
                          "assets/images/cat-face.png",
                          scale: 25,
                          color: foregroundColor,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text("Cat")
                    ],
                  ),
                ))
          ],
          onChanged: onChooseAnimal),
    );
  }
}
