import 'package:flutter/material.dart';
import 'package:menu_bar_demo/widget.dart';

class StockSummery extends StatefulWidget {
  const StockSummery({super.key});

  @override
  State<StockSummery> createState() => _AccountPageState();
}

class _AccountPageState extends State<StockSummery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StockSummery'),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.white,
              child: const Center(
                child: Text(
                  'StockSummery',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
