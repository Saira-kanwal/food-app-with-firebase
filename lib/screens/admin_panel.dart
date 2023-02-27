import 'package:flutter/material.dart';
import 'package:food_app/screens/add_category_model.dart';
import 'package:food_app/screens/add_item_screen.dart';
import 'package:food_app/utils/app_colors.dart';

class AdminPanel extends StatefulWidget {
  const AdminPanel({Key? key}) : super(key: key);

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  int selectedIndex = 0;

  List pages = const [
    AddCategory(),
    AddItem(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text("Admin Panel"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,

              ),
              child: Center(
                child: Text('Admin Panel',
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text('Add Category'),
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddCategory()));
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Add Item'),
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddItem()));
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Users'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: pages[selectedIndex],
    );
  }
}
