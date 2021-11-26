import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  const BackGround({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Login(),
        Positioned(
            top: 0.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 300.0,
              decoration: const BoxDecoration(
                  color: Color(0xFFF2884C),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100.0),
                      bottomRight: Radius.circular(100.0))),
            )),
        Positioned(top: 15.0, child: Titulo()),
        Positioned(top: 40.0, child: Texto()),
        Positioned(top: 120.0, child: GatoLogin()),
      ],
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          physics: ClampingScrollPhysics(), child: Cuerpo()),
    );
  }
}

Widget Cuerpo() {
  return Container(
    child: Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[TextoCorreo(), TextFieldCorreo()],
        ),
        Row(
          children: <Widget>[TextoContrasena(), TextFieldContrasena()],
        ),
        SizedBox(height: 20.0),
        BotonInicio(),
        TextRecuperarContrasena(),
        TextRegistrate()
      ],
    ),
  );
}

Widget TextoCorreo() {
  return Container(
    margin: const EdgeInsets.only(top: 420.0, left: 30.0, right: 40.0),
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

Widget TextFieldCorreo() {
  return Container(
    width: 200.0,
    height: 38.0,
    margin: const EdgeInsets.only(top: 420.0, left: 23.0),
    child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFe5e5e5),
            hintText: "",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)))),
  );
}

Widget TextoContrasena() {
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

Widget TextFieldContrasena() {
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

Widget BotonInicio() {
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

Widget TextRecuperarContrasena() {
  return TextButton(
      child: Text(
        '¿Ovidaste tu contraseña?',
        style: TextStyle(color: Color(0xFF3B3B3B)),
      ),
      onPressed: () {
        print('Botón funcionando');
      });
}

Widget TextRegistrate() {
  return TextButton(
      child: Text('Resgistrate', style: TextStyle(color: Color(0xFF3B3B3B))),
      onPressed: () {
        print('Botón funcionando');
      });
}

Widget GatoLogin() {
  return Center(
    child: Image(
      image: AssetImage("assets/Imagenes/gatoLogin.png"),
      width: 268.0,
      height: 301.0,
      alignment: Alignment.center,
    ),
  );
}

Widget Titulo() {
  return Container(
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

Widget Texto() {
  return Container(
    margin: EdgeInsets.only(top: 45.0),
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
