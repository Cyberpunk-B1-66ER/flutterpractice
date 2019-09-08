import 'package:flutter/material.dart';
import './listadetransacciones.dart';
import './registrotransacciones.dart';
import '../models/transaccion.dart';

class UsertTransaccion extends StatefulWidget {
  @override
  _UsertTransaccionState createState() => _UsertTransaccionState();
}

class _UsertTransaccionState extends State<UsertTransaccion> {
  List<Transaccion> transax = [
    Transaccion(
      id: 't1',
      title: 'gasto1',
      amount: 3.5,
      date: DateTime.now(),
    ),
    Transaccion(
      id: 't2',
      title: 'gasto2',
      amount: 6.25,
      date: DateTime.now(),
    )
  ];
  void _addNuevaTransaccion(String title, double amount) {
    final ntx = Transaccion(
        title: title,
        amount: amount,
        id: DateTime.now().toString(),
        date: DateTime.now());
        setState(() {
          transax.add(ntx);
        });
  }


  @override
  Widget build(BuildContext context) {
     return Column(
      children: <Widget>[
        NuevaTransaccion(_addNuevaTransaccion),
        ListaTransaccion(
          transax,
        ),
      ],
    );
  }
}
/* import 'package:flutter/material.dart';
import './listadetransacciones.dart';
import './registrotransacciones.dart';
import '../models/transaccion.dart';

class UserTransaccion extends StatefulWidget {
  @override
  _UserTransaccionState createState() => _UserTransaccionState();
}

class _UserTransaccionState extends State<UserTransaccion> {
  List<Transaccion> transax = [
    Transaccion(
      id: 't1',
      title: 'gasto1',
      amount: 3.5,
      date: DateTime.now(),
    ),
    Transaccion(
      id: 't2',
      title: 'gasto2',
      amount: 6.25,
      date: DateTime.now(),
    )
  ];
  void _addNuevaTransaccion(String txtitle, double txamount) {
    final newTx = Transaccion(
        title: txtitle,
        amount: txamount,
        id: DateTime.now().toString(),
        date: DateTime.now());
  setState(() {
   transax.add(newTx); 
  });
  }
 
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NuevaTransaccion(_addNuevaTransaccion),
        ListaTransaccion(
          transax,
        ),
      ],
    );
  }
}
 */
