
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:quran/settings.dart';

import 'constant.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/quran.png',
                  height: 80,
                ),
                const Text(
                  'القران الكريم',
                  style: TextStyle(fontSize: 20),
                ),

              ],
            ),
          ),

          ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text(
              'الاعدادات',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Settings()));
            },
          ),

          ListTile(
            leading: const Icon(
              Icons.share,
            ),
            title: const Text(
              'مشاركه',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Share.share('''*Quran app*\n
              u can develop it from my github github.com/ShehabAhmed22 ''');
              Navigator.pop(context);
            },
          ),
          // ListTile(
          //   leading: const Icon(
          //     Icons.rate_review,
          //   ),
          //   title: const Text(
          //     'تقييم',
          //     style: TextStyle(fontSize: 20),
          //   ),
          //   onTap: () async {
          //     if (!await launchUrl(quranAppurl,
          //         mode: LaunchMode.externalApplication)) {
          //       throw 'Could not launch $quranAppurl';
          //     }
          //   },
          // ),

        ],
      ),
    );
  }
}


