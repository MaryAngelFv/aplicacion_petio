import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
  const Registro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[BackGroundRegistro(), CuerpoRegistro()]),
    );
  }
}

class BackGroundRegistro extends StatelessWidget {
  const BackGroundRegistro({Key? key}) : super(key: key);

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
                color: Color(0xFFF1B871),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100.0),
                    bottomRight: Radius.circular(100.0))),
          )),
      TituloText()
    ]));
  }
}

class CuerpoRegistro extends StatelessWidget {
  const CuerpoRegistro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
            child: Stack(
      children: <Widget>[
        Formulario(), AnimalesRegistroImage(),
        BotonesRegistro() //AnimalesRegistroImage()
      ],
    )));
  }
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

Widget Formulario() {
  return Container(
    margin: EdgeInsets.only(top: 224.0, left: 20.0, right: 20.0),
    height: 330.0,
    width: 371.0,
    decoration: BoxDecoration(
        color: Color(0xFF3E567C),
        borderRadius: BorderRadius.all(Radius.circular(15.0))),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[NombreText(), NombreTextField()],
        ),
        Row(
          children: <Widget>[
            CorreoRegistrateText(),
            CorreoRegistrateTextField()
          ],
        ),
        Row(
          children: <Widget>[
            ContrasenaRegistroText(),
            ContrasenaRegistroTextField()
          ],
        ),
        Row(
          children: <Widget>[
            VerificaContrasenaRegistroText(),
            VerificaContrasenaRegistroTextField()
          ],
        )
      ],
    ),
  );
}

Widget BotonesRegistro() {
  return Center(
      child: Container(
          margin: EdgeInsets.only(top: 570.0),
          height: 90.0,
          width: 200.0,
          child: Column(
            children: <Widget>[RegistroButton(), RegistradoButton()],
          )));
}

Widget AnimalesRegistroImage() {
  return Container(
    height: 198.0,
    margin: EdgeInsets.only(top: 82.0),
    child: Center(
      child: Image(
          image: AssetImage("assets/Imagenes/animalesRegistro.png"),
          width: 379.0,
          height: 198.0),
    ),
  );
}

Widget NombreText() {
  return Container(
      margin: EdgeInsets.only(top: 65.0, left: 30.0),
      child: Text(
        "NOMBRE",
        style: TextStyle(
          fontFamily: "BebasNeue",
          fontSize: 25.0,
          fontStyle: FontStyle.normal,
          color: Color(0xFFFFFFFF),
        ),
        textAlign: TextAlign.left,
      ));
}

Widget NombreTextField() {
  return Container(
    width: 200.0,
    height: 38.0,
    margin: const EdgeInsets.only(top: 65.0, left: 50.0),
    child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFFFFFFF),
            hintText: "",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)))),
  );
}

Widget CorreoRegistrateText() {
  return Container(
      margin: EdgeInsets.only(top: 20.0, left: 30.0),
      child: Text(
        "CORREO",
        style: TextStyle(
          fontFamily: "BebasNeue",
          fontSize: 25.0,
          fontStyle: FontStyle.normal,
          color: Color(0xFFFFFFFF),
        ),
        textAlign: TextAlign.left,
      ));
}

Widget CorreoRegistrateTextField() {
  return Container(
    width: 200.0,
    height: 38.0,
    margin: const EdgeInsets.only(top: 20.0, left: 55.0),
    child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFFFFFFF),
            hintText: "",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)))),
  );
}

Widget ContrasenaRegistroText() {
  return Container(
      margin: EdgeInsets.only(top: 20.0, left: 30.0),
      child: Text(
        "CONTRASEÑA",
        style: TextStyle(
          fontFamily: "BebasNeue",
          fontSize: 25.0,
          fontStyle: FontStyle.normal,
          color: Color(0xFFFFFFFF),
        ),
        textAlign: TextAlign.left,
      ));
}

Widget ContrasenaRegistroTextField() {
  return Container(
    width: 200.0,
    height: 38.0,
    margin: const EdgeInsets.only(top: 20.0, left: 15.0),
    child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFFFFFFF),
            hintText: "",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)))),
  );
}

Widget VerificaContrasenaRegistroText() {
  return Container(
      width: 99.0,
      margin: EdgeInsets.only(top: 20.0, left: 30.0),
      child: Text(
        "VERIFICA TU CONTRASEÑA",
        maxLines: 2,
        style: TextStyle(
          fontFamily: "BebasNeue",
          fontSize: 25.0,
          fontStyle: FontStyle.normal,
          color: Color(0xFFFFFFFF),
        ),
        textAlign: TextAlign.left,
      ));
}

Widget VerificaContrasenaRegistroTextField() {
  return Container(
    width: 200.0,
    height: 38.0,
    margin: const EdgeInsets.only(top: 20.0, left: 15.0),
    child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFFFFFFF),
            hintText: "",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)))),
  );
}

Widget RegistroButton() {
  return MaterialButton(
      color: Color(0xFF3E567C),
      minWidth: 200.0,
      height: 50.0,
      shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(5.0)), //BorderRadius.circular(5.0),
      child: const Text('REGISTRATE',
          style: TextStyle(
              fontFamily: "BebasNeue",
              color: Color(0xFFFFFFFF),
              fontSize: 27.0,
              fontWeight: FontWeight.bold)),
      onPressed: () {
        print('Botón funcionando');
      });
}

Widget RegistradoButton() {
  return SizedBox(
      height: 35,
      child: TextButton(
        child: Text('Ya estoy registrado',
            style: TextStyle(color: Color(0xFF3B3B3B), fontSize: 15.0)),
        onPressed: () {
          print('Botón funcionando');
        },
      ));
}
