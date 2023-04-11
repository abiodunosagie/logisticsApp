import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:logisticsapp/src/locations.dart' as locations;

import '../widgets/my_parcel_office.dart';

class ParcelCenterScreen extends StatefulWidget {
  const ParcelCenterScreen({super.key});

  @override
  State<ParcelCenterScreen> createState() => _ParcelCenterScreenState();
}

class _ParcelCenterScreenState extends State<ParcelCenterScreen> {
  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices();
    BitmapDescriptor customIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(
        size: Size(
          24,
          24,
        ),
      ),
      'assets/images/icon_maker.png',
    );
    setState(() {
      _markers.clear();
      for (final office in googleOffices.offices) {
        final marker = Marker(
          icon: customIcon,
          markerId: MarkerId(office.name),
          position: LatLng(office.lat, office.lng),
          infoWindow: InfoWindow(
            title: office.name,
            snippet: office.address,
          ),
        );
        _markers[office.name] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Parcel Center',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(
                height: 29,
              ),
              SizedBox(
                height: 221,
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(4.87382, 6.96794),
                    zoom: 7,
                  ),
                  mapType: MapType.satellite,
                  markers: _markers.values.toSet(),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const MyParcelOffice(
                parcelOfficeAddress: 'Ogonda Urdu Close, Okahia Estate',
                parcelOfficeCode: 'NG2402',
                parcelOfficeName: 'ICOWEB AGENCY',
                parcelOficeHours: 'Available 24/7',
                parcelOfficeStats: 'Hiring now',
                parcelOfficeStatsNumber: '0.9',
              ),
              const MyParcelOffice(
                parcelOfficeAddress: 'Mercy Land, Port Harcourt, Rives.',
                parcelOfficeCode: 'NG5308',
                parcelOfficeName: 'Speak Nigeria',
                parcelOficeHours: 'Available 24/7',
                parcelOfficeStats: 'Fully occupied',
                parcelOfficeStatsNumber: '0.4',
              ),
              const MyParcelOffice(
                parcelOfficeAddress: 'Iboloji Estate, Okahia',
                parcelOfficeCode: 'NG2705',
                parcelOfficeName: 'Dominion City Church',
                parcelOficeHours: 'Available 24/7',
                parcelOfficeStats: 'Fully occupied',
                parcelOfficeStatsNumber: '0.8',
              ),
              const MyParcelOffice(
                parcelOfficeAddress: 'Jepthah Seconday School',
                parcelOfficeCode: 'NG0989',
                parcelOfficeName: 'Afritech Community',
                parcelOficeHours: 'Available 24/7',
                parcelOfficeStats: 'Hiring now',
                parcelOfficeStatsNumber: '0.7',
              ),
              const MyParcelOffice(
                parcelOfficeAddress: 'Lawani road, Edo State',
                parcelOfficeCode: 'NGB3064',
                parcelOfficeName: 'Big Joe Ventures',
                parcelOficeHours: 'Available 24/7',
                parcelOfficeStats: 'Hiring now',
                parcelOfficeStatsNumber: '0.9',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
