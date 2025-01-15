import 'package:flutter/material.dart';
import 'package:menu_bar_demo/widget.dart';


class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final List<MenuSection> accountMenuData = [
    MenuSection(
      title: "Account Info",
      items: [
        MenuItem(
          shortcut: 'G',
          label: 'Groups',
          subMenu: [
            MenuItem(shortcut: '1', label: 'Create Group'),
            MenuItem(shortcut: '2', label: 'Modify Group'),
          ],
        ),
        MenuItem(
          shortcut: 'L',
          label: 'Ledgers',
          subMenu: [
            MenuItem(shortcut: '1', label: 'Create Ledger'),
            MenuItem(shortcut: '2', label: 'Modify Ledger'),
          ],
        ),
        MenuItem(
          shortcut: 'V',
          label: 'Voucher Type',
          subMenu: [
            MenuItem(shortcut: '1', label: 'Create Voucher'),
            MenuItem(shortcut: '2', label: 'Modify Voucher'),
          ],
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
        title: const Text('Account Management'),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.white,
              child: const Center(
                child: Text(
                  'Account Management',
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
              title:"Account Management" ,
              menuData: accountMenuData,
              onMenuItemSelected: handleMenuSelection,
            ),
          ),
        ],
      ),
    );
  }
}