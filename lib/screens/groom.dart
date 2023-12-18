import 'package:flutter/material.dart';
import 'package:pet_adaption_app/data/dummyData.dart';
import 'package:pet_adaption_app/main.dart';
import 'package:pet_adaption_app/widgets/pets/pets-dropdownbutton.dart';
import 'package:pet_adaption_app/widgets/cards/grooming.dart';

class GroomScreen extends StatelessWidget {
  const GroomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // back button + avatar image + AnimalsDropdownButton
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // avatar image container
            Container(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 125),
              height: 400,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200),
                ),
              ),
              child: Image.asset("assets/images/grooming-image.png"),
            ),
            // explian text
            Padding(
              padding: const EdgeInsets.only(bottom: 95.0),
              child: Text('Select your pet',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(fontSize: 16)),
            ),

            // AnimalsDropdownButton
            const Padding(
              padding: EdgeInsets.only(bottom: 35.0),
              child: PetsDropdownButton(),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text('Grooming Packages', style: Theme.of(context).textTheme.bodyLarge),
        Expanded(
          child: ListView.builder(
              itemCount: dummyGroomingData.length,
              itemBuilder: (ctx, index) {
                return GroomingCard(groomingData: dummyGroomingData[index]);
              }),
        )
      ],
    );
  }
}
