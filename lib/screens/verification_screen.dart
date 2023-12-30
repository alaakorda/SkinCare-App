import 'package:flutter/material.dart';
import 'package:skincare/screens/create_new_password.dart';
import 'package:skincare/screens/forget_password_screen.dart';
import 'package:skincare/screens/longin_screen.dart';
class VerificationScreen extends StatelessWidget {
const VerificationScreen({ Key? key }) : super(key: key);
@override
Widget build(BuildContext context) {
return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (BuildContext appBarContext) {
            return IconButton(
              icon: const ImageIcon(
                AssetImage(
                  'assets/icons/solar_arrow-right-broken.png',
                ),
              ),
              color: Colors.white,
              iconSize: 51,
              splashColor: Colors.transparent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const ForgetPasswordScreen()),
                  ),
                );
              },
            );
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
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
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 136,right: 99, left: 20),
                child: Text(
                  'Please check your Email',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 23, right: 59),
                child: Text(
                  'We have sent code to Badr23@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45.0, left: 20, right: 20),
                child: Container(
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
              const SizedBox(
                height: 250,
              ),
              Container(
                width: 360,
                height: 52,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateNewPassword()),
                    );
                  },
                  child: const Text(
                    'Verification',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xffFD8282),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
}
}