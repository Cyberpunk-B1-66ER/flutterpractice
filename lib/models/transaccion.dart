import 'package:flutter/foundation.dart';

class Transaccion {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  Transaccion(
      {@required this.id,
      @required this.title,
      @required this.amount,
      @required this.date, 
      }
  );
}
