import 'package:flutter/material.dart';

class MyParcelOffice extends StatefulWidget {
  final String parcelOfficeCode,
      parcelOficeHours,
      parcelOfficeName,
      parcelOfficeAddress,
      parcelOfficeStats,
      parcelOfficeStatsNumber;
  const MyParcelOffice({
    super.key,
    required this.parcelOfficeCode,
    required this.parcelOficeHours,
    required this.parcelOfficeName,
    required this.parcelOfficeAddress,
    required this.parcelOfficeStats,
    required this.parcelOfficeStatsNumber,
  });

  @override
  State<MyParcelOffice> createState() => _MyParcelOfficeState();
}

class _MyParcelOfficeState extends State<MyParcelOffice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          4,
        ),
        // ignore: deprecated_member_use
        color: Theme.of(context).backgroundColor,
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
        ],
      ),
      padding: const EdgeInsets.all(
        16,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.parcelOfficeCode,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  widget.parcelOficeHours,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.parcelOfficeName,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  widget.parcelOfficeAddress,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.parcelOfficeStats,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(
                  height: 5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      2.5,
                    ),
                    child: LinearProgressIndicator(
                      value: double.parse(
                        widget.parcelOfficeStatsNumber,
                      ),
                      color: Theme.of(context).appBarTheme.backgroundColor,
                      backgroundColor: const Color(
                        0xff8f8f8f,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]),
    );
  }
}
