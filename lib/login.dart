import 'package:flutter/material.dart';

class BackGroundLogin extends StatelessWidget {
  const BackGroundLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
          margin: EdgeInsets.only(top: 0.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 300.0,
            decoration: const BoxDecoration(
                color: Color(0xFFF2884C),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100.0),
                    bottomRight: Radius.circular(100.0))),
          )),
      TituloText(),
      DescripcionText(),
      GatoLoginImage()
    ]));
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[BackGroundLogin(), Cuerpo()],
    ));
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
            child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          children: <Widget>[CorreoText(), CorreoTextField()],
        ),
        Row(
          children: <Widget>[ContrasenaText(), ContrasenaTextField()],
        ),
        SizedBox(height: 20.0),
        InicioButton(),
        RecuperarContrasenaButton(),
        RegistrateButton()
      ],
    )));
  }
}

Widget CorreoText() {
  return Container(
    margin: const EdgeInsets.only(top: 400.0, left: 30.0, right: 40.0),
    child: const Text(
      "CORREO",
      style: TextStyle(
        fontFamily: "BebasNeue",
        fontSize: 25.0,
        fontStyle: FontStyle.normal,
        color: Color(0xFF3B3B3B),
      ),
      textAlign: TextAlign.left,
    ),
  );
}

Widget CorreoTextField() {
  return Container(
    width: 200.0,
    height: 38.0,
    margin: const EdgeInsets.only(top: 400.0, left: 23.0),
    child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFe5e5e5),
            hintText: "",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)))),
  );
}

Widget ContrasenaText() {
  return Container(
    margin: const EdgeInsets.only(top: 25.0, left: 30.0, right: 8.0),
    child: const Text(
      "CONTRASEÑA",
      style: TextStyle(
        fontFamily: "BebasNeue",
        fontSize: 25.0,
        fontStyle: FontStyle.normal,
        color: Color(0xFF3B3B3B),
      ),
      textAlign: TextAlign.left,
    ),
  );
}

Widget ContrasenaTextField() {
  return Container(
    width: 200.0,
    height: 38.0,
    margin: const EdgeInsets.only(top: 25.0, left: 15.0),
    child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFe5e5e5),
            hintText: "",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)))),
  );
}

Widget InicioButton() {
  return MaterialButton(
      color: Color(0xFF3E567C),
      minWidth: 200.0,
      height: 50.0,
      shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(5.0)), //BorderRadius.circular(5.0),
      child: const Text('INICIAR SESIÓN',
          style: TextStyle(
              fontFamily: "BebasNeue",
              color: Color(0xFFFFFFFF),
              fontSize: 27.0,
              fontWeight: FontWeight.bold)),
      onPressed: () {
        print('Botón funcionando');
      });
}

Widget RecuperarContrasenaButton() {
  return SizedBox(
      height: 35,
      child: TextButton(
        child: Text(
          '¿Ovidaste tu contraseña?',
          style: TextStyle(color: Color(0xFF3B3B3B), fontSize: 15.0),
        ),
        onPressed: () {
          print('Botón funcionando');
        },
      ));
}

Widget RegistrateButton() {
  return SizedBox(
      height: 35,
      child: TextButton(
        child: Text('Resgistrate',
            style: TextStyle(color: Color(0xFF3B3B3B), fontSize: 15.0)),
        onPressed: () {
          print('Botón funcionando');
        },
      ));
}

Widget GatoLoginImage() {
  return Container(
    height: 300.0,
    margin: EdgeInsets.only(top: 100.0),
    child: Center(
      child: Image(
          image: AssetImage("assets/Imagenes/gatoLogin.png"),
          width: 268.0,
          height: 301.0),
    ),
  );
}

Widget TituloText() {
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    alignment: Alignment.topCenter,
    child: const Text(
      "Petio",
      style: TextStyle(
          fontFamily: "Kaushan",
          fontSize: 55.0,
          fontStyle: FontStyle.normal,
          color: Colors.white),
      textAlign: TextAlign.center,
    ),
  );
}

Widget DescripcionText() {
  return Container(
    margin: EdgeInsets.only(top: 80.0),
    alignment: Alignment.topCenter,
    child: const Text(
      "Una mascota para tu hogar",
      style: TextStyle(
          fontFamily: "BebasNeue",
          fontSize: 25.0,
          fontStyle: FontStyle.normal,
          color: Colors.white),
      textAlign: TextAlign.center,
    ),
  );
}
