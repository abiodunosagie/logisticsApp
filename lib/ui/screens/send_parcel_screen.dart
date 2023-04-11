import 'package:flutter/material.dart';
import 'package:logisticsapp/ui/widgets/widgets.dart';

class SendParcel extends StatefulWidget {
  const SendParcel({super.key});

  @override
  State<SendParcel> createState() => _SendParcelState();
}

class _SendParcelState extends State<SendParcel> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: ListView(children: [
          Text(
            'Send Parcel',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(
            height: 11,
          ),
          Text(
            'Parcel Size',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const MyParcelSize(
            parcelSize: 'Small',
            parcelSizeDimension: 'Max. 25 kg, 8 x 38 x 64 cm',
            parcelSizeDescription: 'Fits in an envalope',
            parcelSizeImage: 'assets/images/img_parcel_size_small.png',
          ),
          const MyParcelSize(
            parcelSize: 'Medium',
            parcelSizeDimension: 'Max. 25 kg, 19 x 38 x 64 cm',
            parcelSizeDescription: 'Fits in a shoe box',
            parcelSizeImage: 'assets/images/img_parcel_size_medium.png',
          ),
          const MyParcelSize(
            parcelSize: 'Large',
            parcelSizeDimension: 'Max. 25 kg, 41 x 38 x 64 cm',
            parcelSizeDescription: 'Fits in a cardboard',
            parcelSizeImage: 'assets/images/img_parcel_size_large.png',
          ),
          const MyParcelSize(
            parcelSize: 'Custom',
            parcelSizeDimension: 'Max. 25 kg, 8 x 38 x 64 cm',
            parcelSizeDescription: 'Fits on a skid',
            parcelSizeImage: 'assets/images/img_parcel_size_custom.png',
          ),
        ]),
      ),
    );
  }
}
