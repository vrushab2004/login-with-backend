import 'package:flutter/material.dart';
import 'package:login_temp/home.dart';
import 'package:login_temp/register.dart';
import 'package:login_temp/textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage('https://dyavolx.com/cdn/shop/files/image.png?v=1681915801'),),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height-350,
                child: Column(
                  children: [
                    CustomTextField(placeholder: 'Name', icon:Icons.person),
                    SizedBox(height: 40,),
                    CustomTextField(placeholder: 'Password', icon: Icons.password),
                    SizedBox(height: 60,),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width-50,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text('Log-In',style: GoogleFonts.varelaRound(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder:  (context)=> RegisterPage()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width-50,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.red,width: 4,),
                        ),
                        child: Center(
                          child: Text('Sign-up',style: GoogleFonts.varelaRound(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}