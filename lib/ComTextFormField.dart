import 'package:flutter/material.dart';
import 'Assintant.dart';

class comTextFormField extends StatelessWidget {
  late TextEditingController controller;
  String hintName;
  IconData icon;
  bool isObscureText = false;
  TextInputType InputType;
  comTextFormField({
    required this.controller,
    required this.hintName,
    required this.icon,
    required this.isObscureText,
    required this.InputType
});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller,
        obscureText: isObscureText,
        keyboardType: InputType,
        validator: (val) {
          if(val == null || val.isEmpty) {
            return "Please Enter a $hintName";
          }

          return null;
        },
        onSaved: (val) => controller.text = val!,
        decoration: InputDecoration(
            labelText: "$hintName",
            labelStyle: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                letterSpacing: 2,
                fontWeight: FontWeight.bold
            ),
            hintText: "Enter Your $hintName",
            hintStyle: const TextStyle(color: Colors.white),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.grey)
            ),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.white)
            ),
            prefixIcon: Icon(icon, color: Colors.white,),
            suffix: IconButton(onPressed: (){
              controller.clear();
            },
                icon: const Icon(Icons.clear,color: Colors.white,size: 20,)
            ),
            // filled: true,
            // fillColor: Colors.amber[400]
        ),

      ),
    );
  }
}
