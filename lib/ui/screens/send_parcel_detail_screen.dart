import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logisticsapp/ui/widgets/widgets.dart';

class SendParcelDetailScreen extends StatefulWidget {
  const SendParcelDetailScreen({super.key});

  @override
  State<SendParcelDetailScreen> createState() => _SendParcelDetailScreenState();
}

class _SendParcelDetailScreenState extends State<SendParcelDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: ListView(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Parcel Delivery',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              Text(
                'Choose your preferred method',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 30,
              ),
              const MyParcelDeliveryMethod(
                parcelDeliveryMethod: 'Pickup',
                parcelDeliveryDuration: '1 - 2 days',
                parcelDeliveryImage: 'assets/images/img_door_to_parcel.png',
              ),
              const MyParcelDeliveryMethod(
                parcelDeliveryMethod: 'Home delivery',
                parcelDeliveryDuration: '4 - 12 days',
                parcelDeliveryImage: 'assets/images/img_door_to_door.png',
              ),
              const MyParcelDeliveryMethod(
                parcelDeliveryMethod: 'logistics delivery',
                parcelDeliveryDuration: '1 - 2 days',
                parcelDeliveryImage: 'assets/images/img_parcel_size_medium.png',
              ),
              const MyParcelDeliveryMethod(
                parcelDeliveryMethod: 'Express delivery',
                parcelDeliveryDuration: '1 day',
                parcelDeliveryImage: 'assets/images/img_door_to_parcel.png',
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 30.0,
                  ),
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Continue',
                      style: GoogleFonts.poppins(
                        color: const Color.fromARGB(255, 219, 216, 216),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
