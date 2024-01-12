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

    );
  }
}
