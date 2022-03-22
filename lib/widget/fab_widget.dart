import 'package:animations/animations.dart';
import 'package:finding_a_tour/screens/registerserv.dart';
import 'package:flutter/material.dart';

const double fabzise = 56;

class fabwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => OpenContainer(
        transitionDuration: const Duration(milliseconds: 700),
        openBuilder: (context, _) => const RegisterServ(),
        closedShape: CircleBorder(),
        closedBuilder: (context, openContainer) => Container(
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color.fromARGB(255, 81, 204, 177)),
          height: fabzise,
          width: fabzise,
          child:
              const Icon(Icons.add, color: Color.fromARGB(255, 255, 255, 255)),
        ),
      );
}

class fabwidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => OpenContainer(
        transitionDuration: const Duration(milliseconds: 700),
        openBuilder: (context, _) => const RegisterServ(),
        closedShape: CircleBorder(),
        closedBuilder: (context, openContainer) => Container(
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color.fromARGB(255, 81, 204, 177)),
          height: fabzise,
          width: fabzise,
          child: const Icon(Icons.check,
              color: Color.fromARGB(255, 255, 255, 255)),
        ),
      );
}
