import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:logisticsapp/src/locations.dart' as locations;

class ParcelCenterScreen extends StatefulWidget {
  const ParcelCenterScreen({super.key});

  @override
  State<ParcelCenterScreen> createState() => _ParcelCenterScreenState();
}

class _ParcelCenterScreenState extends State<ParcelCenterScreen> {
  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices();
    setState(() {
      _markers.clear();
      for (final office in googleOffices.offices) {
        final marker = Marker(
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
      child: ListView(children: [
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
        )
      ]),
    ));
  }
}
