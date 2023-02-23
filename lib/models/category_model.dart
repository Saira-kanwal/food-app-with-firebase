import 'package:cloud_firestore/cloud_firestore.dart';

class ItemCategory
{
  final String? id;
  final String? name;
  final String? imageUrl;

  ItemCategory({this.id, this.name, this.imageUrl});

  factory ItemCategory.fromSnapshot(DocumentSnapshot snapshot)
  {
    return ItemCategory(
      id: snapshot.id,
      name: snapshot.get("name"),
      imageUrl: snapshot.get("imageUrl"),
    );
  }


  toSnapshot()
  {
    return {
      "name" : name,
      "imageUrl" : imageUrl
    };
  }
}