import 'package:flutter/material.dart';
import 'package:hlist/components/drawor_title.dart';
import 'package:hlist/pages/settings_page.dart';

//Боковая панель

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //header
          const DrawerHeader(
            child: Image(
              image: AssetImage('assets/images/logo.png'),
              width: 60,
              height: 60,
            ),
          ),

          // notes title
          DrawerTitle(
            title: 'Задачи',
            leading: const Icon(Icons.home),
            onTap: () => Navigator.pop(context),
          ),

          // settings title
          DrawerTitle(
            title: 'Настройки',
            leading: const Icon(Icons.settings),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
