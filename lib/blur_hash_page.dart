import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

class BlurHashPage extends StatelessWidget {
  final List<String> hashList = [
    "L5H2EC=PM+yV0g-mq.wG9c010J}I",
    'LEHV6nWB2yk8pyo0adR*.7kCMdnj',
    "BkF=hb}MQ+=S#lNL",
    "B6C=+r000000?d9p",
    "BWJaZl^:^ky__\$jb",
    "BEM3Hy?K0x,.wgI=",
    "BWFpeiEb=RNx;EW?",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blur Hash"),
      ),
      body: ListView.builder(
        itemCount: hashList.length,
        itemBuilder: (context, index) {
          return Card(
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: SizedBox(
              height: 200,
              child: BlurHash(
                hash: hashList[index],
                color: Colors.lightBlue,
              ),
            ),
          );
        },
      ),
    );
  }
}
