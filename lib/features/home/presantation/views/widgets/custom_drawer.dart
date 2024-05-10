import 'package:bookly_app/features/home/presantation/views/widgets/custom_list_item.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          DrawerHeader(
            child: Text(
              'Books info',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            child: CustomListItem(),
          ),
        ],
      ),
    );
  }
}
