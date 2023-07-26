import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/AdminScreen.dart';
import 'RegistrationForm.dart';
import 'ComTextFormField.dart';
import 'Assintant.dart';
import 'Database_Helper.dart';
import 'homeScreen.dart';
import 'home.dart';
class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final form_key = GlobalKey<FormState>();
  final EmailTextController = TextEditingController();
  final PasswordTextController = TextEditingController();

  void Login() {
    final form = form_key.currentState;
    String email = EmailTextController.text;
    String password = PasswordTextController.text;

    if (form!.validate()) {
      alertDialog(context, 'OK');
    }
    if (!validateEmail(email)) {
      alertDialog(context, 'Please Enter a Valid Email');
    }
    else {
      alertDialog(context, 'Account is correct');
      LocalDatabase.getUserData(email, password);
      if(LocalDatabase.user[email]?.Email == null && LocalDatabase.user[email]?.Password == null)
        {
          alertDialog(context, 'Login Failed Please signup first');
        }
      else if((LocalDatabase.user[email]?.Email != null && LocalDatabase.user[email]?.Password.compareTo(password) == -1)
        || (LocalDatabase.user[email]?.Email != null && LocalDatabase.user[email]?.Password.compareTo(password) == 1)
      )
        {
          alertDialog(context, 'Wrong Password!!, Please Try Again');
        }
      else
      {
        if(LocalDatabase.user[email]?.Email == 'Admin@gmail.com' && LocalDatabase.user[email]?.Password == '12345')
          {
            Navigator.push(context, MaterialPageRoute(builder: (_) => AdminScreen()));
          }
        else
        {
          Navigator.push(context, MaterialPageRoute(builder: (_) => homeScreen()));
        }

      }

      //print (LocalDatabase.user[email]?.Password);

    }

  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Form(
          key: form_key,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: size.width * 1,
              height: size.height * 1.1,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:  AssetImage('lib/d3.jpg'),
                      fit: BoxFit.cover,
                  ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children:  [
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 120, 0, 0),
                        child: const Text(
                          "Dear",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Colors.white,
                              fontSize: 70
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(21, 175, 0, 0),
                        child: const Text(
                          "Customer",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Colors.white,
                              fontSize: 70
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(320, 120, 0, 0),
                        child: const Text(
                          ".",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Colors.amber,
                              fontSize: 130
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    //padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      comTextFormField(
                        controller: EmailTextController,
                        InputType: TextInputType.emailAddress,
                        hintName: 'Email',
                        icon: Icons.mail,
                        isObscureText: false,
                    ),
                        SizedBox(height: 20),
                        comTextFormField(
                          controller: PasswordTextController,
                          InputType: TextInputType.text,
                          hintName: 'Password',
                          icon: Icons.lock,
                          isObscureText: true,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Center(
                    child: Container(

                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(29),
                            child: FlatButton(
                              padding: const EdgeInsets.symmetric(vertical:20 ,horizontal: 40),
                              color: Colors.black54,
                              onPressed: ()
                              {
                                setState(() {
                                  Login();
                                });
                              },
                              child: const Text("LOGIN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2
                                  )
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      const  Text(
                      "Does not have an Account ?",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      )
                    ),
                        FlatButton(
                              color: Colors.transparent,
                              onPressed: (){
                               Navigator.of(context).push(MaterialPageRoute(builder: (_) => RegistrationForm()));
                            },
                            child: const Text("Register",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2
                                )
                            ),
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
