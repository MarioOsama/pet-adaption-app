import 'package:flutter/material.dart';
import 'package:pet_adaption_app/data/dummyData.dart';
import 'package:pet_adaption_app/widgets/cards/vet.dart';

class VetScreen extends StatelessWidget {
  const VetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 50.0, 16.0, 10.0),
      child: Column(
        children: [
          Row(
            children: [
              // screen title
              Text(
                'Pet Veterinary',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 26),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          // screen image
          Image.asset('assets/images/vat-image.png'),
          const SizedBox(
            height: 5,
          ),
          // vet cards
          Expanded(
            child: ListView.builder(
                itemCount: dummyVetData.length,
                itemBuilder: (ctx, index) {
                  return VetCard(vetData: dummyVetData[index]);
                }),
          )
        ],
      ),
    );
  }
}
