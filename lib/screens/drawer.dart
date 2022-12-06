import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    const name = 'John Doe';
    const email = 'johndoe@gmai.com';
    const image = 'assets/images/logo.png';
    final drawerWidth = MediaQuery.of(context).size.width;

    return Drawer(
        width: drawerWidth * 0.8,
        child: Material(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              children: [
                buildHeader(image: image, name: name, email: email),
                const Divider(
                  thickness: 2.0,
                ),
                const SizedBox(height: 10),
                buildMenuItem(
                  icon: Icons.favorite_border_outlined,
                  text: 'My Courses',
                  navigate: () {},
                ),
                const SizedBox(height: 10),
                buildMenuItem(
                  icon: Icons.download_outlined,
                  text: 'Downloads',
                  navigate: () {},
                ),
                const SizedBox(height: 10),
                buildMenuItem(
                  icon: Icons.favorite_border_outlined,
                  text: 'Assignments',
                  navigate: () {},
                ),
                const SizedBox(height: 10),
                buildMenuItem(
                  icon: Icons.timelapse_outlined,
                  text: 'Deadlines',
                  navigate: () {},
                ),
                const SizedBox(height: 10),
                buildMenuItem(
                  icon: Icons.settings_outlined,
                  text: 'Settings',
                  navigate: () {},
                ),
                const Divider(
                  thickness: 2.0,
                ),
                const SizedBox(height: 10),
                buildMenuItem(
                  icon: Icons.info_outline,
                  text: 'Info',
                  navigate: () {},
                ),
                const SizedBox(height: 10),
                buildMenuItem(
                  icon: Icons.logout_outlined,
                  text: 'Log out',
                  navigate: () {},
                ),
              ],
            ),
          ),
        ));
  }
}

Widget buildMenuItem({
  required IconData icon,
  required String text,
  required Function navigate,
}) {
  return ListTile(
    leading: Icon(icon),
    title: Text(
      text,
      style: const TextStyle(
        fontSize: 16,
      ),
    ),
    onTap: () => navigate,
  );
}

Widget buildHeader({
  required String name,
  required String email,
  required String image,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 40),
    child: Row(children: [
      Image.asset(
        image,
        height: 50,
        width: 50,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            Text(email),
          ],
        ),
      )
    ]),
  );
}
