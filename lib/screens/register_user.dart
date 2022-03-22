import 'dart:async';

import 'package:finding_a_tour/routes/app_routes.dart';
import 'package:finding_a_tour/screens/infocarrusel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:finding_a_tour/screens/home_screen.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(22))),
        /* automaticallyImplyLeading: false, */
        title: const Text('Registrar'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
            fontFamily: 'SFPRODISPLAY'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              _campos(),
              const SizedBox(
                height: 10,
              ),
              _bottonRegister(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottonRegister() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(32),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: TextStyle(fontSize: 24),
              minimumSize: Size.fromHeight(50),
              shape: StadiumBorder(),
            ),
            child: isLoading
                ? const CircularProgressIndicator(
                    color: Colors.white,
                  )
                : Text('Registrarse'),
            onPressed: () {
              if (isLoading) return;
              setState(() => isLoading = true);
              Timer(Duration(seconds: 2), () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => carinf()),
                );
              });
            },
          ));
    });
  }

  Widget _campos() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Column(children: [
          CupertinoTextField(
            padding: const EdgeInsets.all(16),
            placeholder: 'Ricardo Perez',
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
          const SizedBox(
            height: 10,
          ),
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
          const SizedBox(
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
}
