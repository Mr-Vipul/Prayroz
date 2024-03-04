import 'package:flutter/material.dart';
import 'package:prayroz/view/login/welcome_view.dart';

class StartupView extends StatefulWidget {
  const StartupView({super.key});

  @override
  State<StartupView> createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView> {
  @override
  void initState(){
    super.initState();
    goWelcomePage();
  }

  void goWelcomePage() async{
    await Future.delayed(const Duration(seconds: 3));
    Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomeView()));
  }


  @override
  Widget build(BuildContext context) {

    // current screen attain size
    var media = MediaQuery.of(context).size;


    return Scaffold(
      // backgroundColor: Colors.white,
      body: Stack(

        alignment: Alignment.center,
        children: [
          Image.asset("assets/images/splash_new.jpg",
              width: media.width,
              height: media.height,
              fit: BoxFit.cover),

          // Align(alignment: Alignment.center),

          Container(
            // color: Colors.white,
            margin: EdgeInsets.only(top:80),
            height: 240,
            width: 190,
            child:
            Image.asset("assets/images/logo.jpg",
              width: media.width*0.5,
              height: media.height*0.5,
              fit: BoxFit.cover,
            ),
          ),

          // Column(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   // mainAxisSize: MainAxisSize.min,
          //   children: [
          //     Container(
          //       margin: EdgeInsets.only(bottom: 12),
          //       child: Text("Version 0.1" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
          //     ),
          //     // Container(
          //     //   margin: EdgeInsets.only(bottom: 14),
          //     //   child: Text("All right Reserved" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
          //     // )
          //   ],
          // )
        ],
      )
    );
  }
}
