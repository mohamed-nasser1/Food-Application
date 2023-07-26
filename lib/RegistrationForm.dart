import 'package:flutter/material.dart';
import 'ComTextFormField.dart';
import 'LoginForm.dart';
import 'Assintant.dart';
import 'Database_Helper.dart';


class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final Email_TextController = TextEditingController();
  final Password_TextController = TextEditingController();
  final UserName_TextController = TextEditingController();
  final Region_TextController = TextEditingController();
  final PhoneNumber_TextController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  void Register()
  {
    String username = UserName_TextController.text;
    String email = Email_TextController.text;
    String password = Password_TextController.text;
    String region = Region_TextController.text;
    String phone_number = PhoneNumber_TextController.text;
    final form = formkey.currentState;

    if(form!.validate())
      {
        alertDialog(context, 'OK');
      }
    if(!validateEmail(email))
      {
        alertDialog(context, 'Please Enter a Valid Email');
      }else
      {
        alertDialog(context, 'Account is correct');
        LocalDatabase.insertDatabase(
            username: username,
            Email: email,
            Password: password,
            region: region,
            PhoneNumber: phone_number
        );

        Navigator.push(context,
            MaterialPageRoute(builder: (_) => LoginForm()));
      }
    //
    // if(username.isEmpty)
    //   {
    //      alertDialog(context,"Please Enter a Username");
    //   }
    // else if(email.isEmpty)
    //   {
    //     alertDialog(context,"Please Enter an Email");
    //   }
    // else if(password.isEmpty)
    // {
    //   alertDialog(context,"Please Enter a Password");
    // }
    // else if(region.isEmpty)
    // {
    //   alertDialog(context,"Please Enter a your Adress");
    // }
    // else if(phone_number.isEmpty)
    // {
    //   alertDialog(context,"Please Enter a Phone Number");
    // }

  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepOrange[700],
          title:const Text(
            "Registration Page",
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 2
            ),
          ),
          elevation: 0,
        ),
        body: Form(
          key: formkey,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: size.width * 1,
              height: size.height * 1.1,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image:  AssetImage('lib/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          comTextFormField(
                            controller: UserName_TextController,
                            InputType: TextInputType.name,
                            hintName: 'User Name',
                            icon: Icons.person_outlined,
                            isObscureText: false,
                          ),
                          const SizedBox(height: 15),
                          comTextFormField(
                            controller: Email_TextController,
                            InputType: TextInputType.emailAddress,
                            hintName: 'Email',
                            icon: Icons.mail,
                            isObscureText: false,
                          ),
                          const SizedBox(height: 15),
                          comTextFormField(
                            controller: Password_TextController,
                            InputType: TextInputType.text,
                            hintName: 'Password',
                            icon: Icons.lock,
                            isObscureText: true,
                          ),
                          const SizedBox(height: 15),
                          comTextFormField(
                            controller: Region_TextController,
                            InputType: TextInputType.streetAddress,
                            hintName: 'Region',
                            icon: Icons.location_city,
                            isObscureText: false,
                          ),
                          const SizedBox(height: 15),
                          comTextFormField(
                            controller: PhoneNumber_TextController,
                            InputType: TextInputType.phone,
                            hintName: 'Phone Number',
                            icon: Icons.phone_iphone,
                            isObscureText: false,
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: Container(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(29),
                              child: FlatButton(
                                padding: const EdgeInsets.symmetric(vertical:20 ,horizontal: 27),
                                color: Colors.redAccent,
                                onPressed: (){
                                        Register();
                                },
                                child: const Text("SignUP",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2
                                    )
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const  Text(
                                      "Do you have an Account ?",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                      )
                                  ),
                                  FlatButton(
                                    color: Colors.transparent,
                                    onPressed: (){
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (_) => LoginForm()));

                                    },
                                    child: const Text("LOGIN",
                                        style: TextStyle(
                                            color: Colors.redAccent,
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
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}

