import 'package:cloud_firestore/cloud_firestore.dart';

class PaymentMethod
{
  final String? id;
  final String? methodType;
  final String? name;
  final String? cardNumber;
  final DateTime? expiryDate;
  final int? cvv;

  PaymentMethod({this.id, this.name, this.cardNumber, this.expiryDate, this.cvv, this.methodType});

  factory PaymentMethod.fromSnapshot(DocumentSnapshot snapshot)
  {
    return PaymentMethod(
      id: snapshot.id,
      methodType: snapshot.get("methodType"),
      name: snapshot.get("name"),
      cardNumber: snapshot.get("cardNumber"),
      expiryDate: DateTime.fromMillisecondsSinceEpoch(snapshot.get("expiryDate")),
      cvv: snapshot.get("cvv"),
    );
  }


  toSnapshot()
  {
    return {
      "methodType" : methodType,
      "name" : name,
      "cardNumber" : cardNumber,
      "expiryDate" : expiryDate!.microsecondsSinceEpoch,
      "cvv" : cvv,
    };
  }
}