import 'package:flutter/material.dart';
import 'package:vending_machine/src/models/model_users.dart';
import 'package:vending_machine/src/pages/add_users.dart';
import 'package:vending_machine/src/pages/edit_users.dart';

class ManageUsers extends StatelessWidget {
  const ManageUsers({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    final Map<String, dynamic> json = {
      "users": [
        {
          "username": "dev",
          "password": "dev",
          "displayName": "test1",
          "userImage": "lib/src/assets/images/profile.png",
          "userLevel": 0,
          "role": "nurse"
        },
        {
          "username": "test",
          "password": "123",
          "displayName": "test2",
          "userImage": "lib/src/assets/images/profile2.png",
          "userLevel": 0,
          "role": "nurse"
        },
        {
          "username": "test2",
          "password": "123",
          "displayName": "test3",
          "userImage": "lib/src/assets/images/profile3.png",
          "userLevel": 0,
          "role": "nurse"
        }
      ]
    };

    final UsersModel usersModel = UsersModel.fromJson(json);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 38.0,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Manage Users'),
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
                children: usersModel.users?.map((users) {
                      if (users.username == null) {
                        return Container();
                      }

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditUsers(users: users),
                              ),
                            );
                          },
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            margin: const EdgeInsets.symmetric(vertical: 10.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 1.0,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          users.userImage.toString(),
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
                                              users.displayName.toString(),
                                              style: const TextStyle(
                                                fontSize: 28.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(height: 10.0),
                                            Text(
                                              users.role.toString(),
                                              style: const TextStyle(
                                                fontSize: 24.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                          iconSize: 68.0,
                                          color: Colors.red,
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.delete_forever_outlined),
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
                  builder: (context) => const AddUsers(),
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
