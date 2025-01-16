import 'package:flutter/material.dart';
import 'package:menu_navigation/menu_navigation.dart';

class InventryPage extends StatefulWidget {
  const InventryPage({super.key});

  @override
  State<InventryPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<InventryPage> {
  final List<MenuSection> accountMenuData = [
    MenuSection(
      title: "Inventry Info",
      items: [
        MenuItem(
          shortcut: 'G',
          label: 'Stock Groups',
          subMenu: [
            MenuSection(title: "", items: [
              MenuItem(
                shortcut: '1',
                label: 'Create Group',
              ),
              MenuItem(shortcut: '2', label: 'Modify Group'),
            ])
          ],
        ),
        MenuItem(
          shortcut: 'I',
          label: 'Stock items',
          subMenu: [
            MenuSection(title: "", items: [
              MenuItem(shortcut: '1', label: 'Create Ledger'),
              MenuItem(shortcut: '2', label: 'Modify Ledger'),
            ])
          ],
        ),
        MenuItem(
          shortcut: 'U',
          label: 'Unita of measure',
          subMenu: [
            MenuSection(title: "", items: [
              MenuItem(shortcut: '1', label: 'Create Voucher'),
              MenuItem(shortcut: '2', label: 'Modify Voucher'),
            ])
          ],
        ),
        MenuItem(
          shortcut: 'V',
          label: 'Vouchure types',
          onTap: null,
        ),
        MenuItem(
          shortcut: 'Q',
          label: 'Back to Home',
          onTap: null,
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
        title: const Text('Inventry Info'),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.white,
              child: const Center(
                child: Text(
                  'Inventry Info',
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
              title: "Inventry Info",
              menuData: accountMenuData,
              onMenuItemSelected: handleMenuSelection,
            ),
          ),
        ],
      ),
    );
  }
}
