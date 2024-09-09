import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modern_navbar/components/profile_image.dart';
import 'package:modern_navbar/components/profile_menu.dart';
import 'package:modern_navbar/constant/constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 145, 197, 239),// BG PROFILE
      appBar: AppBar(
          backgroundColor: bgPrimaryColor,
          leading: const Icon(
            Icons.arrow_back_ios,
            size: 24,
            color: iconSecondaryColor,
          ),
          title: Text(
            "MY PROFILE",
            style: textTitle,
          ),
          actions: const [
            Icon(
              Icons.light_mode,
              size: 24,
              color: iconSecondaryColor,
            ),
            SizedBox(
              width: 20,
            )
          ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const ProfileImage(),
            const SizedBox(
              height: 20,
            ),
            Text('Teerapat Chuenklin', style: textTitle),
            const SizedBox(height: 3,),
            Text('S6507012660184@email.kmutnb.ac.th', style: textSubTitle),

            const SizedBox(height: 20,),
            SizedBox(width: 200, height: 35, child: Container(
              decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(25.0)), 
              child: Center(child: Text('Edit Profile', style: textBin,))),),//Edit Profile BOX

              const SizedBox(height: 15,),
              const ProfileMenu(title: '   setting', icons: Icons.settings,),
              const SizedBox(height: 15,),
              const ProfileMenu(title: '   Billing Detail', icons: Icons.wallet,),
              const SizedBox(height: 15,),
              const ProfileMenu(title: '   User Management', icons: Icons.person_add,),
              const SizedBox(height: 40,),
              const ProfileMenu(title: '   Information' , icons: Icons.info_outline_rounded,),
              const SizedBox(height: 15,),
              const ProfileMenu(title: '   Logout', icons: Icons.logout,),
          ],
        ),
      ),
    );
  }
}
