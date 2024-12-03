import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import '../../../../settings/constants.dart';
import '../controllers/home_user_controller.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeUserView extends StatefulWidget {
  const HomeUserView({Key? key}) : super(key: key);

  @override
  _HomeUserViewState createState() => _HomeUserViewState();
}

class _HomeUserViewState extends State<HomeUserView> {
  final TextEditingController asalController = TextEditingController();
  final TextEditingController tujuanController = TextEditingController();
  String asal = '';

  Future<Map<String, dynamic>> getDataFromAPI(String city) async {
    final response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=f246149398899427e46ec1a47f2170b0&units=metric'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data;
    } else {
      throw Exception('Error retrieving data!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          content(),
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: TextField(
              controller: asalController,
              onSubmitted: (value) {
                setState(() {
                  asal = value; // Simpan nilai ketika Enter ditekan
                });
              },
              decoration: InputDecoration(
                hintText: 'Asal',
                hintStyle:
                    TextStyle(color: Constants.primaryColor, fontSize: 14),
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Icon(
                  Icons.circle_outlined,
                  color: Colors.grey,
                ),
              ),
              style: TextStyle(color: Colors.black),
            ),
          ),
          Positioned(
            top: 110,
            left: 20,
            right: 20,
            child: TextField(
              controller: tujuanController,
              decoration: InputDecoration(
                hintText: 'Tujuan',
                hintStyle:
                    TextStyle(color: Constants.primaryColor, fontSize: 14),
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Icon(
                  Icons.golf_course,
                  color: Colors.grey,
                ),
              ),
              style: TextStyle(color: Colors.black),
            ),
          ),
          Positioned(
            top: 170,
            left: 20,
            right: 20,
            child: FutureBuilder<Map<String, dynamic>>(
              future: getDataFromAPI(asal), // Memanggil API dengan nilai 'asal'
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasData) {
                  final data = snapshot.data!;
                  try {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          image: NetworkImage(
                              'https://flagsapi.com/${data["sys"]["country"]}/shiny/64.png'),
                        ),
                        Text('Suhu: ${data["main"]["feels_like"]} C'),
                        Text('Kecepatan Angin: ${data["wind"]["speed"]} m/s'),
                      ],
                    );
                  } catch (e) {
                    return const Text('Error parsing data');
                  }
                } else {
                  return const Text('Tempat tidak diketahui');
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget content() {
    return FlutterMap(
      options: MapOptions(
        initialCenter: LatLng(-7.9214888270373915, 112.54839354479674),
        initialZoom: 11,
        interactionOptions:
            const InteractionOptions(flags: ~InteractiveFlag.doubleTapZoom),
      ),
      children: [
        openStreetMapTileLayer,
        MarkerLayer(markers: [
          Marker(
            point: LatLng(-7.9214888270373915, 112.54839354479674),
            width: 60,
            height: 60,
            alignment: Alignment.centerLeft,
            child: Icon(
              Icons.location_pin,
              size: 60,
              color: Colors.red,
            ),
          ),
          Marker(
            point: LatLng(-7.95090368095533, 112.60740909608111),
            width: 60,
            height: 60,
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.location_pin,
                size: 60,
                color: Colors.red,
              ),
            ),
          ),
        ])
      ],
    );
  }
}

TileLayer get openStreetMapTileLayer => TileLayer(
      urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
      userAgentPackageName: 'dev.fleaflet.flutter_map.example',
    );
