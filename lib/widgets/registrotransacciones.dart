import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class NuevaTransaccion extends StatelessWidget {
  final titleControler = TextEditingController();
  final amountControler = TextEditingController();
  final Function nt;
  NuevaTransaccion(this.nt);
  void nuevatransaccion() {
    final enterTitle=titleControler.text;
    final enterAmount=double.parse(amountControler.text);
    if (enterTitle.isEmpty || enterAmount <=0){
      return;
    }
    nt(enterTitle,enterAmount);
  }
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
                    onSubmitted: (_)=> nuevatransaccion(),
                    /* onChanged: (val) {
                        titleInput = val;
                      }, */
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    controller: amountControler,
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    onSubmitted: (_)=> nuevatransaccion(),
                    //onChanged: (val) => amountInput = val,
                  ),
                  FlatButton(
                    child: Text('Add Transaccion'),
                    onPressed: nuevatransaccion,
                    textColor: Colors.purple,
                  )
                ],
              ),
            ),
          );
  }
}