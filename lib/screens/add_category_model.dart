import 'package:flutter/material.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/widgets/input_field.dart';
import 'package:provider/provider.dart';
import '../viewModels/category_viewModel.dart';
import '../widgets/button.dart';
import '../widgets/insert_image.dart';

class AddCategory extends StatelessWidget {
  const AddCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CategoryViewModel vm = context.read<CategoryViewModel>();
    return Scaffold(

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            InputFiled(
              controller: vm.nameController,
              labelText: "category",
              preIcon: const Icon(Icons.category_sharp),

            ),
            InsertPhoto(
              onSelect: (val) {
                vm.image = val;
              },
            ),
            const SizedBox(height: 15,),
            vm.uploading == true? const Center(child: CircularProgressIndicator()):
            CustomButton(
              title: 'Save',
              onPressed: (){
                if(vm.update)
                  {
                    vm.updateData(context);
                  }
                else
                  {
                    vm.saveData(context);
                  }
              },
              backgroundColor: AppColors.primaryColor,
              textColor: AppColors.textColor,
            )
          ],
        ),
      ),
    );
  }
}
