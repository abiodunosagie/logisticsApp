import 'package:flutter/material.dart';
import 'package:logisticsapp/ui/screens/screens.dart';
import 'package:logisticsapp/ui/widgets/data_model.dart';

class ProductDetailsPage extends StatelessWidget {
  final MyData item;
  const ProductDetailsPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      margin: const EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade400,
                        ),
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade400,
                      ),
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: const Icon(
                      Icons.notifications_active,
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Your Item',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  color: Colors.yellow.withOpacity(
                    0.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Track your shipment',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      Text(
                        'Type your tracking number \n and find your order',
                        style: Theme.of(context).textTheme.titleLarge,
                        textAlign: TextAlign.left,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 100,
                            margin: const EdgeInsets.only(
                              right: 20,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Track',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            margin: const EdgeInsets.only(
                              right: 20,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.shade400,
                              ),
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Skip',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              //Product order item
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Product Number',
                  ),
                  Text(
                    item.phoneNumber.toString(),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey.withOpacity(
                  0.7,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Product Logo',
                  ),
                  Container(
                    height: 31,
                    width: 108,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(item.imageUrl),
                          fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey.withOpacity(
                  0.7,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Product Status',
                  ),
                  Text(
                    item.parcelStatus,
                  )
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey.withOpacity(
                  0.7,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Product Last updated Time',
                  ),
                  Text(
                    item.lastUpdatedTime,
                  )
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey.withOpacity(
                  0.7,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SendParcelDetailScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontWeight: FontWeight.w200,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
