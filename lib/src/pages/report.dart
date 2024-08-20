import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vending_machine/src/models/report.dart';

class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> json = {
      "reports": [
        {"medicine": "Paracetamol", "dose": "500mg", "totalDispensed": "51"},
        {"medicine": "Ibuprofen", "dose": "200mg", "totalDispensed": "30"},
        {"medicine": "Aspirin", "dose": "75mg", "totalDispensed": "20"},
        {"medicine": "Vitamin C", "dose": "500mg", "totalDispensed": "10"},
        {"medicine": "Amoxicillin", "dose": "500mg", "totalDispensed": "5"},
        {"medicine": "Doxycline", "dose": "100mg", "totalDispensed": "3"},
        {"medicine": "Cetirizine", "dose": "10mg", "totalDispensed": "2"},
        {"medicine": "Ranitidine", "dose": "150mg", "totalDispensed": "1"},
        {"medicine": "Metformin", "dose": "500mg", "totalDispensed": "1"},
        {"medicine": "Lisinopril", "dose": "10mg", "totalDispensed": "1"}
      ]
    };
    final ReportModel reportModel = ReportModel.fromJson(json);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
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
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Report',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 100.0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.save_alt,
              size: 38.0,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Table(
          border: TableBorder.all(),
          columnWidths: const {
            0: FlexColumnWidth(2),
            1: FlexColumnWidth(1),
            2: FlexColumnWidth(1),
          },
          children: [
            TableRow(
              decoration: BoxDecoration(color: Colors.grey[300]),
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Medicine',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Dose',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Total Dispensed',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            ...reportModel.reports!.map((report) {
              return TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(report.medicine ?? ''),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(report.dose ?? ''),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(report.totalDispensed ?? ''),
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
