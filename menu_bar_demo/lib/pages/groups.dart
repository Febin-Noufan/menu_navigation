import 'package:flutter/material.dart';
import 'package:menu_navigation/menu_navigation.dart';

class Groups extends StatefulWidget {
  const Groups({super.key});

  @override
  State<Groups> createState() => _AccountPageState();
}

class _AccountPageState extends State<Groups> {
  final List<MenuSection> accountMenuData = [
    MenuSection(
      title: "Single group",
      items: [
        MenuItem(
          shortcut: 'C',
          label: 'Create',
        ),
        MenuItem(
          shortcut: 'D',
          label: 'Despaly',
        ),
        MenuItem(
          shortcut: 'A',
          label: 'Alter',
        ),
      ],
    ),
    MenuSection(
      title: "Multiple group",
      items: [
        MenuItem(
          shortcut: 'R',
          label: 'create',
        ),
        MenuItem(
          shortcut: 'E',
          label: 'Desplay',
        ),
        MenuItem(
          shortcut: 'L',
          label: 'Alter',
        ),
      ],
    ),
    MenuSection(
      title: "  ",
      items: [
        MenuItem(
          shortcut: 'Q',
          label: 'Back to Home',
        ),
      ],
    ),
  ];

  void handleMenuSelection(MenuItem menuItem) {
    if (menuItem.label == 'Back to Home') {
      Navigator.pop(context);
    }
    // Handle other menu selections
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Groups'),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.white,
              child: const Center(
                child: Text(
                  'Groups',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: DynamicMenu(
              title: "Groups",
              menuData: accountMenuData,
              onMenuItemSelected: handleMenuSelection,
            ),
          ),
        ],
      ),
    );
  }
}
