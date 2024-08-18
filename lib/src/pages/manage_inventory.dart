import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vending_machine/src/models/model_stock.dart';
import 'package:vending_machine/src/pages/inventory_add_item.dart';
import 'package:vending_machine/src/pages/inventory_edit.dart';

class ManageInventory extends StatelessWidget {
  const ManageInventory({super.key});

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
              "quantity": 12,
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
              "quantity": 12,
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
              "quantity": 12,
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
              "quantity": 12,
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
              "quantity": 12,
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
              "quantity": 12,
              "images": "lib/src/assets/images/medicinces/Lisinopril.jpg",
              "numberStock": 60
            }
          ]
        }
      ]
    };
    final StockModel stockModel = StockModel.fromJson(json);
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          background: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
            child: Container(
              color: Colors.white.withOpacity(0.3),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 38.0,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Manage Inventory'),
        centerTitle: true,
        toolbarHeight: 100.0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 120.0),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: stockModel.stock?.map((stock) {
                      if (stock.medicines == null || stock.medicines!.isEmpty) {
                        return Container(); // Return an empty container if there are no medicines
                      }

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: stock.medicines!.map((medicine) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: GestureDetector(
                              onTap: () {
                                // เมื่อกดการ์ดให้เปิดไปยังหน้าใหม่พร้อมส่งข้อมูลไปด้วย
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        InventoryEdit(medicine: medicine),
                                  ),
                                );
                              },
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              medicine.images.toString(),
                                              height: 100.0,
                                              width: 100.0,
                                              fit: BoxFit.contain,
                                            ),
                                            const SizedBox(width: 30.0),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  medicine.name.toString(),
                                                  style: const TextStyle(
                                                    fontSize: 28.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                const SizedBox(height: 10.0),
                                                Text(
                                                  'จำนวน: ${medicine.quantity}',
                                                  style: const TextStyle(
                                                      fontSize: 24.0),
                                                ),
                                                const SizedBox(height: 10.0),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 30.0),
                                              child: Text(
                                                medicine.numberStock.toString(),
                                                style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      100, 110, 110, 110),
                                                  fontSize: 64.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            IconButton(
                                              iconSize: 68.0,
                                              color: Colors.red,
                                              onPressed: () {},
                                              icon: const Icon(Icons
                                                  .delete_forever_outlined),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      );
                    }).toList() ??
                    [],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton.large(
            foregroundColor: colorScheme.onSecondaryContainer,
            backgroundColor: const Color.fromARGB(255, 143, 167, 255),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const InventoryAddItem(),
                ),
              );
            },
            child: const Icon(Icons.add, size: 48.0),
          ),
        ],
      ),
    );
  }
}
