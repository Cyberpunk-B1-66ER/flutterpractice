import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/transaccion.dart';
import 'package:intl/intl.dart';
class ListaTransacciones extends StatelessWidget {
  final List<Transaccion> transa = [
    Transaccion(
      id: 't1',
      title: 'cokies',
      amount: 3.71,
      date: DateTime.now(),
    ),
    Transaccion(
      id: 't2',
      title: 'cokies',
      amount: 3.71,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return  Column(          
            children: transa.map((tx) {
              return Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.purple,
                      width: 2,
                    )),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '\$ ${tx.amount}',
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[                      
                      Text(
                        tx.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        DateFormat('EEE,M/d/yy H:m').format(tx.date) ,
                        style: TextStyle(color: Colors.grey),
                      ),                      
                    ],
                  )
                ],
              );
            }).toList(),
          );
  }
}