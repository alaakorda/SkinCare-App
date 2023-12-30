import 'package:flutter/material.dart';
import 'package:skincare/screens/create_new_password.dart';
import 'package:skincare/screens/longin_screen.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                padding: EdgeInsets.only(
                  top: 188,
                ),
                child: Text(
                  '🎉',
                  style: TextStyle(fontSize: 153),
                ),
              ),
              const SizedBox(height: 79),
              const Text(
                'password changed',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const Text(
                'Your password has been changed successful',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 48,
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
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: const Text(
                    'Back To Login',
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
