import 'package:flutter/material.dart';
import 'package:stylish_app/pages/main_page/main_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getStartedSection(context),
    );
  }

  Container getStartedSection(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/appCover.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          // Top portion (empty space or any additional content)
          Expanded(
            child: Container(),
          ),
          
          // Bottom half with black tint
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff1D1617).withOpacity(0.6),
                  blurRadius: 50,
                  spreadRadius: 30,
                  offset: const Offset(0, -10)
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'You want\n Authentic, here\n you go!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Find it here, buy it now!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffF2F2F2),
                    ),
                  ),
                  const SizedBox(height: 40),
                  InkWell(
                    onTap: () {
                      // Add navigation or action here
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context)=> const MainPage()
                      ));
                    },
                    child: Container(
                      height: 60,
                      width: 300,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color(0xffF83758),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
