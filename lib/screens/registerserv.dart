import 'package:animations/animations.dart';
import 'package:finding_a_tour/widget/fab_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

import '../routes/app_routes.dart';

class RegisterServ extends StatefulWidget {
  const RegisterServ({Key? key}) : super(key: key);

  @override
  State<RegisterServ> createState() => _RegisterServ();
}

class _RegisterServ extends State<RegisterServ> {
  int home = 1;

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Nuevo'),
          centerTitle: true,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(
                8.0,
              ),
              children: [
                const Text(
                  'Ingresa datos',
                  style: TextStyle(fontSize: 25, fontFamily: 'SFPRODISPLAY1'),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 32,
                ),
                CupertinoTextField(
                  padding: const EdgeInsets.all(16),
                  placeholder: 'Diciplina',
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
                SizedBox(
                  height: 10,
                ),
                CupertinoTextField(
                  padding: const EdgeInsets.all(16),
                  placeholder: 'Cantidad de Personas',
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
                  placeholder: 'Equipo especial',
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
                  placeholder: 'Personas con capacidades diferentes',
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
              ],
            ),
          ),
        ),
        floatingActionButton: fabwidget1(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: SnakeNavigationBar.color(
          behaviour: SnakeBarBehaviour.floating,
          snakeShape: SnakeShape.circle,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 5,
          padding: const EdgeInsets.all(11),
          height: 45,

          ///configuration for SnakeNavigationBar.color
          snakeViewColor: Color.fromARGB(255, 81, 204, 177),
          selectedItemColor:
              SnakeShape.circle == SnakeShape.indicator ? Colors.black : null,
          unselectedItemColor: Colors.blueGrey,

          ///configuration for SnakeNavigationBar.gradient
          //snakeViewGradient: selectedGradient,
          //selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
          //unselectedItemGradient: unselectedGradient,

          showUnselectedLabels: false,
          showSelectedLabels: false,

          currentIndex: home,
          onTap: (index) {
            setState(() {
              if (home == index) {
                Navigator.pushReplacementNamed(context, AppRoutes.optionsRoute);
              } else {
                Navigator.pushReplacementNamed(context, AppRoutes.initialRoute);
              }
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile')
          ],
        ));
  }
}
