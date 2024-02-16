import 'package:flutter/material.dart';
import 'package:login_temp/textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage('https://dyavolx.com/cdn/shop/files/image.png?v=1681915801')),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height-100,
                child: Column(
                  children: [
                    CustomTextField(placeholder: 'Name', icon: Icons.person),
                    SizedBox(height: 30,),
                    CustomTextField(placeholder: 'Email', icon: Icons.mail),
                    SizedBox(height: 30,),
                    CustomTextField(placeholder: 'Password', icon:Icons.password),
                    SizedBox(height: 70,),
                    GestureDetector(
                      onTap: (){
                        print('Hello');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width-40,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text('Sign-up',style:GoogleFonts.varelaRound(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width-40,
                        height: 70,
                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.red,width: 4)
                        ),
                        child: Center(
                          child: Text('Log-in',style:GoogleFonts.varelaRound(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    )

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