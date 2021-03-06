import 'dart:async';

import 'package:finding_a_tour/routes/app_routes.dart';
import 'package:finding_a_tour/screens/infocarrusel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:finding_a_tour/screens/home_screen.dart';

class clubReg extends StatefulWidget {
  clubReg({Key? key}) : super(key: key);

  @override
  _clubReg createState() => _clubReg();
}

class _clubReg extends State<clubReg> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(5))),
        /* automaticallyImplyLeading: false, */
        title: const Text(''),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 66, 226, 186),
            fontWeight: FontWeight.bold,
            fontFamily: 'SFPRODISPLAY1'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Nuevo CLUB',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 25, fontFamily: 'SFPRODISPLAY2')),
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
          padding: const EdgeInsets.all(32),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 24),
              minimumSize: const Size.fromHeight(50),
              shape: const StadiumBorder(),
            ),
            child: isLoading
                ? const CircularProgressIndicator(
                    color: Colors.white,
                  )
                : const Text('Registrar club'),
            onPressed: () {
              if (isLoading) return;
              setState(() => isLoading = true);
              Timer(const Duration(seconds: 2), () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
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
            placeholder: 'Nombre',
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
            placeholder: 'Direcci??n',
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
            placeholder: 'Horario',
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
            placeholder: 'Telefono',
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
            placeholder: 'Geoubicaci??n',
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
            placeholder: 'Logotipo',
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
        ]),
      );
    });
  }
}
