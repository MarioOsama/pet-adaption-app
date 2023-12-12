import 'package:flutter/material.dart';
import 'package:pet_adaption_app/data/dummyData.dart';
import 'package:pet_adaption_app/main.dart';
import 'package:pet_adaption_app/widgets/animalsdropdownbutton.dart';
import 'package:pet_adaption_app/widgets/grooming-card.dart';

class GroomScreen extends StatelessWidget {
  const GroomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
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
              Padding(
                padding: const EdgeInsets.only(bottom: 95.0),
                child: Text('Select your pet',
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(fontSize: 16)),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 35.0),
                child: AnimalsDropdownButton(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 300.0, right: 280.0),
                child: TextButton.icon(
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
                    label: const Text('Back')),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text('Dog Grooming Packages',
              style: Theme.of(context).textTheme.bodyLarge),
          Expanded(
            child: ListView.builder(
                itemCount: dummyGroomingData.length,
                itemBuilder: (ctx, index) {
                  return GroomingCard(groomingData: dummyGroomingData[index]);
                }),
          )
        ],
      ),
    );
  }
}
