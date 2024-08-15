import 'package:flutter/material.dart';
import 'package:vending_machine/src/models/model_stock.dart';

class InventoryPage extends StatelessWidget {
  const InventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> json = {
      "Stock": [
        {
          "medicines": [
            {
              "name": "Paracetamol",
              "quantity": 5,
              "icons": "Icons.healing",
              "numberStock": 1
            },
            {
              "name": "Ibuprofen",
              "quantity": 2,
              "icons": "Icons.local_hospital",
              "numberStock": 2
            },
            {
              "name": "Aspirin",
              "quantity": 10,
              "icons": "Icons.medical_services",
              "numberStock": 3
            },
            {
              "name": "Vitamin C",
              "quantity": 8,
              "icons": "Icons.healing",
              "numberStock": 4
            },
            {
              "name": "Amoxicillin",
              "quantity": 6,
              "icons": "Icons.local_hospital",
              "numberStock": 5
            },
            {
              "name": "Doxycycline",
              "quantity": 4,
              "icons": "Icons.medical_services",
              "numberStock": 6
            },
            {
              "name": "Cetirizine",
              "quantity": 7,
              "icons": "Icons.healing",
              "numberStock": 7
            },
            {
              "name": "Ranitidine",
              "quantity": 3,
              "icons": "Icons.local_hospital",
              "numberStock": 8
            },
            {
              "name": "Metformin",
              "quantity": 9,
              "icons": "Icons.medical_services",
              "numberStock": 9
            },
            {
              "name": "Lisinopril",
              "quantity": 12,
              "icons": "Icons.healing",
              "numberStock": 10
            }
          ]
        },
        {
          "medicines": [
            {
              "name": "Paracetamol",
              "quantity": 5,
              "icons": "Icons.healing",
              "numberStock": 11
            },
            {
              "name": "Ibuprofen",
              "quantity": 2,
              "icons": "Icons.local_hospital",
              "numberStock": 12
            },
            {
              "name": "Aspirin",
              "quantity": 10,
              "icons": "Icons.medical_services",
              "numberStock": 13
            },
            {
              "name": "Vitamin C",
              "quantity": 8,
              "icons": "Icons.healing",
              "numberStock": 14
            },
            {
              "name": "Amoxicillin",
              "quantity": 6,
              "icons": "Icons.local_hospital",
              "numberStock": 15
            },
            {
              "name": "Doxycycline",
              "quantity": 4,
              "icons": "Icons.medical_services",
              "numberStock": 16
            },
            {
              "name": "Cetirizine",
              "quantity": 7,
              "icons": "Icons.healing",
              "numberStock": 17
            },
            {
              "name": "Ranitidine",
              "quantity": 3,
              "icons": "Icons.local_hospital",
              "numberStock": 18
            },
            {
              "name": "Metformin",
              "quantity": 9,
              "icons": "Icons.medical_services",
              "numberStock": 19
            },
            {
              "name": "Lisinopril",
              "quantity": 12,
              "icons": "Icons.healing",
              "numberStock": 20
            }
          ]
        },
        {
          "medicines": [
            {
              "name": "Paracetamol",
              "quantity": 5,
              "icons": "Icons.healing",
              "numberStock": 21
            },
            {
              "name": "Ibuprofen",
              "quantity": 2,
              "icons": "Icons.local_hospital",
              "numberStock": 22
            },
            {
              "name": "Aspirin",
              "quantity": 10,
              "icons": "Icons.medical_services",
              "numberStock": 23
            },
            {
              "name": "Vitamin C",
              "quantity": 8,
              "icons": "Icons.healing",
              "numberStock": 24
            },
            {
              "name": "Amoxicillin",
              "quantity": 6,
              "icons": "Icons.local_hospital",
              "numberStock": 25
            },
            {
              "name": "Doxycycline",
              "quantity": 4,
              "icons": "Icons.medical_services",
              "numberStock": 26
            },
            {
              "name": "Cetirizine",
              "quantity": 7,
              "icons": "Icons.healing",
              "numberStock": 27
            },
            {
              "name": "Ranitidine",
              "quantity": 3,
              "icons": "Icons.local_hospital",
              "numberStock": 28
            },
            {
              "name": "Metformin",
              "quantity": 9,
              "icons": "Icons.medical_services",
              "numberStock": 29
            },
            {
              "name": "Lisinopril",
              "quantity": 12,
              "icons": "Icons.healing",
              "numberStock": 30
            }
          ]
        },
        {
          "medicines": [
            {
              "name": "Paracetamol",
              "quantity": 5,
              "icons": "Icons.healing",
              "numberStock": 31
            },
            {
              "name": "Ibuprofen",
              "quantity": 2,
              "icons": "Icons.local_hospital",
              "numberStock": 32
            },
            {
              "name": "Aspirin",
              "quantity": 10,
              "icons": "Icons.medical_services",
              "numberStock": 33
            },
            {
              "name": "Vitamin C",
              "quantity": 8,
              "icons": "Icons.healing",
              "numberStock": 34
            },
            {
              "name": "Amoxicillin",
              "quantity": 6,
              "icons": "Icons.local_hospital",
              "numberStock": 35
            },
            {
              "name": "Doxycycline",
              "quantity": 4,
              "icons": "Icons.medical_services",
              "numberStock": 36
            },
            {
              "name": "Cetirizine",
              "quantity": 7,
              "icons": "Icons.healing",
              "numberStock": 37
            },
            {
              "name": "Ranitidine",
              "quantity": 3,
              "icons": "Icons.local_hospital",
              "numberStock": 38
            },
            {
              "name": "Metformin",
              "quantity": 9,
              "icons": "Icons.medical_services",
              "numberStock": 39
            },
            {
              "name": "Lisinopril",
              "quantity": 12,
              "icons": "Icons.healing",
              "numberStock": 40
            }
          ]
        },
        {
          "medicines": [
            {
              "name": "Paracetamol",
              "quantity": 5,
              "icons": "Icons.healing",
              "numberStock": 41
            },
            {
              "name": "Ibuprofen",
              "quantity": 2,
              "icons": "Icons.local_hospital",
              "numberStock": 42
            },
            {
              "name": "Aspirin",
              "quantity": 10,
              "icons": "Icons.medical_services",
              "numberStock": 43
            },
            {
              "name": "Vitamin C",
              "quantity": 8,
              "icons": "Icons.healing",
              "numberStock": 44
            },
            {
              "name": "Amoxicillin",
              "quantity": 6,
              "icons": "Icons.local_hospital",
              "numberStock": 45
            },
            {
              "name": "Doxycycline",
              "quantity": 4,
              "icons": "Icons.medical_services",
              "numberStock": 46
            },
            {
              "name": "Cetirizine",
              "quantity": 7,
              "icons": "Icons.healing",
              "numberStock": 47
            },
            {
              "name": "Ranitidine",
              "quantity": 3,
              "icons": "Icons.local_hospital",
              "numberStock": 48
            },
            {
              "name": "Metformin",
              "quantity": 9,
              "icons": "Icons.medical_services",
              "numberStock": 49
            },
            {
              "name": "Lisinopril",
              "quantity": 12,
              "icons": "Icons.healing",
              "numberStock": 50
            }
          ]
        },
        {
          "medicines": [
            {
              "name": "Paracetamol",
              "quantity": 5,
              "icons": "Icons.healing",
              "numberStock": 51
            },
            {
              "name": "Ibuprofen",
              "quantity": 2,
              "icons": "Icons.local_hospital",
              "numberStock": 52
            },
            {
              "name": "Aspirin",
              "quantity": 10,
              "icons": "Icons.medical_services",
              "numberStock": 53
            },
            {
              "name": "Vitamin C",
              "quantity": 8,
              "icons": "Icons.healing",
              "numberStock": 54
            },
            {
              "name": "Amoxicillin",
              "quantity": 6,
              "icons": "Icons.local_hospital",
              "numberStock": 55
            },
            {
              "name": "Doxycycline",
              "quantity": 4,
              "icons": "Icons.medical_services",
              "numberStock": 56
            },
            {
              "name": "Cetirizine",
              "quantity": 7,
              "icons": "Icons.healing",
              "numberStock": 57
            },
            {
              "name": "Ranitidine",
              "quantity": 3,
              "icons": "Icons.local_hospital",
              "numberStock": 58
            },
            {
              "name": "Metformin",
              "quantity": 9,
              "icons": "Icons.medical_services",
              "numberStock": 59
            },
            {
              "name": "Lisinopril",
              "quantity": 12,
              "icons": "Icons.healing",
              "numberStock": 60
            }
          ]
        }
      ]
    };
    final StockModel stockModel = StockModel.fromJson(json);

    stockModel.stock?.forEach((stock) {
      stock.medicines?.forEach((medicine) {
        debugPrint([
          {
            'ชื่อยา': medicine.name,
            'จำนวน': medicine.quantity,
            'เลขที่สต๊อก': medicine.numberStock
          }
        ].toString());
      });
    });

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Center(
          child: ListView.builder(
            itemCount: stockModel.stock?.length,
            prototypeItem: ListTile(
              title:
                  Text(stockModel.stock?.first.medicines?.first.name as String),
            ),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(stockModel
                    .stock?[index].medicines?.first.numberStock as String),
              );
            },
          ),
        ),
      ),
    );
  }
}
