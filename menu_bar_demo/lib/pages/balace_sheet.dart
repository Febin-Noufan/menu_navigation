import 'package:flutter/material.dart';


class BalaceSheet extends StatefulWidget {
  const BalaceSheet({super.key});

  @override
  State<BalaceSheet> createState() => _AccountPageState();
}

class _AccountPageState extends State<BalaceSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('balaace sheet'),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.white,
              child: const Center(
                child: Text(
                  'alace sheet',
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
