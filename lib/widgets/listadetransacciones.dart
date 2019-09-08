import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaccion.dart';
class ListaTransaccion extends StatelessWidget{  
  final List<Transaccion> transax;
  ListaTransaccion(this.transax);
  @override
  Widget build(BuildContext context) {
    return Column(
            children: transax.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.purple)),
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(DateFormat('EEE,d/M/yy H:m').format(tx.date)),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          );
  }
}