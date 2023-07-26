import 'package:flutter/material.dart';
import 'package:toast/toast.dart';


alertDialog(BuildContext context, String massage) {
  Toast.show(massage, context, duration: Toast.LENGTH_LONG,
      backgroundColor: Colors.amber,
      textColor: Colors.white,
      gravity: Toast.BOTTOM,
      backgroundRadius: 20,
  );
}


validateEmail2(String Email)
{
  bool valid = false;
  for(int i= 0; i< Email.length; i++)
    {
      if(Email[i] == '@')valid = true;

    }
  return valid;
  // final regExp = RegExp(r"^[a-zA-Z0-9.!#$%&'*+/+?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
  //
  // return regExp.hasMatch(Email);
}
validateEmail1(String Email)
{
  bool valid = false;
  for(int i= 0; i < Email.length; i++)
  {
    if(Email[i] == '.')valid = true;

  }
  return valid;
}

validateEmail(String Email)
{
 if(validateEmail2(Email) && validateEmail1(Email)) return true;
 else {
   return false;
 }
}