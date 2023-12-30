import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ComeBackScreen extends StatelessWidget {
  const ComeBackScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(242, 145, 145, 0.86),
              Color.fromRGBO(240, 169, 169, 0.47),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 200, left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Skin care",
                style: GoogleFonts.lobsterTwo(
                  textStyle: const TextStyle(
                    fontSize: 47,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 5,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 255, 255, 255),
                    shadows: [
                      Shadow(
                        blurRadius: 4.0,
                        color: Color.fromARGB(64, 17, 16, 16),
                        offset: Offset(0, 9),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 164,
              ),
              const Text(
                "waiting for you ",
                style: TextStyle(
                  fontSize: 47,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3,
                  color: Color.fromARGB(255, 255, 255, 255),
                  shadows: [
                    Shadow(
                      blurRadius: 4.0,
                      color: Color.fromARGB(64, 17, 16, 16),
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
              ),
              const Text(
                "to come back",
                style: TextStyle(
                  fontSize: 47,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3,
                  color: Color.fromARGB(255, 255, 255, 255),
                  shadows: [
                    Shadow(
                      blurRadius: 4.0,
                      color: Color.fromARGB(64, 17, 16, 16),
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
              ),
              const Text(
                "again.",
                style: TextStyle(
                  fontSize: 47,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3,
                  color: Color.fromARGB(255, 255, 255, 255),
                  shadows: [
                    Shadow(
                      blurRadius: 4.0,
                      color: Color.fromARGB(64, 17, 16, 16),
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
