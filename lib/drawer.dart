import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shift/myprofile.dart';
import 'package:shift/theme_provider.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            buildTop(context),
            buildContent(context),
          ],
        ),
      ),
    );
  }

  Widget buildTop(context) => Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyProfile(),
                  ),
                );
              },
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/user 1.jpg'),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 3,
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Josef',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '+254 708655407',
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Software Developer',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Divider()
          ],
        ),
      );

  Widget buildContent(context) => Container(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.brightness_6),
              title: const Text('Appearance'),
              onTap: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme();
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifications'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text('Delete account'),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Otp(),
                //   ),
                // );
              },
            ),
          ],
        ),
      );
}
