//import 'dart:ffi';
import 'package:jklmn/auth/create_account.dart';
import 'auth/auth_service.dart';
import 'homePage.dart';
import 'Colors.dart';
import 'Index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  TextEditingController idController=TextEditingController();
  TextEditingController PasswordController=TextEditingController();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //logo
              const SizedBox(
                height: 50,
              ),
              // Icon(
              //     Icons.headphones,
              //     size: 50,
              // ),
              const SizedBox(height: 5),
              //Welcome text center
              Center(
                child: Text(
                  'Welcome !',
                  overflow: TextOverflow.fade,
                  style: GoogleFonts.inder(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              //professor id
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 180, 0),
                    child: Column(
                      children: [
                        Text(
                          'Professor ID',
                          style: GoogleFonts.inder(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                      height:
                      5),
                  // customize the width to add space between the label and the TextField
                  Container(
                    width: 291,
                    height: 48, // customize the width to your liking
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(
                          20.0), // customize the borderRadius to your liking
                      color: const Color(0xFFC7D2FC),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: const Offset(3, 2),
                        ),
                      ],
                    ),
                    child:  Center(
                      child: TextField(
                        controller: idController,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                          hintText: 'Enter ID',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20,),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 205, 0),
                    child: Column(
                      children: [

                        Text(
                          'Password',
                          style: GoogleFonts.inder(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                      height: 5),
                  // customize the width to add space between the label and the TextField
                  Container(
                    width: 291,
                    height: 48, // customize the width to your liking
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                      color: const Color(0xFFC7D2FC),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: const Offset(3, 2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: TextField(
                        controller: PasswordController,
                        obscureText: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                          hintText: 'Enter Password',
                          hintStyle: TextStyle(
                            color: Colors.white,),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        ),
                      ),
                    ),
                  ),
                  // const SizedBox(height: 10),
                  // const Padding(
                  //   padding: EdgeInsets.fromLTRB(200, 10, 0, 0),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(180, 7, 0, 0),
                    child: TextButton(
                      child:const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      onPressed: () {
                        WidgetsBinding.instance.focusManager.primaryFocus
                            ?.unfocus();
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () async{
                      final message = await AuthService().login(
                        email: idController.text,
                        password: PasswordController.text,
                      );
                      if (message!.contains('Success')) {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => Home()));
                      }
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFC7D2FC),
                        //background color of button
                        elevation: 6,
                        //elevation of button
                        side: const BorderSide(width:1, color:Colors.white),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.all(15) //content padding inside button

                    ),
                    child:const Padding(
                      padding: EdgeInsets.fromLTRB(20,0,20,0),
                      child: Text('Login',
                        style:TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5,0, 5),
                    child: Text('Or',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {
                     Navigator.push(context,MaterialPageRoute(builder: (context) => CreateAccount(),));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFC7D2FC),
                        //background color of button
                        elevation: 6,
                        //elevation of button
                        side: const BorderSide(width:1, color:Colors.white),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.all(15) //content padding inside button

                    ),
                    child:const Padding(
                      padding: EdgeInsets.fromLTRB(13,0,13,0),
                      child: Text('Sign Up',
                        style:TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,140,0),
                    child: Image.asset('images/loginfinal.png',
                      height: 279,
                      width: 195,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),

      ),

    );
  }
}
class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
