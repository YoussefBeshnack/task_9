import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: TicTacToeUI()));

class TicTacToeUI extends StatelessWidget {
  const TicTacToeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: AspectRatio(
            aspectRatio: 1.0,
            child: Column(
              children: [
                _buildRow([0, 1, 2], top: false),
                _buildRow([3, 4, 5]),
                _buildRow([6, 7, 8], bottom: false),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRow(List<int> indices, {bool top = true, bool bottom = true}) {
    return Expanded(
      child: Row(
        children: [
          _buildCell(indices[0], left: false, top: top, bottom: bottom),
          _buildCell(indices[1], top: top, bottom: bottom),
          _buildCell(indices[2], right: false, top: top, bottom: bottom),
        ],
      ),
    );
  }

  Widget _buildCell(
    int index, {
    bool left = true,
    bool right = true,
    bool top = true,
    bool bottom = true,
  }) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            left: left
                ? const BorderSide(color: Colors.black, width: 2)
                : BorderSide.none,
            right: right
                ? const BorderSide(color: Colors.black, width: 2)
                : BorderSide.none,
            top: top
                ? const BorderSide(color: Colors.black, width: 2)
                : BorderSide.none,
            bottom: bottom
                ? const BorderSide(color: Colors.black, width: 2)
                : BorderSide.none,
          ),
        ),
      ),
    );
  }
}
