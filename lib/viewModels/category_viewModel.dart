
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:food_app/services/firebase_service.dart';
import 'package:food_app/utils/common_functions.dart';

import '../models/category_model.dart';

class CategoryViewModel extends ChangeNotifier
{

  TextEditingController nameController = TextEditingController();
  File? _image;
  String _imageUrl = "";
  bool uploading = false;
  bool update = false;

  File? get image => _image;

  set image (File? val)
  {
    _image = val;
    notifyListeners();
  }
  _uploadImage(BuildContext context) async
  {
    uploading = true;
    notifyListeners();
    if(_image != null)
      {
        _imageUrl = (await FirebaseService.uploadFile(context: context, file: _image!))!;
      }
  }



  saveData(BuildContext context)
  async {
    if(_validate(context))
      {
        await  _uploadImage(context);
        var category = ItemCategory(
            name: nameController.text.trim(),
            imageUrl: _imageUrl
        );
        Future.delayed(const Duration(seconds: 5), (){
          FirebaseService.add(collection: 'Categories', doc: category.toSnapshot());
          CommonFunctions.showSnackBar(context: context, message: "Saved successfully");
        });
        uploading = false;
        notifyListeners();

      }
  }

  void updateData(BuildContext context) {

  }

  _validate (BuildContext context)
  {
    bool check = true;
    if(nameController.text.toString().isEmpty)
      {
        check = false;
        CommonFunctions.showSnackBar(context: context, message: "Please Enter Category name");
      }
    else if (_image == null)
      {
        check = false;
        CommonFunctions.showSnackBar(context: context, message: "Please Select Image");
      }
    return check;
  }
}