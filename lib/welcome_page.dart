import 'package:flutter/material.dart';
import 'package:lyrics_maker_app/signup.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/background.png"),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SafeArea(
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "CREATE ANY\t",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 33,
                            fontFamily: "customFontRegular",
                          ),
                        ),
                        TextSpan(
                          text: "LYRICS",
                          style: TextStyle(
                            color: Color(0xffFE4775),
                            fontSize: 33,
                            fontFamily: "customFontBold",
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                RotatedBox(
                  quarterTurns: 2,
                  child: Text(
                    "FROM YOUR PHONE",
                    style: TextStyle(
                      fontFamily: "customFontRegular",
                      fontSize: 24,
                      color: Color(0xffFFFDFD),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Column(
                children: [
                  Text(
                    "Join The Community",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "customFontBold",
                    ),
                  ),
                  Text(
                    "The Ultimate Lyrics Marker App",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontFamily: "customFontRegular",
                    ),
                  ),
                  MaterialButton(
                    height: 51,
                    minWidth: 254,
                    elevation: 0,
                    color: Color(0xffFE4775),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(
                      "Get started",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.5,
                        fontFamily: "customFontBold",
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
