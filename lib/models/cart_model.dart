
import 'item_model.dart';

class Cart
{
  final double? totalBill;
  final double? subTotalBill;
  final List<Item>? items;
  final double? totalTax;
  final double? deliveryCharges;

  Cart({this.totalBill, this.items, this.totalTax, this.deliveryCharges, this.subTotalBill});
}