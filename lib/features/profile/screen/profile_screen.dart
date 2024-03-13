import 'package:flutter/material.dart';
import 'package:hashtek/constants/global_variables.dart';
import 'package:hashtek/features/profile/widgets/country_button.dart';
import 'package:hashtek/features/profile/widgets/logout_button.dart';
import 'package:hashtek/features/profile/widgets/widget_tile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Text(
          "My Profile",
          style: TextStyle(color: secondary),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: 100),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 48,
                backgroundImage: NetworkImage(
                    'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg'),
              ),
              Text(
                "Michael Watson",
                style: TextStyle(fontSize: 25, color: secondary),
              ),
              Text(
                "(232)2324-6324",
                style: TextStyle(fontSize: 20, color: secondary),
              ),
              const Divider(
                indent: 30,
                endIndent: 30,
              ),
              WidgetTile(title: "Profile ", icon: Icons.person_2_outlined),
              WidgetTile(title: "Favourite ", icon: Icons.star_border),
              const CountryButton(),
              WidgetTile(
                  title: "Notification ", icon: Icons.notifications_outlined),
              WidgetTile(title: "Settings ", icon: Icons.settings_outlined),
              WidgetTile(title: "Help ", icon: Icons.help_outline),
              const LogOutButton()
            ],
          ),
        ),
      ),
    );
  }
}
