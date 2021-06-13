import 'package:flutter/material.dart';
import 'pages/first_pages.dart';
import 'pages/second_pages.dart';
import 'pages/third_pages.dart';
import 'pages/cuarto.dart';
import 'pages/quinto.dart';

void main() => runApp(balbuenaApp());

class balbuenaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bryan',
      home: PaginaInicio(),
    ); //Fin Material App
  } //Fin Widget
} //Fin de balbuenaApp

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
} //Fin Clase Pagina Inicio

class _PaginaInicioState extends State<PaginaInicio> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //Variable size
    Widget child; //Widget creado por usuario
    switch (_index) {
      case 0:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new FirstPage());
        break;
      case 1:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new SecondPage());
        break;
      case 2:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ThirdPage());
        break;
      case 3:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new CuartaPage());
        break;
      case 4:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new QuintaPage());
        break;    
    } //Fin Switch Selecciona Paginas
    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.red, onTap: (newIndex) => setState(() => _index = newIndex), currentIndex: _index, items: [
        
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blueAccent, size: 30.0), //icon
            title: Text('Inicio', style: TextStyle(color: Colors.black),)), 
        BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.blueAccent, size: 30.0), //icon
            title: Text('Sesion', style: TextStyle(color: Colors.black),)), 
        BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_outlined, color: Colors.blueAccent, size: 30.0), //icon
            title: Text('Noticias', style: TextStyle(color: Colors.black),)),
        BottomNavigationBarItem(
            icon: Icon(Icons.location_pin, color: Colors.blueAccent, size: 30.0), //icon
            title: Text('Ubicacion', style: TextStyle(color: Colors.black),)),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_alert, color: Colors.blueAccent, size: 30.0), //icon
            title: Text('Reos', style: TextStyle(color: Colors.black),)),            
      ]), // bottom
    ); //Fin Scaffold
  } //Fin Widget
} //Fin Pagina Inicio
