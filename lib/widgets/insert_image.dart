import 'dart:io';
import 'package:flutter/material.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:image_picker/image_picker.dart';

class InsertPhoto extends StatefulWidget {
  final Function(File) onSelect;
  const InsertPhoto({Key? key, required this.onSelect}) : super(key: key);

  @override
  State<InsertPhoto> createState() => _InsertPhotoState();
}

class _InsertPhotoState extends State<InsertPhoto> {
  File? _image;

  ImageProvider<Object> showImage()
  {
    if(_image != null)
    {
      return FileImage(_image!);
    }
    else
    {
      return const AssetImage("assets/images/placeholder-image.png");
    }
  }

  @override
  Widget build(BuildContext context) {
    return
      Stack(
          children: [
            Container(
                height: 200,
                width: double.maxFinite,
                decoration:  BoxDecoration(
                  image: DecorationImage(
                      image: showImage(),fit: BoxFit.fill),
                  borderRadius:  const BorderRadius.all(Radius.circular(20.0)),
                ),
                child: const Text('')
            ),
            Positioned(
              bottom: 15,
              right: 15,
              child: GestureDetector(
                onTap: () async {
                  ImagePicker picker = ImagePicker();
                  var file = await picker.pickImage(source: ImageSource.gallery);
                  if(file != null)
                  {
                    File x = File(file.path);
                    _image = x;
                    if(_image != null)
                    {
                      widget.onSelect(_image!);
                    }
                    setState(() {

                    });
                  }
                },
                child: const CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColors.primaryColor,
                  child: Icon(Icons.camera_alt_outlined,color: Colors.white,),
                ),
              ),
            ),
          ]
      );


  }
}