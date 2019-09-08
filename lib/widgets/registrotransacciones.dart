import 'package:flutter/material.dart';
class NuevaTransaccion extends StatelessWidget {
  final titleControler = TextEditingController();
  final amountControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    controller: titleControler,
                    /* onChanged: (val) {
                        titleInput = val;
                      }, */
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    controller: amountControler,
                    //onChanged: (val) => amountInput = val,
                  ),
                  FlatButton(
                    child: Text('Add Transaccion'),
                    onPressed: () {
                      print(titleControler.text);
                      print(amountControler.text);
                    },
                    textColor: Colors.purple,
                  )
                ],
              ),
            ),
          );
  }
}