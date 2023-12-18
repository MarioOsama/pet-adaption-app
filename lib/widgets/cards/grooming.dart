import 'package:flutter/material.dart';
import 'package:pet_adaption_app/main.dart';
import 'package:pet_adaption_app/models/grooming.dart';

class GroomingCard extends StatelessWidget {
  const GroomingCard({super.key, required this.groomingData});

  final Grooming groomingData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                groomingData.groomingName,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.w900),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text(
                  '\$${groomingData.price}',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(fontWeight: FontWeight.w900, fontSize: 18.0),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total ${groomingData.totalServices} Services',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: descriptionColor),
              ),
              const Spacer(),
              TextButton.icon(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: itemColor,
                ),
                label: Text(
                  'Reserve',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                icon: const Icon(
                  Icons.book_online,
                  color: foregroundColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
