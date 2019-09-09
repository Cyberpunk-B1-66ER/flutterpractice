import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaccion.dart';

class ListaTransaccion extends StatelessWidget {
  final List<Transaccion> transax;
  ListaTransaccion(this.transax);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,      
        child: ListView.builder(
          itemBuilder: (ctx,index){
            return Card(
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.purple)),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '\$' + transax[index].amount.toStringAsFixed(2),
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
                        transax[index].title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(DateFormat('EEE,d/M/yy H:m').format(transax[index].date)),
                    ],
                  )
                ],
              ),
            );
          },
          itemCount: transax.length,          
        ),      
    );
  }
}
