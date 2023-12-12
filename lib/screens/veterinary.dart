import 'package:flutter/material.dart';
import 'package:pet_adaption_app/data/dummyData.dart';
import 'package:pet_adaption_app/main.dart';
import 'package:pet_adaption_app/widgets/vet-card.dart';

class VetScreen extends StatelessWidget {
  const VetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 35.0),
        child: Column(
          children: [
            Row(
              children: [
                TextButton.icon(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: itemColor,
                    foregroundColor: foregroundColor,
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  icon: const Icon(Icons.arrow_back_ios),
                  label: const Text('Back'),
                ),
                const SizedBox(
                  width: 25,
                ),
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
            Image.asset('assets/images/vat-image.png'),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: dummyVetData.length,
                  itemBuilder: (ctx, index) {
                    return VetCard(vetData: dummyVetData[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
