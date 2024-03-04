import 'package:flutter/material.dart';
import 'package:prayroz/common_widget/round_button.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo_2.jpg",
                    width: media.width * 0.7,
                    height: media.height * 0.4,
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: media.width * 0.01),

          Container(
            height: 100,
            width: 250,
            // alignment: Alignment.center,
            // margin: EdgeInsets.only(bottom: 10),
            child: Text(
              "Bringing Blessings to Your Doorstep: Your Trusted Prasad Delivery Service",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey.shade500, fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),



          // => Login Button here using separate class
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: RoundButton(
              title: "Login",
              onPressed: () {},
            ),
          ),

          SizedBox(
            height: media.width * 0.05,
          ),

          // => create account button using
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: RoundButton(
              title: "Create an Account",
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: media.width * 0.2,
          ),
        ],
      ),
    );
  }
}
