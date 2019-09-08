import 'package:flutter/material.dart';
import './models/transaccion.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAppHome(),
    );
  }
}

class MyAppHome extends StatelessWidget {
  final List<Transaccion> transa = [
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
  String titleInput;
  String amountInput;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Money Penny Practice1'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('CHART!'),
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      onChanged: (val) {
                        titleInput = val;
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Amount'),
                      onChanged: (val) => amountInput = val,
                    ),
                    FlatButton(
                      child: Text('Add Transaccion'),
                      onPressed: () {
                        print (titleInput);
                        print (amountInput);
                      },
                      textColor: Colors.purple,
                    )
                  ],
                ),
              ),
            ),
            Column(
                children: transa.map((tx) {
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
            }).toList()),
          ],
        ));
  }
}
