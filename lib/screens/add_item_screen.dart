
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/app_colors.dart';
import '../viewModels/item_viewModel.dart';
import '../widgets/button.dart';
import '../widgets/input_field.dart';
import '../widgets/insert_image.dart';

class AddItem extends StatelessWidget {
  const AddItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ItemViewModel vm = context.read<ItemViewModel>();
    return Scaffold(

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            InputFiled(
              controller: vm.nameController,
              labelText: "Item",
              preIcon: const Icon(Icons.food_bank_outlined),
            ),
            InputFiled(
              controller: vm.categoryController,
              labelText: "Item",
              preIcon: const Icon(Icons.food_bank_outlined),
            ),
            InputFiled(
              controller: vm.descriptionController ,
              labelText: "Item",
              preIcon: const Icon(Icons.food_bank_outlined),
            ),
            InputFiled(
              controller: vm.recipeController,
              labelText: "Item",
              preIcon: const Icon(Icons.food_bank_outlined),
            ),
            InputFiled(
              controller: vm.restaurantIdController,
              labelText: "Item",
              preIcon: const Icon(Icons.food_bank_outlined),
            ),
            InputFiled(
              controller: vm.quantityController,
              hintText: '',
            ),
            InputFiled(
              controller: vm.previousPriceController,
              hintText: '',
            ),
            InputFiled(
              controller: vm.currentPriceController,
              hintText: '',
            ),
            InputFiled(
              controller: vm.subTotalController,
              hintText: '',
            ),
            InsertPhoto(
              onSelect: (val) {

              },
            ),

            CustomButton(
              title: 'Save',
              onPressed: (){},
              backgroundColor: AppColors.primaryColor,
              textColor: AppColors.textColor,
            )
          ],
        ),
      ),
    );
  }
}
