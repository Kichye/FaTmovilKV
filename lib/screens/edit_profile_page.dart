import 'package:finding_a_tour/widget/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:finding_a_tour/models/user.dart';
import 'package:finding_a_tour/utils/user_preferences.dart';
import 'package:finding_a_tour/widget/profile_widget.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(22))),
          /* automaticallyImplyLeading: false, */
          title: const Text('Editar'),
          centerTitle: true,
          titleTextStyle: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontFamily: 'SFPRODISPLAY'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 24),
            ProfileWidget(
              imagePath: user.imagePath,
              isEdit: true,
              onClicked: () async {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Nombre Completo',
              text: user.name,
              onChanged: (name) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Número',
              text: user.number,
              onChanged: (number) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Dirección',
              text: user.adress,
              maxLines: 5,
              onChanged: (about) {},
            ),
            TextFieldWidget(
              label: 'Horarios',
              text: user.horarios,
              maxLines: 5,
              onChanged: (about) {},
            ),
          ],
        ),
      );
}
