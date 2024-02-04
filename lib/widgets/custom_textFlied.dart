 
import 'package:flutter/material.dart';

class CustomTextFlieldWidget extends StatelessWidget {
  final String hintText;
  final Icon? sufficIcon;
  final BorderSide borderSide;
  final int? maxline;
  final int? minline;
 const CustomTextFlieldWidget({super.key, required this.hintText,required this.borderSide,this.sufficIcon,
 this.maxline,
 this.minline});

  @override
  Widget build(BuildContext context) {
    return TextField(
       maxLines: maxline,
      minLines: minline,
      decoration: InputDecoration(
        suffixIcon: sufficIcon,
          fillColor: Colors.white,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: borderSide,
          ),
          border:   OutlineInputBorder(
              borderRadius:const BorderRadius.all(Radius.circular(10)),
              borderSide: borderSide),
          hintText: hintText,
          hintStyle:const TextStyle(color: Colors.grey)),
    );
  }
}
