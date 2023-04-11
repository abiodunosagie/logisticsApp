import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyParcelDeliveryMethod extends StatefulWidget {
  final String parcelDeliveryMethod,
      parcelDeliveryDuration,
      parcelDeliveryImage;
  const MyParcelDeliveryMethod(
      {super.key,
      required this.parcelDeliveryMethod,
      required this.parcelDeliveryDuration,
      required this.parcelDeliveryImage});

  @override
  State<MyParcelDeliveryMethod> createState() => _MyParcelDeliveryMethodState();
}

class _MyParcelDeliveryMethodState extends State<MyParcelDeliveryMethod> {
  //TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 16,
      ),
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
            ),
          ]),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.all(
          0,
        ),
        trailing: const SizedBox.shrink(),
        title: Container(
          padding: const EdgeInsets.all(
            16,
          ),
          height: 102,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      widget.parcelDeliveryImage,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 34,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    widget.parcelDeliveryMethod,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    widget.parcelDeliveryDuration,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ],
          ),
        ),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 1,
            color: const Color(
              0xfffd5d5d,
            ),
          ),
          _buildExpansionChildren(context),
        ],
      ),
    );
  }

  Widget _buildExpansionChildren(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16).copyWith(top: 0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 16,
        ),
        Text(
          'Recipient Info',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              'Name',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
        TextField(
          inputFormatters: [
            FilteringTextInputFormatter.singleLineFormatter,
            // This TextInputFormatter capitalizes the first letter of each word
            TextInputFormatter.withFunction((oldValue, newValue) {
              if (newValue.text.isNotEmpty) {
                return TextEditingValue(
                  text: newValue.text.split(' ').map((word) {
                    if (word.isNotEmpty) {
                      return word[0].toUpperCase() + word.substring(1);
                    }
                    return '';
                  }).join(' '),
                  selection: newValue.selection,
                );
              }
              return newValue;
            }),
          ],
          keyboardType: TextInputType.name,
          decoration: const InputDecoration(
            labelText: 'Name',
            hintText: 'Enter your full name',
            border: OutlineInputBorder(),
          ),
          onChanged: (vallue) {},
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              'Email',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
        TextField(
          keyboardType: TextInputType.emailAddress,
          //controller: emailController,
          decoration: const InputDecoration(
            //  errorText: _validateEmail(emailController.text),
            labelText: 'Email',
            hintText: 'Enter email address',
            border: OutlineInputBorder(),
          ),
          onChanged: (vallue) {},
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              'Phone Number',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
        TextField(
          keyboardType: TextInputType.phone,
          inputFormatters: [
            FilteringTextInputFormatter.allow(
              RegExp(r'^\d+\.?\d{0,2}'),
            ),
            LengthLimitingTextInputFormatter(
                11), //sets the maximum allowed length of the input
          ],
          decoration: const InputDecoration(
            labelText: 'Phone Number',
            hintText: 'Enter phone number',
            border: OutlineInputBorder(),
          ),
          onChanged: (vallue) {},
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              'Address',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
        TextField(
          inputFormatters: [
            FilteringTextInputFormatter.singleLineFormatter,
            // This TextInputFormatter capitalizes the first letter of each word
            TextInputFormatter.withFunction((oldValue, newValue) {
              if (newValue.text.isNotEmpty) {
                return TextEditingValue(
                  text: newValue.text.split(' ').map((word) {
                    if (word.isNotEmpty) {
                      return word[0].toUpperCase() + word.substring(1);
                    }
                    return '';
                  }).join(' '),
                  selection: newValue.selection,
                );
              }
              return newValue;
            }),
          ],
          keyboardType: TextInputType.streetAddress,
          decoration: const InputDecoration(
            labelText: 'Address',
            hintText: 'Enter address',
            border: OutlineInputBorder(),
          ),
          onChanged: (vallue) {},
        ),
        const SizedBox(
          height: 16,
        ),
        //landmark
        Row(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              'Landmark',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
        TextField(
          inputFormatters: [
            FilteringTextInputFormatter.singleLineFormatter,
            // This TextInputFormatter capitalizes the first letter of each word
            TextInputFormatter.withFunction((oldValue, newValue) {
              if (newValue.text.isNotEmpty) {
                return TextEditingValue(
                  text: newValue.text.split(' ').map((word) {
                    if (word.isNotEmpty) {
                      return word[0].toUpperCase() + word.substring(1);
                    }
                    return '';
                  }).join(' '),
                  selection: newValue.selection,
                );
              }
              return newValue;
            }),
          ],
          keyboardType: TextInputType.streetAddress,
          decoration: const InputDecoration(
            labelText: 'Landmark',
            hintText: 'Enter Closest landmark',
            border: OutlineInputBorder(),
          ),
          onChanged: (vallue) {},
        ),
        const SizedBox(
          height: 16,
        ),
      ]),
    );
  }
}

// String? _validateEmail(String? email) {
//   if (email == null || email.isEmpty) {
//     return 'Email address is required';
//   }
//   if (!email.contains('@')) {
//     return 'Email address is invalid (missing @ symbol)';
//   }
//   if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
//     return 'Email address is invalid';
//   }
//   return null;
// }
