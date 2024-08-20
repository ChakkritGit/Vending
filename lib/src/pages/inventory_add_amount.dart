import 'package:flutter/material.dart';
import 'package:vending_machine/src/models/model_stock.dart';

class InventoryAddAmount extends StatelessWidget {
  final Medicines medicine;

  const InventoryAddAmount({super.key, required this.medicine});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
            size: 38.0,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          medicine.name.toString(),
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 100.0,
        actions: [
          IconButton(
            color: Colors.black,
            icon: const Icon(Icons.save_outlined),
            iconSize: 48.0,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  medicine.images.toString(),
                  width: 150.0,
                ),
                const SizedBox(width: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      medicine.name.toString(),
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      'No: ${medicine.numberStock}',
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      'Remaining Amount ${medicine.quantity}',
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 30.0),
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
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: 24.0,
                  color: Color.fromARGB(255, 110, 110, 110),
                ),
                // controller: username,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your current amount';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  iconColor: Color.fromARGB(255, 110, 110, 110),
                  icon: Icon(
                    Icons.numbers,
                    size: 32.0,
                  ),
                  border: InputBorder.none,
                  hintText: 'Current amount',
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
      ),
    );
  }
}
