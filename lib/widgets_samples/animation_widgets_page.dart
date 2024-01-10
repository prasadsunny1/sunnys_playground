import 'package:flutter/material.dart';

class AnimationWidgetsPage extends StatelessWidget {
  const AnimationWidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Widgets'),
      ),
      body: const Row(
        children: [
          Flexible(fit: FlexFit.tight, child: Text("hello asdsa asd sa dsa das dsad as dsa dsa das dsa das dsa das ds dsa d sad sad s sa da ads das das dsa")),
        ],
      ),
      // body: Row(
      //   children: [
      //     // Expanded( flex:2, child: Container(color: Colors.yellow, height: 100,)),
      //     // Expanded( child: Container(color: Colors.red)),
      //     // Expanded( child: Container(color: Colors.orange)),
      //     Container(width: 50, color: Colors.blue),
      //     Flexible(fit: FlexFit.tight, child: Container(color: Colors.green, child: Text("hello asdsa asd sa dsa das dsad as dsa dsa das dsa das dsa das ds dsa d sad sad s sa da ads das das dsa"),)),
      //     Container(width: 50, color: Colors.red),
      //   ],
      // ),
    );
  }
}
