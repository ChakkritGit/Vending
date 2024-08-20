import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vending_machine/src/bloc/serial_data_bloc.dart';
import 'package:vending_machine/src/models/model_stock.dart';
import 'package:vending_machine/src/widgetss/dispense/card.dart';
import 'package:vending_machine/src/widgetss/dispense/dialog.dart';

class DispensePage extends StatefulWidget {
  const DispensePage({super.key});

  @override
  State<DispensePage> createState() => _DispensePageState();
}

class _DispensePageState extends State<DispensePage> {
  BuildContext? dialogContext;

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        dialogContext = dialogContext;
        return const DialogStatus();
      },
    ).then((_) {
      dialogContext = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> json = {
      "Stock": [
        {
          "medicines": [
            {
              "name": "Paracetamol",
              "quantity": 5,
              "images": "lib/src/assets/images/medicinces/Paracetamol.jpg",
              "numberStock": 1
            },
            {
              "name": "Ibuprofen",
              "quantity": 2,
              "images": "lib/src/assets/images/medicinces/ibuprofen.jpg",
              "numberStock": 2
            },
            {
              "name": "Aspirin",
              "quantity": 10,
              "images": "lib/src/assets/images/medicinces/aspirin.jpg",
              "numberStock": 3
            },
            {
              "name": "Vitamin C",
              "quantity": 8,
              "images": "lib/src/assets/images/medicinces/Vitamin_c.jpg",
              "numberStock": 4
            },
            {
              "name": "Amoxicillin",
              "quantity": 6,
              "images": "lib/src/assets/images/medicinces/Amoxicillin.jpg",
              "numberStock": 5
            },
            {
              "name": "Doxycycline",
              "quantity": 4,
              "images": "lib/src/assets/images/medicinces/Doxycycline.jpg",
              "numberStock": 6
            },
            {
              "name": "Cetirizine",
              "quantity": 7,
              "images": "lib/src/assets/images/medicinces/Cetirizine.jpg",
              "numberStock": 7
            },
            {
              "name": "Ranitidine",
              "quantity": 3,
              "images": "lib/src/assets/images/medicinces/Ranitidine.jpg",
              "numberStock": 8
            },
            {
              "name": "Metformin",
              "quantity": 9,
              "images": "lib/src/assets/images/medicinces/Metformin.jpg",
              "numberStock": 9
            },
            {
              "name": "Lisinopril",
              "quantity": 7,
              "images": "lib/src/assets/images/medicinces/Lisinopril.jpg",
              "numberStock": 10
            }
          ]
        },
        {
          "medicines": [
            {
              "name": "Paracetamol",
              "quantity": 5,
              "images": "lib/src/assets/images/medicinces/Paracetamol.jpg",
              "numberStock": 11
            },
            {
              "name": "Ibuprofen",
              "quantity": 2,
              "images": "lib/src/assets/images/medicinces/ibuprofen.jpg",
              "numberStock": 12
            },
            {
              "name": "Aspirin",
              "quantity": 10,
              "images": "lib/src/assets/images/medicinces/aspirin.jpg",
              "numberStock": 13
            },
            {
              "name": "Vitamin C",
              "quantity": 8,
              "images": "lib/src/assets/images/medicinces/Vitamin_c.jpg",
              "numberStock": 14
            },
            {
              "name": "Amoxicillin",
              "quantity": 6,
              "images": "lib/src/assets/images/medicinces/Amoxicillin.jpg",
              "numberStock": 15
            },
            {
              "name": "Doxycycline",
              "quantity": 4,
              "images": "lib/src/assets/images/medicinces/Doxycycline.jpg",
              "numberStock": 16
            },
            {
              "name": "Cetirizine",
              "quantity": 7,
              "images": "lib/src/assets/images/medicinces/Cetirizine.jpg",
              "numberStock": 17
            },
            {
              "name": "Ranitidine",
              "quantity": 3,
              "images": "lib/src/assets/images/medicinces/Ranitidine.jpg",
              "numberStock": 18
            },
            {
              "name": "Metformin",
              "quantity": 9,
              "images": "lib/src/assets/images/medicinces/Metformin.jpg",
              "numberStock": 19
            },
            {
              "name": "Lisinopril",
              "quantity": 7,
              "images": "lib/src/assets/images/medicinces/Lisinopril.jpg",
              "numberStock": 20
            }
          ]
        },
        {
          "medicines": [
            {
              "name": "Paracetamol",
              "quantity": 5,
              "images": "lib/src/assets/images/medicinces/Paracetamol.jpg",
              "numberStock": 21
            },
            {
              "name": "Ibuprofen",
              "quantity": 2,
              "images": "lib/src/assets/images/medicinces/ibuprofen.jpg",
              "numberStock": 22
            },
            {
              "name": "Aspirin",
              "quantity": 10,
              "images": "lib/src/assets/images/medicinces/aspirin.jpg",
              "numberStock": 23
            },
            {
              "name": "Vitamin C",
              "quantity": 8,
              "images": "lib/src/assets/images/medicinces/Vitamin_c.jpg",
              "numberStock": 24
            },
            {
              "name": "Amoxicillin",
              "quantity": 6,
              "images": "lib/src/assets/images/medicinces/Amoxicillin.jpg",
              "numberStock": 25
            },
            {
              "name": "Doxycycline",
              "quantity": 4,
              "images": "lib/src/assets/images/medicinces/Doxycycline.jpg",
              "numberStock": 26
            },
            {
              "name": "Cetirizine",
              "quantity": 7,
              "images": "lib/src/assets/images/medicinces/Cetirizine.jpg",
              "numberStock": 27
            },
            {
              "name": "Ranitidine",
              "quantity": 3,
              "images": "lib/src/assets/images/medicinces/Ranitidine.jpg",
              "numberStock": 28
            },
            {
              "name": "Metformin",
              "quantity": 9,
              "images": "lib/src/assets/images/medicinces/Metformin.jpg",
              "numberStock": 29
            },
            {
              "name": "Lisinopril",
              "quantity": 7,
              "images": "lib/src/assets/images/medicinces/Lisinopril.jpg",
              "numberStock": 30
            }
          ]
        },
        {
          "medicines": [
            {
              "name": "Paracetamol",
              "quantity": 5,
              "images": "lib/src/assets/images/medicinces/Paracetamol.jpg",
              "numberStock": 31
            },
            {
              "name": "Ibuprofen",
              "quantity": 2,
              "images": "lib/src/assets/images/medicinces/ibuprofen.jpg",
              "numberStock": 32
            },
            {
              "name": "Aspirin",
              "quantity": 10,
              "images": "lib/src/assets/images/medicinces/aspirin.jpg",
              "numberStock": 33
            },
            {
              "name": "Vitamin C",
              "quantity": 8,
              "images": "lib/src/assets/images/medicinces/Vitamin_c.jpg",
              "numberStock": 34
            },
            {
              "name": "Amoxicillin",
              "quantity": 6,
              "images": "lib/src/assets/images/medicinces/Amoxicillin.jpg",
              "numberStock": 35
            },
            {
              "name": "Doxycycline",
              "quantity": 4,
              "images": "lib/src/assets/images/medicinces/Doxycycline.jpg",
              "numberStock": 36
            },
            {
              "name": "Cetirizine",
              "quantity": 7,
              "images": "lib/src/assets/images/medicinces/Cetirizine.jpg",
              "numberStock": 37
            },
            {
              "name": "Ranitidine",
              "quantity": 3,
              "images": "lib/src/assets/images/medicinces/Ranitidine.jpg",
              "numberStock": 38
            },
            {
              "name": "Metformin",
              "quantity": 9,
              "images": "lib/src/assets/images/medicinces/Metformin.jpg",
              "numberStock": 39
            },
            {
              "name": "Lisinopril",
              "quantity": 7,
              "images": "lib/src/assets/images/medicinces/Lisinopril.jpg",
              "numberStock": 40
            }
          ]
        },
        {
          "medicines": [
            {
              "name": "Paracetamol",
              "quantity": 5,
              "images": "lib/src/assets/images/medicinces/Paracetamol.jpg",
              "numberStock": 41
            },
            {
              "name": "Ibuprofen",
              "quantity": 2,
              "images": "lib/src/assets/images/medicinces/ibuprofen.jpg",
              "numberStock": 42
            },
            {
              "name": "Aspirin",
              "quantity": 10,
              "images": "lib/src/assets/images/medicinces/aspirin.jpg",
              "numberStock": 43
            },
            {
              "name": "Vitamin C",
              "quantity": 8,
              "images": "lib/src/assets/images/medicinces/Vitamin_c.jpg",
              "numberStock": 44
            },
            {
              "name": "Amoxicillin",
              "quantity": 6,
              "images": "lib/src/assets/images/medicinces/Amoxicillin.jpg",
              "numberStock": 45
            },
            {
              "name": "Doxycycline",
              "quantity": 4,
              "images": "lib/src/assets/images/medicinces/Doxycycline.jpg",
              "numberStock": 46
            },
            {
              "name": "Cetirizine",
              "quantity": 7,
              "images": "lib/src/assets/images/medicinces/Cetirizine.jpg",
              "numberStock": 47
            },
            {
              "name": "Ranitidine",
              "quantity": 3,
              "images": "lib/src/assets/images/medicinces/Ranitidine.jpg",
              "numberStock": 48
            },
            {
              "name": "Metformin",
              "quantity": 9,
              "images": "lib/src/assets/images/medicinces/Metformin.jpg",
              "numberStock": 49
            },
            {
              "name": "Lisinopril",
              "quantity": 7,
              "images": "lib/src/assets/images/medicinces/Lisinopril.jpg",
              "numberStock": 50
            }
          ]
        },
        {
          "medicines": [
            {
              "name": "Paracetamol",
              "quantity": 5,
              "images": "lib/src/assets/images/medicinces/Paracetamol.jpg",
              "numberStock": 51
            },
            {
              "name": "Ibuprofen",
              "quantity": 2,
              "images": "lib/src/assets/images/medicinces/ibuprofen.jpg",
              "numberStock": 52
            },
            {
              "name": "Aspirin",
              "quantity": 10,
              "images": "lib/src/assets/images/medicinces/aspirin.jpg",
              "numberStock": 53
            },
            {
              "name": "Vitamin C",
              "quantity": 8,
              "images": "lib/src/assets/images/medicinces/Vitamin_c.jpg",
              "numberStock": 54
            },
            {
              "name": "Amoxicillin",
              "quantity": 6,
              "images": "lib/src/assets/images/medicinces/Amoxicillin.jpg",
              "numberStock": 55
            },
            {
              "name": "Doxycycline",
              "quantity": 4,
              "images": "lib/src/assets/images/medicinces/Doxycycline.jpg",
              "numberStock": 56
            },
            {
              "name": "Cetirizine",
              "quantity": 7,
              "images": "lib/src/assets/images/medicinces/Cetirizine.jpg",
              "numberStock": 57
            },
            {
              "name": "Ranitidine",
              "quantity": 3,
              "images": "lib/src/assets/images/medicinces/Ranitidine.jpg",
              "numberStock": 58
            },
            {
              "name": "Metformin",
              "quantity": 9,
              "images": "lib/src/assets/images/medicinces/Metformin.jpg",
              "numberStock": 59
            },
            {
              "name": "Lisinopril",
              "quantity": 7,
              "images": "lib/src/assets/images/medicinces/Lisinopril.jpg",
              "numberStock": 60
            }
          ]
        }
      ]
    };

    final StockModel stockModel = StockModel.fromJson(json);

    return BlocListener<SerialDataBloc, SerialDataState>(
      listenWhen: (previous, current) =>
          previous.machineStatusDelivery != current.machineStatusDelivery,
      listener: (context, state) {
        debugPrint(state.machineStatusDelivery.toString());
        if (state.machineStatusDelivery) {
          _showDialog(context);
          dialogContext = context;
        } else if (dialogContext != null) {
          Navigator.of(dialogContext!).pop();
          dialogContext = null;
        }
      },
      child: NotificationListener(
        onNotification: (OverscrollIndicatorNotification overScroll) {
          overScroll.disallowIndicator();
          return false;
        },
        child: CustomScrollView(
          physics: const ClampingScrollPhysics(),
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.only(top: 10.0),
              sliver: SliverToBoxAdapter(
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: List.generate(
                            stockModel.stock!.length,
                            (index) => CardList(
                                stockModel: stockModel, indexCol: index),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
