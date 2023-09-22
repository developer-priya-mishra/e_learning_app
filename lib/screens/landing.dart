import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/color.dart';
import 'login.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Image
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(43.0),
                  bottomRight: Radius.circular(43.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 4.0),
                    blurRadius: 20.0,
                  ),
                ],
                color: Colors.white,
              ),
              child: Image.asset("assets/images/girl_learning.png"),
            ),
          ),
          const SizedBox(height: 30.0),
          // Welcome quote
          Text(
            "Welcome to AKO Language School.",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              fontSize: 34.0,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30.0),
          // Label
          const Padding(
            padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
            child: Text(
              "Login as a",
              style: TextStyle(
                fontSize: 26.0,
              ),
            ),
          ),
          //Button
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(primaryColor),
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.all(15.0),
                ),
              ),
              child: Text(
                "Student",
                style: GoogleFonts.poppins(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          //Button
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ),
                );
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    side: BorderSide(
                      color: primaryColor,
                      width: 2.0,
                    ),
                  ),
                ),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.all(15.0),
                ),
              ),
              child: Text(
                "Teacher",
                style: GoogleFonts.poppins(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: primaryColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
