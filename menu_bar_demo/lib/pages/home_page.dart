import 'package:flutter/material.dart';
import 'package:menu_bar_demo/widget.dart';

import 'account_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _currentPage = "Home";

  late List<MenuSection> mainMenuData;

  @override
  void initState() {
    super.initState();
    mainMenuData = [
      MenuSection(
        title: "Masters",
        items: [
          MenuItem(
            shortcut: 'A',
            label: 'Accounts Info',
            onTap: () {
              navigateToPage(MenuItem(shortcut: 'A', label: 'Accounts Info'));
            },
            // subMenu: [
            //   MenuItem(
            //     shortcut: '1',
            //     label: 'Ledger',
            //     onTap: null, // Add specific functionality
            //   ),
            //   MenuItem(
            //     shortcut: '2',
            //     label: 'Groups',
            //     onTap: null, // Add specific functionality
            //   ),
            // ],
          ),
          MenuItem(
            shortcut: 'I',
            label: 'Inventory Info',
            subMenu: [
              MenuItem(
                shortcut: '1',
                label: 'Stock Items',
                onTap: null, // Add specific functionality
              ),
              MenuItem(
                shortcut: '2',
                label: 'Stock Groups',
                onTap: null, // Add specific functionality
              ),
            ],
          ),
        ],
      ),
      MenuSection(
        title: "Reports",
        items: [
          MenuItem(
            shortcut: 'B',
            label: 'Balance Sheet',
            subMenu: [
              MenuItem(
                shortcut: '1',
                label: 'Assets',
                onTap: null, // Add specific functionality
              ),
              MenuItem(
                shortcut: '2',
                label: 'Liabilities',
                onTap: null, // Add specific functionality
              ),
            ],
          ),
          MenuItem(
            shortcut: 'P',
            label: 'Profit & Loss A/C',
            subMenu: [
              MenuItem(
                shortcut: '1',
                label: 'Income',
                onTap: null, // Add specific functionality
              ),
              MenuItem(
                shortcut: '2',
                label: 'Expenses',
                onTap: null, // Add specific functionality
              ),
            ],
          ),
        ],
      ),
    ];
  }

  void navigateToPage(MenuItem menuItem) {
    if (menuItem.label == 'Accounts Info') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AccountPage()),
      );
    } else {
      setState(() {
        _currentPage = menuItem.label;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentPage),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.white,
              child: Center(
                child: Text(
                  _currentPage,
                  style: const TextStyle(
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
              title: _currentPage,
              menuData: mainMenuData,
              onMenuItemSelected: navigateToPage,
            ),
          ),
        ],
      ),
    );
  }
}
