import 'package:flutter/material.dart';

class ProfitAndLoss extends StatefulWidget {
  const ProfitAndLoss({super.key});

  @override
  State<ProfitAndLoss> createState() => _AccountPageState();
}

class _AccountPageState extends State<ProfitAndLoss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfitAndLoss'),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.white,
              child: const Center(
                child: Text(
                  'ProfitAndLoss',
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
