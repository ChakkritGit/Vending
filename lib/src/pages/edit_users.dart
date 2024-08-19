import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vending_machine/src/models/model_users.dart';

class EditUsers extends StatefulWidget {
  const EditUsers({super.key, required this.users});
  final Users users;

  @override
  State<EditUsers> createState() => _EditUsersState();
}

class _EditUsersState extends State<EditUsers> {
  @override
  Widget build(BuildContext context) {
    const List<String> list = <String>['User', 'Admin'];
    // ignore: unused_local_variable
    String dropdownValue = list.first;

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
        title: const Text('edit user'),
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
            height: 80.0,
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
              initialValue: widget.users.displayName,
              style: const TextStyle(
                fontSize: 24.0,
                color: Color.fromARGB(255, 110, 110, 110),
              ),
              // controller: username,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter name';
                }
                return null;
              },
              decoration: const InputDecoration(
                iconColor: Color.fromARGB(255, 110, 110, 110),
                icon: Icon(
                  Icons.person,
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
            height: 80.0,
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
              initialValue: widget.users.role.toString(),
              style: const TextStyle(
                fontSize: 24.0,
                color: Color.fromARGB(255, 110, 110, 110),
              ),
              // controller: username,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter role';
                }
                return null;
              },
              decoration: const InputDecoration(
                iconColor: Color.fromARGB(255, 110, 110, 110),
                icon: Icon(
                  Icons.roller_shades,
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
          Container(
            width: double.infinity,
            // margin: const EdgeInsets.all(10.0),
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            // alignment: Alignment.centerLeft,
            child: DropdownMenu<String>(
              initialSelection: list.first,
              onSelected: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              dropdownMenuEntries:
                  list.map<DropdownMenuEntry<String>>((String value) {
                return DropdownMenuEntry<String>(value: value, label: value);
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
