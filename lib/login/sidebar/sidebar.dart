import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:quran_surr/globals.dart';
import 'package:quran_surr/screens/constants/extension.dart';
import 'package:quran_surr/screens/home_screen.dart';

class SidebarPage extends StatefulWidget {
  const SidebarPage({super.key});

  @override
  State<SidebarPage> createState() => _SidebarPageState();
}

class _SidebarPageState extends State<SidebarPage> {
  @override
  Widget build(BuildContext context) {
    return UserPage();
  }
}

Drawer UserPage() {
  // final auth = GetStorage();
  return Drawer(
    backgroundColor: text,
    child: ListView(
      padding: EdgeInsets.zero,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        UserAccountsDrawerHeader(
          accountName: Text(
            'Surya Wiryadinata',
            textAlign: TextAlign.end,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          accountEmail: Text(
            "suryawiryadinata@gmail.com",
            textAlign: TextAlign.end,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'RobotoLight',
            ),
          ),
          currentAccountPicture: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("assets/images/surr_logo.jpeg"),
                  fit: BoxFit.cover),
            ),
          ),
          decoration: BoxDecoration(),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Lottie.asset(
              'assets/lotties/instagram.json',
              width: 12.0.wp,
              fit: BoxFit.cover,
            ),
            Lottie.asset(
              'assets/lotties/facebook.json',
              width: 14.0.wp,
              fit: BoxFit.cover,
            ),
            Lottie.asset(
              'assets/lotties/github.json',
              width: 14.0.wp,
              fit: BoxFit.cover,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        ListTile(
          title: Text(
            'Hello My Name Is Surya Wiryadinata Me is junior front-end web developer and Mobile-Developer is an entry-level employee that works with other developers to improve the appearance of a website. Some of the elements they must review thoroughly include text, imagery and the implementation of the design.',
            maxLines: 11,
            style: GoogleFonts.sanchez(fontSize: 14.0.sp),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        // ListTile(
        //   onTap: () async {
        //     await auth.erase();
        //     Get.offAll(() => const HomeScreen(),
        //         transition: Transition.downToUp,
        //         duration: Duration(milliseconds: 1600));
        //   },
        //   leading: Icon(
        //     Icons.keyboard_backspace_sharp,
        //     size: 40,
        //   ),
        //   title: Text(
        //     'Logout',
        //     style: TextStyle(fontSize: 15.0.sp),
        //   ),
        // ),
        SizedBox(
          height: 120,
        ),
        Lottie.asset("assets/lotties/line.json"),
        ListTile(
          title: Text(
            "Copyright @Surya Wiryadinata 2023",
            style: GoogleFonts.aBeeZee(fontSize: 15),
          ),
        ),
      ],
    ),
  );
}
