import 'package:angkut_kita/app/widgets/incomeCard.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../settings/constants.dart';
import '../controllers/income_driver_controller.dart';

class IncomeDriverView extends GetView<IncomeDriverController> {
  const IncomeDriverView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.primaryColor,
        body: SafeArea(
            child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      'Rp1.500.000',
                      style: Constants.DisplaySmallBold,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Total Income',
                      style: Constants.BodySmall,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              IncomeCard(
                  icon: Icons.calendar_today,
                  title: 'Monthly Salary',
                  amount: '+Rp500.000',
                  date: '22-11-2024'),
              SizedBox(height: 10),
              IncomeCard(
                  icon: Icons.calendar_today,
                  title: 'Bonuses',
                  amount: '+Rp1.000.000',
                  date: '22-11-2024'),
              SizedBox(height: 15),
              Text(
                'Income of The Day',
                style: Constants.BodyMediumBold,
              ),
              SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    color: const Color(0xFF2A3A56),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 150,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            ...List.generate(8, (index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '06.00 - 07.00 WIB',
                                      style: Constants.BodySmall,
                                    ),
                                    Text(
                                      'Rp7.000',
                                      style: Constants.BodySmall,
                                    ),
                                  ],
                                ),
                              );
                            }),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Divider(color: Colors.white54),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'TOTAL',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Rp56.000',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0D213A),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {},
                    child: Text(
                      'Transfer to my own bank',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
              )
            ],
          ),
        )));
  }
}
