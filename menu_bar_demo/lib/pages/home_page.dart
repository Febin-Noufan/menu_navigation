import 'package:flutter/material.dart';
import 'package:menu_bar_demo/pages/balace_sheet.dart';
import 'package:menu_bar_demo/pages/stock_summery.dart';
import 'package:menu_bar_demo/test/templ.dart';
import 'package:menu_navigation/menu_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _currentPage = "D Console";

  List<MenuSection> mainMenuData = [
    MenuSection(
      title: "Masters",
      items: [
        MenuItem(shortcut: 'A', label: 'Accounts Info', subMenu: [
          MenuSection(title: "", items: [
            MenuItem(shortcut: 'G', label: 'Groups', subMenu: [
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
                    navigateTo: () => StockSummery(),
                  ),
                  MenuItem(
                      shortcut: 'E',
                      label: 'Desplay',
                      navigateTo: () => StockSummery()),
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
            ]),
            MenuItem(
              shortcut: 'L',
              label: 'Ledgers',
              subMenu: [
                MenuSection(title: "", items: [
                  MenuItem(
                    shortcut: '1',
                    label: 'Create Ledger',
                  ),
                  MenuItem(shortcut: '2', label: 'Modify Ledger'),
                ])
              ],
            ),
            MenuItem(
              shortcut: 'V',
              label: 'Voucher Type',
              subMenu: [
                MenuSection(title: "", items: [
                  MenuItem(shortcut: '1', label: 'Create Voucher'),
                  MenuItem(shortcut: '2', label: 'Modify Voucher'),
                ])
              ],
            ),
            MenuItem(
              shortcut: 'Q',
              label: 'Back to Home',
              onTap: null,
            ),
          ])
        ]),
        MenuItem(
          shortcut: 'I',
          label: 'Inventory Info',
        ),
      ],
    ),
    MenuSection(
      title: "Reports",
      items: [
        MenuItem(
          shortcut: 'B',
          label: 'Balance Sheet',
          navigateTo: () => BalaceSheet(),
        ),
        MenuItem(shortcut: 'P', label: 'Profit & Loss A/C', subMenu: [
          MenuSection(title: "", items: [
            MenuItem(
              shortcut: 'X',
              label: 'X Sheet',
              // navigateTo: () => BalaceSheet(),
            ),
          ])
        ]),
        MenuItem(
          shortcut: 'S',
          label: 'Stock Summery',
        ),
      ],
    ),
    MenuSection(
      title: "Test",
      items: [
        MenuItem(
          shortcut: 'T',
          label: 'Test Packages',
          navigateTo: () => SlideFormApp(),
        ),
        MenuItem(shortcut: 'P', label: 'Profit & Loss A/C', subMenu: [
          MenuSection(title: "", items: [
            MenuItem(
              shortcut: 'X',
              label: 'X Sheet',

              // navigateTo: () => BalaceSheet(),
            ),
          ])
        ]),
        MenuItem(
          shortcut: 'S',
          label: 'Stock Summery',
        ),
      ],
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("D Console"),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.white,
              child: Center(
                child: Text(
                  "D Console",
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
              title: "D Console",
              menuData: mainMenuData,
              onMenuItemSelected: (menuItem) {
                setState(() {
                  _currentPage = menuItem.label;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
