import 'package:food_app/models/item_model.dart';

class Order
{
  final String? id;
  final List<Item>? selectedItems;
  final DateTime? orderDate;
  final double? totalPrice;

  Order({this.id, this.selectedItems, this.orderDate, this.totalPrice});




}