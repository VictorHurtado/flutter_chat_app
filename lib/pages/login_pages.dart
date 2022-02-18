import 'package:chat_app/routes/routes.dart';
import 'package:chat_app/widgets/custom_input_widget.dart';
import 'package:chat_app/widgets/elevation_button_primary.dart';
import 'package:chat_app/widgets/labels_login.dart';
import 'package:chat_app/widgets/logo.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xffF2f2f2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SizedBox(
              height: size.height * .9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const LogoWidget(
                    title: "Messenger",
                  ),
                  _Form(),
                  Labels(
                    question: "¿No tienes cuenta?",
                    solution: "Crea una ahora",
                    routeName: CARoutes.Register.routeName,
                  ),
                  const Text(
                    "Terminos y condiciones de uso",
                    style: TextStyle(fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          CustomInputWidget(
            icon: Icons.mail_outline,
            placeholder: "Correo Electronico",
            keyboardType: TextInputType.emailAddress,
            editingController: emailCtrl,
          ),
          CustomInputWidget(
            icon: Icons.password_outlined,
            placeholder: "Contraseña",
            isPassword: true,
            editingController: passwordCtrl,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevationPrimaryButton(
              title: "Ingresar",
              onPressed: () {
                print(passwordCtrl.text);
                print(emailCtrl.text);
              })
        ],
      ),
    );
  }
}
