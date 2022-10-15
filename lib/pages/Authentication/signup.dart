import 'package:flutter/material.dart';
import 'package:catchyshoe/Services/AuthServices.dart';

class SignUp extends StatefulWidget {

  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final FocusNode focusEmail = FocusNode();
  final FocusNode focusPassword = FocusNode();
  final GlobalKey<ScaffoldState> _mainScaffoldKey =
  new GlobalKey<ScaffoldState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void addUser() async{
    String email = emailController.text;
    String password = passwordController.text;
    AuthUser authuser = new AuthUser();
    await authuser.createUser(email, password);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      child: Column(

        children: [
          Padding(
            padding: EdgeInsets.only(top: 25, bottom: 25, left: 30),
            child: TextField(
              focusNode: focusEmail,
              controller: emailController,
              keyboardType: TextInputType.emailAddress,

              style: TextStyle(

                  fontFamily: "SignikaSemiBold",
                  fontSize: 16.0,
                  color: Colors.white
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.email,
                    color: Colors.white,
                    size: 22.0,
                  ),
                  hintText: "Email",
                  hintStyle: TextStyle(
                      color: Colors.white
                  )
              ),

            ),

          ),

          Padding(
            padding: EdgeInsets.only(top: 25, bottom: 25, left: 30),
            child: TextField(
              focusNode: focusPassword,
              controller: passwordController,
              keyboardType: TextInputType.text,

              style: TextStyle(

                  fontFamily: "SignikaSemiBold",
                  fontSize: 16.0,
                  color: Colors.white
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.lock,
                    color: Colors.white,
                    size: 22.0,
                  ),
                  hintText: "Password",
                  hintStyle: TextStyle(
                      color: Colors.white
                  )
              ),

            ),

          ),

          Padding(
            padding: EdgeInsets.only(top: 25, bottom: 25, left: 30),
            child: TextField(
              focusNode: focusEmail,
              controller: emailController,
              keyboardType: TextInputType.emailAddress,

              style: TextStyle(

                  fontFamily: "SignikaSemiBold",
                  fontSize: 16.0,
                  color: Colors.white
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 22.0,
                  ),
                  hintText: "Username",
                  hintStyle: TextStyle(
                      color: Colors.white
                  )
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top:25),
            child: TextButton(
              child: Text("Submit",
                style: TextStyle(color: Colors.white),
              ),

              onPressed: (){

              },
            ),
          ),
        ],

      ),
    );
  }
}
