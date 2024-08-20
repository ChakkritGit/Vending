import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddUsers extends StatefulWidget {
  const AddUsers({super.key});

  @override
  State<AddUsers> createState() => _AddUsersState();
}

class _AddUsersState extends State<AddUsers> {
  @override
  Widget build(BuildContext context) {
    const List<String> list = <String>['User', 'Admin'];
    // ignore: unused_local_variable
    String dropdownValue = list.first;
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
          'Add user',
          style: TextStyle(
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
      body: Container(
        margin: const EdgeInsets.only(top: 20.0),
        child: Column(
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
                style: const TextStyle(
                  fontSize: 24.0,
                  color: Color.fromARGB(255, 110, 110, 110),
                ),
                // controller: username,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter username';
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
                  hintText: 'Username',
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
                style: const TextStyle(
                  fontSize: 24.0,
                  color: Color.fromARGB(255, 110, 110, 110),
                ),
                // controller: username,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  iconColor: Color.fromARGB(255, 110, 110, 110),
                  icon: Icon(
                    Icons.password,
                    size: 32.0,
                  ),
                  border: InputBorder.none,
                  hintText: 'Password',
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
                style: const TextStyle(
                  fontSize: 24.0,
                  color: Color.fromARGB(255, 110, 110, 110),
                ),
                // controller: username,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter fullname';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  iconColor: Color.fromARGB(255, 110, 110, 110),
                  icon: Icon(
                    Icons.text_decrease,
                    size: 32.0,
                  ),
                  border: InputBorder.none,
                  hintText: 'Fullname',
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
                  hintText: 'Role',
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
                hintText: 'User Level',
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
      ),
    );
  }
}
