import 'package:flutter/material.dart';
import 'package:pet_adaption_app/main.dart';
import 'package:pet_adaption_app/models/veterinary.dart';

class VetCard extends StatelessWidget {
  const VetCard({super.key, required this.vetData});

  final Veterinary vetData;

  @override
  Widget build(BuildContext context) {
    // get 50% of screen width
    final double width = MediaQuery.of(context).size.width * 50 / 100;
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: width,
                child: Text(
                  vetData.vetName,
                  overflow: TextOverflow.clip,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(fontWeight: FontWeight.w900),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Column(
                  children: [
                    Text(
                      '\$${vetData.price}',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontWeight: FontWeight.w900, fontSize: 18),
                    ),
                    Text(
                      'Starting cost',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (final service in vetData.description)
                      Text(
                        '* $service',
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .copyWith(fontWeight: FontWeight.w900),
                      ),
                  ],
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: foregroundColor,
                ),
                child: Text(
                  'Book Now',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
