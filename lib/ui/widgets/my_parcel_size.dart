import 'package:flutter/material.dart';

class MyParcelSize extends StatelessWidget {
  final String parcelSize,
      parcelSizeDimension,
      parcelSizeDescription,
      parcelSizeImage;
  const MyParcelSize(
      {super.key,
      required this.parcelSize,
      required this.parcelSizeDimension,
      required this.parcelSizeDescription,
      required this.parcelSizeImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 16,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      height: 115,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            4,
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor,
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(
                0,
                0,
              ),
            )
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 99,
            width: 66,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  parcelSizeImage,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 38,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                parcelSize,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                parcelSizeDimension,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                parcelSizeDescription,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          )
        ],
      ),
    );
  }
}
