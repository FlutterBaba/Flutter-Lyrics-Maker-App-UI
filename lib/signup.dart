import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isVisibility = true;
  Widget buildTextField({required hintText, bool obscureText = false}) {
    return TextFormField(
      obscureText: isVisibility,
      style: TextStyle(color: Colors.white70),
      decoration: InputDecoration(
        suffixIcon: obscureText
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isVisibility = !isVisibility;
                  });
                },
                icon: Icon(
                  isVisibility ? Icons.visibility_off : Icons.visibility,
                  color: Color(0xffFE4775),
                ),
              )
            : Text(""),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffFE4775),
            width: 3,
          ),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white70,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "images/signup.png",
            ),
          ),
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.6),
              ],
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 40),
                        child: Text(
                          "LYRICS",
                          style: TextStyle(
                            fontSize: 50,
                            color: Color(0xffFE4775),
                            fontFamily: "customFontBold",
                          ),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: 2,
                        child: Text(
                          "MARKER",
                          style: TextStyle(
                            fontSize: 50,
                            fontFamily: "customFontRegular",
                            color: Color(0xffFFFDFD),
                          ),
                        ),
                      )
                    ],
                  ),
                  buildTextField(hintText: "Full Name", obscureText: false),
                  buildTextField(hintText: "Email", obscureText: false),
                  buildTextField(
                    hintText: "Password",
                    obscureText: true,
                  ),
                  MaterialButton(
                    height: 51,
                    minWidth: double.infinity,
                    elevation: 0,
                    color: Color(0xffFE4775),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Join us",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.5,
                        fontFamily: "customFontBold",
                      ),
                    ),
                  ),
                  Text(
                    "No credit card required",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontFamily: "customFontRegular",
                    ),
                  ),
                  Divider(
                    color: Color(0xffFe4775),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                        height: 50,
                        minWidth: 100,
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color(0xff31519c),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {},
                        child: Image.asset("images/facebooklogo.png"),
                      ),
                      //// create function.. pass the parameter only on image, color, ontap...
                      MaterialButton(
                        height: 50,
                        minWidth: 100,
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xffFFFFFF),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {},
                        child: Image.asset("images/googlelogo.png"),
                      ),
                    ],
                  ),
                  Text(
                    "by continuing, you agree to accpet our Terms of use and Privavy , Policy",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      fontFamily: "customFontRegular",
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already a member?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                          fontFamily: "customFontRegular",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Sing in",
                        style: TextStyle(
                          color: Color(0xffFE4775),
                          decoration: TextDecoration.underline,
                          fontSize: 12,
                          fontFamily: "customFontBold",
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
