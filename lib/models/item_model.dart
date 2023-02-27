import 'package:cloud_firestore/cloud_firestore.dart';

class Item
{
  final String? id;
  final String? name;
  final String? category;
  final String? description;
  final String? restaurantId;
  final double? currentPrice;
  final double? previousPrice;
  final String? imageUrl;
  final String? recipe;
  final String? quantity;
  final double? subTotal;


  Item({this.id, this.name, this.category, this.description, this.restaurantId, this.currentPrice, this.previousPrice, this.imageUrl, this.recipe, this.subTotal, this.quantity});

  factory Item.fromSnapshot(DocumentSnapshot snapshot)
  {
    return Item(
      id: snapshot.id,
      name: snapshot.get("name"),
      category: snapshot.get("category"),
      description: snapshot.get("description"),
      restaurantId: snapshot.get("restaurantId"),
      currentPrice: snapshot.get("currentPrice"),
      previousPrice: snapshot.get("previousPrice"),
      imageUrl: snapshot.get("imageUrl"),
      recipe: snapshot.get("recipe"),
      subTotal: snapshot.get("subTotal"),
      quantity: snapshot.get("quantity"),
    );
  }


  toSnapshot()
  {
    return {
      "name" : name,
      "category" : category,
      "description" : description,
      "restaurantId" : restaurantId,
      "currentPrice" : currentPrice,
      "previousPrice" : previousPrice,
      "imageUrl" : imageUrl,
      "recipe" : recipe,
      "subTotal" : subTotal,
      "quantity" : quantity,
    };
  }
}