import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel
{
  final String? id;
  final String? phoneNumber;
  final GeoPoint? currentLocation;
  final String? paymentMethod;
  final String? cardNumber;
  final String? name;
  final String? imageUrl;


  UserModel({this.id, this.phoneNumber, this.currentLocation, this.paymentMethod, this.cardNumber, this.name, this.imageUrl});

  factory UserModel.fromSnapshot(DocumentSnapshot snapshot)
  {
    return UserModel(
      id: snapshot.id,
      phoneNumber: snapshot.get("phoneNumber"),
      currentLocation: snapshot.get("currentLocation"),
      paymentMethod: snapshot.get("paymentMethod"),
      cardNumber: snapshot.get("cardNumber"),
      name: snapshot.get("name"),
      imageUrl: snapshot.get("imageUrl"),
    );
  }

  toSnapshot()
  {
    return
        {
          "phoneNumber" : phoneNumber,
          "currentLocation" : currentLocation,
          "paymentMethod" : paymentMethod,
          "cardNumber" : cardNumber,
          "name" : name,
          "imageUrl" : imageUrl,
        };
  }
}