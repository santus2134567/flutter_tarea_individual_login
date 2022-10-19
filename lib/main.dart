import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //Color de el fondo de pantalla backgroundColor
        backgroundColor: Color.fromARGB(255, 241, 239, 239),
        //Sirve para alinear a lo que pondremos en forma vertical
        body: Column(
          //Nos dice que las columnas esten en alineadas en el centro y uno seguido del otro
          mainAxisAlignment: MainAxisAlignment.center,
          //utilizamos children para darle propiedades unicas a lo que agregamos ya sea texto o imagen
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage("assets/images/ejemplo_2.jpg"),
            ),
            //Sisebox para poner altura(height) solo para el codigo que esta encima de ellos
            //En este caso el SizedBox da altura entre la imagen y el Card
            SizedBox(
              height: 90.0,
            ),
            //Sirve para dividir por un pequeño espacio
            Divider(
              thickness: 0.70,
              color: Colors.white38,
              indent: 20.0,
              endIndent: 85.0,
            ),

            //Sirve para poner texto o iconos entre recuadros rectangulos

            Card(
              color: Color.fromARGB(255, 242, 254, 253),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              child: ListTile(
                title: Text("Email Address"),
                subtitle: Text("Username@gmail.com"),
                leading: Icon(Icons.mail),
              ),
            ),
            //Separa la carta de la otra
            SizedBox(
              width: 50.0,
            ),

            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              child: ListTile(
                //Texto que esta encima y es titulo
                title: Text("Password"),
                //Texto que esta debajo y es subtitulo
                subtitle: Text("*********"),
                //Significa que este icono va al comienzo de las letras o lo demas
                leading: Icon(
                  Icons.lock,
                ),
                trailing: Icon(Icons.remove_red_eye),
              ),
            ),
            SizedBox(
              width: 50.0,
            ),
            Card(
              color: Color.fromARGB(255, 2, 42, 74),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                      //Tamaño Letra
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
            ),

            Row(
              children: [
                SizedBox(
                  width: 30.0,
                ),
                Flexible(child: Text("Signup")),
                SizedBox(
                  width: 155.0,
                ),
                Flexible(
                  child: Text("Forgot Password?"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
