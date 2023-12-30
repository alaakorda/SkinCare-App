import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skincare/screens/comeback_screen.dart';
import 'package:skincare/screens/forget_password_screen.dart';
class SignUpScreen extends StatelessWidget {
const SignUpScreen({ Key? key }) : super(key: key);
@override
Widget build(BuildContext context) {
return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
            padding: const EdgeInsets.only(top: 150, left: 35, right: 35),
            child: Form(
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
                    height: 68,
                  ),
                  const Text(
                    'Sign Up',
                    style: TextStyle(
               
                      fontSize: 43,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.06,
                      color: Color.fromARGB(255, 255, 255, 255),
                      shadows: [
                        Shadow(
                            blurRadius: 4.0,
                            color: Color.fromARGB(64, 17, 16, 16),
                            offset: Offset(0, 4)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:22),
                    child: Row(
                      children : [
                      Container(
                         width: 166,
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(42, 0, 0, 0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromARGB(42, 0, 0, 0),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromARGB(42, 0, 0, 0),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                      ),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(left:8.0),
                       child: Container(
                        width: 166,
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(42, 0, 0, 0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(42, 0, 0, 0),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(42, 0, 0, 0),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),
                                         ),
                     ),
                      ]
                    ),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(42, 0, 0, 0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromARGB(42, 0, 0, 0),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromARGB(42, 0, 0, 0),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: const ImageIcon(
                          AssetImage('assets/icons/tabler_eye-closed.png'),
                        ),
                        hintText: "Password",
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(42, 0, 0, 0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromARGB(42, 0, 0, 0),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromARGB(42, 0, 0, 0),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ),
                 
                  const SizedBox(
                    height: 66,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8, left: 60, bottom: 8, right: 60),
                    child: Container(
                      width: 186,
                      height: 48,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child:  TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ForgetPasswordScreen()),
                            );
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(    
                              fontSize: 24,
                              color: Color(0xffFD8282),
                              
                            ),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Row(children: [
                      Text(
                        'have any account ? ',
                        style: TextStyle(
                          fontSize: 19,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.02,
                        ),
                      ),
                      Text(
                        'Log in',
                        style: TextStyle(
                          fontSize: 19,
                          color: Color(0xffFF3131),
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.02,
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
}
}