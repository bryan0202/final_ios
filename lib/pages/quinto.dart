import 'package:flutter/material.dart';

class QuintaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REOS'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _crearContacto(context),
            _crearContacto(context),
            _crearContacto(context),
            _crearContacto(context),
            _crearContacto(context),
            _crearContacto(context)
          ],
        ),
      ),
    );
  }

  Widget _crearContacto(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 70,
          width: 70,
          child: CircleAvatar(
            child: Text(
              'REOS',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              Text(
                'Ver mas detalles',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(
                height: 5,
              ),
              Text('Casos', style: Theme.of(context).textTheme.subtitle2)
            ],
          ),
        )
      ],
    );
  }
}