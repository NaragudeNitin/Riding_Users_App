import 'package:drive_users_app/global/global.dart';
import 'package:drive_users_app/splashScreen/splash_screen.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key, this.name, this.email});

  final String? name;
  final String? email;

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      child: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.black),
        child: Drawer(
          child: ListView(
            children: [
              // drawer header
              Container(
                height: 165,
                color: Colors.grey,
                child: DrawerHeader(
                    decoration: const BoxDecoration(color: Colors.black),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.person,
                          size: 80,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.name.toString(),
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.email.toString(),
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
              ),

              const SizedBox(
                height: 12,
              ),
              ListTile(
                leading: const Icon(
                  Icons.history,
                  color: Colors.white54,
                ),
                title: const Text(
                  "History",
                  style: TextStyle(color: Colors.white54),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.white54,
                ),
                title: const Text(
                  "Visit Profile",
                  style: TextStyle(color: Colors.white54),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.info,
                  color: Colors.white54,
                ),
                title: const Text(
                  "About",
                  style: TextStyle(color: Colors.white54),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.white54,
                ),
                title: const Text(
                  "Sign Out",
                  style: TextStyle(color: Colors.white54),
                ),
                onTap: () {
                  fAuth.signOut();
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MySplashScreen(),
                      ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
