import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: <Widget>[
              _crearCard1(),
              _crearCard2(),
              _crearCard3()
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearCard1() {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text(
              'Cereso',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Si eres oficial de policia aqui puedes encontrar informacion')
          ],
        ),
      ),
    );
  }

  Widget _crearCard2() {
    return Card(
      elevation: 5,
      color: Colors.blueAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text(
              'INFORMACION DE REOS Y SUS ACTIVIDADES',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Horarios de desayuno y de actividades que los ayudan a integrarse con la sociedad',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearCard3() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              child: FadeInImage(
                placeholder: AssetImage('assets/loading.gif'),
                image: NetworkImage('https://raw.githubusercontent.com/ashleybalbuenaperez/Mis_Imagenes/main/123.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('VISITANOS'),
            )
          ],
        ),
      ),
    );
  }
}