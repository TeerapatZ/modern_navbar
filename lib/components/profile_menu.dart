// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:modern_navbar/constant/constant.dart';

class ProfileMenu extends StatelessWidget {
  final String title;
  final IconData icons;

  const ProfileMenu({
    Key? key,
    required this.title,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250, height: 40,      
      child: Row(
      children: [
      CircleAvatar(backgroundColor:Color.fromARGB(255, 107, 101, 101), child: Icon(icons , size: 20, color: iconPrimaryColor,)),
      Text(title, style: textMenu,),// สี BG ICON ซ้าย
      const Spacer(),
      const CircleAvatar(backgroundColor:Color.fromARGB(255, 107, 101, 101),radius: 16 , child: Icon(Icons.arrow_forward_ios, size: 20, color: iconSecondaryColor))
    ]// สี BG ICON ขาว
  ),
  );
  }
}
