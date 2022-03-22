import 'package:finding_a_tour/screens/home_screen.dart';
import 'package:finding_a_tour/screens/register_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:finding_a_tour/screens/register_ciud.dart';

class Login extends StatefulWidget {
  static String id = 'login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Image.asset(
                  'images/logo.png',
                  height: 300.0,
                ),
              ),
              _logind(),
              const SizedBox(
                height: 5,
              ),
              _bottonLogin(),
              const SizedBox(
                height: 25,
              ),
              _bottonRegister(),
              /*              SizedBox(
                height: 20,
              ),
              _bottonRegisterCiud(), */
            ],
          ),
        ),
      ),
    );
  }

  Widget _logind() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Column(children: [
          CupertinoTextField(
            padding: const EdgeInsets.all(16),
            placeholder: 'ejemplo@mail.com',
            placeholderStyle: const TextStyle(color: Colors.black38),
            style: const TextStyle(color: Colors.black54),
            decoration: BoxDecoration(
              color: CupertinoColors.extraLightBackgroundGray,
              border: Border.all(
                color: CupertinoColors.lightBackgroundGray,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            cursorColor: CupertinoColors.inactiveGray,
          ),
          SizedBox(
            height: 10,
          ),
          CupertinoTextField(
            padding: const EdgeInsets.all(16),
            placeholder: 'Contraseña',
            placeholderStyle: const TextStyle(color: Colors.black38),
            obscureText: true,
            style: const TextStyle(color: Colors.black54),
            decoration: BoxDecoration(
              color: CupertinoColors.extraLightBackgroundGray,
              border: Border.all(
                color: CupertinoColors.lightBackgroundGray,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            cursorColor: CupertinoColors.inactiveGray,
          ),
        ]),
      );
    });
  }

  Widget _bottonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 85.0, vertical: 14.0),
            child: const Text(
              'Iniciar Sesión',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          elevation: 10.0,
          color: const Color.fromARGB(255, 66, 226, 186),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          });
    });
  }

  Widget _bottonRegister() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 82.5, vertical: 16.0),
            child: const Text(
              'Registrar Club',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          elevation: 10.0,
          color: const Color.fromARGB(255, 66, 226, 186),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Register()));
          });
    });
  }

  Widget _bottonRegisterCiud() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 98.0, vertical: 15.0),
            child: const Text(
              'Registrate',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          elevation: 10.0,
          color: Color.fromARGB(255, 165, 6, 6),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegisterCiud()));
          });
    });
  }
}
