import 'package:flutter/material.dart';
import 'package:homedecor/utilis/utils.dart';
class CustomeTextfilled extends StatelessWidget {
  final String label;
  final String hint;
  final bool isPassword;
  final bool obscureText;
  final VoidCallback? toggleVisibilty;
  final TextEditingController controller;
  final Color? labelColor;
 final FocusNode? focusNode;
 final FocusNode? nextFocus;
  const CustomeTextfilled({super.key,required this.label,required this.hint,this.isPassword=false,this.obscureText=false,this.toggleVisibilty,required this.controller,this.labelColor, this.focusNode, this.nextFocus});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,style: TextStyle(
          color: labelColor?? Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18
        ),),
        SizedBox(height: 8,),
        TextFormField(
          focusNode: focusNode,

          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.brown.shade200),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 18),
            suffixIcon: isPassword ? IconButton(onPressed: toggleVisibilty, icon: Icon(obscureText?Icons.visibility_off_outlined : Icons.visibility_outlined),color: Colors.brown.shade300,) : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none
            )
          ),
          onFieldSubmitted: (value){
           if(nextFocus!=null){
            Utils.filledFocusChnages(context, focusNode!, nextFocus!);
           }
          },
          
        )
      ],
    );
  }
}