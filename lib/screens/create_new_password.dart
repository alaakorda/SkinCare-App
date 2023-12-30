import 'package:flutter/material.dart';
import 'package:skincare/screens/new_password_screen.dart';
import 'package:skincare/screens/verification_screen.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({Key? key}) : super(key: key);
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
                    builder: ((context) => const VerificationScreen()),
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
        child: Form(
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
                  padding: EdgeInsets.only(top: 136, right: 135, left: 15),
                  child: Text(
                    'Create new password',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 23, left: 20),
                  child: Text(
                    'The password shuold be different from the previous password',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 45.0, left: 20, right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: const ImageIcon(
                          AssetImage('assets/icons/tabler_eye-closed.png'),
                        ),
                        hintText: "New password",
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
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: const ImageIcon(
                          AssetImage('assets/icons/tabler_eye-closed.png'),
                        ),
                        hintText: "Confirm password",
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
                            builder: (context) => const NewPasswordScreen()),
                      );
                    },
                    child: const Text(
                      'Reset password',
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
      ),
    );
  }
}
