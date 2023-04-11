import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ParcelCheckout extends StatefulWidget {
  const ParcelCheckout({super.key});

  @override
  State<ParcelCheckout> createState() => _ParcelCheckoutState();
}

class _ParcelCheckoutState extends State<ParcelCheckout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: ListView(children: [
            Text(
              'Checkout',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
              height: 21,
            ),
            Container(
              height: 250,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 19,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8,
                ),
                color: Colors.grey.shade200,
                image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/img_card_background.png',
                    ),
                    fit: BoxFit.fill),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '**** **** **** 0412',
                      style:
                          Theme.of(context).textTheme.displayMedium?.copyWith(
                                color: Colors.white,
                              ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ABIODUN OSAGIE',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                color: Colors.white,
                              ),
                        ),
                        Text(
                          '07/27',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                color: Colors.white,
                              ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ]),
        ),
      ),
      bottomSheet: _buildBottomSheet(),
    );
  }

  _buildBottomSheet() {
    return Container(
      padding: const EdgeInsets.all(
        24,
      ),
      height: MediaQuery.of(context).size.height * 0.5,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            16,
          ),
          topRight: Radius.circular(
            16,
          ),
        ),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Summary',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Edit',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SvgPicture.asset(
                          'assets/images/icon_details.svg',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recipient',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  'Smith Osagie \nabiodunosagie8@gmail.com \n450085ln42ad2 \nOgbonda Urdu Close, Okahia Estate, Easte West Road',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: 20,
                ),
                //Parcel size
                Text(
                  'Parcel size',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  'Medium',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                //Delivery Method
                const SizedBox(
                  height: 20,
                ),
                //Parcel size
                Text(
                  'Delivery method',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  'Home delivery (logistics)',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 58,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    style: Theme.of(context).textButtonTheme.style,
                    child: Text('Pay \$3.08',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        )),
                  ),
                )
              ],
            )
          ]),
    );
  }
}
