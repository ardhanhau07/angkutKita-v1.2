import 'package:flutter/material.dart';
import '../settings/constants.dart';

class OrderHistory extends StatelessWidget {
  final AssetImage gambar;
  final String title;
  final String description;
  final int price;

  const OrderHistory({
    required this.gambar,
    required this.title,
    required this.description,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: const Color(0xFF2A3A56),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Image(
            image: gambar,
            height: 50,
            width: 50,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Constants.BodyMediumBold),
                SizedBox(height: 4),
                Text(description, style: Constants.BodySmall)
              ],
            ),
          ),
          Expanded(
              child: Column(
            children: [
              Text(price.toString(), style: Constants.BodySmall),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(onPressed: () {}, child: Text('Order Again')),
            ],
          ))
        ],
      ),
    );
  }
}