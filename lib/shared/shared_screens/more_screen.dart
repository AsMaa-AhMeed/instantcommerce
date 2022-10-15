import 'package:flutter/material.dart';
import 'package:instantcommerce/shared/shared_theme/shared_colors.dart';
import 'package:instantcommerce/shared/shared_theme/shared_fonts.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  final List<Map<String, dynamic>> sections = [
    {'title': 'Settings', 'icon': Icons.settings, 'route' : 'setting'},
    {'title': 'About Us', 'icon': Icons.info, 'route' : 'about'},
    {'title': 'Contact us', 'icon': Icons.email, 'route' : 'contact'},
    {'title': 'Privacy & Security', 'icon': Icons.security, 'route' : 'privacy'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.backGroundColor,
      body: ListView.builder(
        itemCount: sections.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              title: Text(sections[index]['title'],
                  style: SharedFonts.primaryBlackFont),
              leading: Icon(sections[index]['icon'],
                  size: 20.0, color: SharedColors.blackColor),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: SharedColors.greyColor,
                size: 20,
              ),
              onTap: () {
                Navigator.pushNamed(context, sections[index]['route']);
              },
            ),
          );
        },
      ),
    );
  }
}
