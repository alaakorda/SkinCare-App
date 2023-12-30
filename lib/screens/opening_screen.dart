import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skincare/screens/home_screen.dart';
import 'package:skincare/screens/longin_screen.dart';

class OpenScreen extends StatefulWidget {
  const OpenScreen({Key? key}) : super(key: key);

  @override
  _OpenScreenState createState() => _OpenScreenState();
}

class _OpenScreenState extends State<OpenScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _opacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Start the animation after a delay
    Future.delayed(const Duration(seconds: 2), () {
      _controller.forward().then((value) {
        // Animation is complete, navigate to the login screen
        _navigateToLoginScreen();
      });
    });
  }

  void _navigateToLoginScreen() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) =>
            const LoginScreen(), // Replace with your LoginScreen widget
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
             
              Color.fromRGBO(242, 145, 145, 0.86),
               Color.fromRGBO(240, 169, 169, 0.47),
               
               
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: AnimatedBuilder(
            animation: _opacityAnimation,
            builder: (context, child) {
              return Opacity(
                opacity: _opacityAnimation.value,
                child: child,
              );
            },
            child: Center(
              child: Text(
                "Skin care",
                style: GoogleFonts.lobsterTwo(
                  textStyle: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 3,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 255, 255, 255),
                    shadows: [
                      Shadow(
                        blurRadius: 4.0,
                        color: Colors.grey,
                        offset: Offset(0, 9),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
