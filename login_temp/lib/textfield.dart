import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  final String placeholder;
  final IconData icon;
  const CustomTextField({super.key,required this.placeholder,required this.icon});

  @override
  Widget build(BuildContext context) {
    return 
        Container(
          margin:const EdgeInsets.only(left: 25,right: 25,),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder:OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
              )
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red
                )
              ),
              // hintText:placeholder,
              label: Text(placeholder,style: TextStyle(color: Colors.grey),),
              prefixIcon:Icon(icon,color: Colors.white,)

            ),
            cursorColor: Colors.red,
          ),
        );

  }
}