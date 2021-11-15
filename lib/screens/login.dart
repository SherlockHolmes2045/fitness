import 'package:fitness/screens/dashboard.dart';
import 'package:fitness/utils/hexcolor.dart';
import 'package:fitness/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(child: Scaffold(
      backgroundColor: HexColor("#ACADFF"),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 2),
              child: Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {  },
                  child: const Text(
                    "S'inscrire",
                    style: TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 2),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "WELCOME BACK!",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.blockSizeHorizontal * 8,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Entrez vos identifiants pour continuer",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: SizeConfig.blockSizeHorizontal * 3,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 20),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding:EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 10),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 7.5,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 2),
                            child: TextFormField(
                              textAlign: TextAlign.justify,
                              controller: _emailController,
                              decoration: InputDecoration(
                                  labelText: 'Email/ Username',
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                focusColor: HexColor("#ACADFF"),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 3.5,
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 7.5,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 2),
                            child: TextFormField(
                              textAlign: TextAlign.justify,
                              controller: _emailController,
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                focusColor: HexColor("#ACADFF"),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical / 2
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {  },
                            child: const Text(
                              "Forgot password?",
                              style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 22),
                            child: SizedBox(
                              height: SizeConfig.blockSizeVertical * 8,
                              width: SizeConfig.screenWidth / 1.2,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                                      return RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(SizeConfig.blockSizeHorizontal * 3));
                                    }),
                                    backgroundColor: MaterialStateProperty.all<Color>(HexColor("#8587DC"))
                                ),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    FocusScope.of(context).unfocus();
                                  }
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                                },
                                child: const Text(
                                    "Se connecter"
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
