import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vending_machine/src/models/model_stock.dart';

class InventoryEdit extends StatelessWidget {
  final Medicines medicine;
  const InventoryEdit({super.key, required this.medicine});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          background: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 80.0, sigmaY: 80.0),
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
        title: const Text('Edit medicine'),
        centerTitle: true,
        toolbarHeight: 100.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.save_outlined),
            iconSize: 48.0,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100.0,
            margin: const EdgeInsets.all(10.0),
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: TextFormField(
              initialValue: medicine.name,
              style: const TextStyle(
                fontSize: 24.0,
                color: Color.fromARGB(255, 110, 110, 110),
              ),
              // controller: username,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter medicine name';
                }
                return null;
              },
              decoration: const InputDecoration(
                iconColor: Color.fromARGB(255, 110, 110, 110),
                icon: Icon(
                  Icons.medication,
                  size: 32.0,
                ),
                border: InputBorder.none,
                hintText: 'medicine name',
                hintStyle: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 110, 110, 110),
                ),
                errorStyle: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 100.0,
            margin: const EdgeInsets.all(10.0),
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: TextFormField(
              initialValue: medicine.numberStock.toString(),
              style: const TextStyle(
                fontSize: 24.0,
                color: Color.fromARGB(255, 110, 110, 110),
              ),
              // controller: username,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter medicine location';
                }
                return null;
              },
              decoration: const InputDecoration(
                iconColor: Color.fromARGB(255, 110, 110, 110),
                icon: Icon(
                  Icons.flourescent_outlined,
                  size: 32.0,
                ),
                border: InputBorder.none,
                hintText: 'medicine location',
                hintStyle: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 110, 110, 110),
                ),
                errorStyle: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
