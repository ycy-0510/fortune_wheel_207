import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
      home: const Scaffold(
        body: HomeBody(),
      ),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  StreamController<int> controller = StreamController<int>();
  List<FortuneItem> items = const [
    FortuneItem(
      child: Text('仙草乙份,只收10元'),
      style: FortuneItemStyle(color: Color(0xFFA6AEBF)),
    ),
    FortuneItem(
      child: Text('許願乙次'),
      style: FortuneItemStyle(color: Color(0xFFC5D3E8)),
    ),
    FortuneItem(
      child: Text('仙草乙份'),
      style: FortuneItemStyle(color: Color(0xFFDEE8C5)),
    ),
    FortuneItem(
      child: Text('許願乙次'),
      style: FortuneItemStyle(color: Color(0xFFC5D3E8)),
    ),
    FortuneItem(
      child: Text('仙草乙份,只收10元'),
      style: FortuneItemStyle(color: Color(0xFFA6AEBF)),
    ),
    FortuneItem(
      child: Text('仙草乙份'),
      style: FortuneItemStyle(color: Color(0xFFDEE8C5)),
    ),
    FortuneItem(
      child: Text('許願乙次+抽籤乙次'),
      style: FortuneItemStyle(color: Color(0xFFA6AEBF)),
    ),
    FortuneItem(
      child: Text('仙草乙份加芋圓'),
      style: FortuneItemStyle(color: Color(0xFFFFF8DE)),
    ),
    FortuneItem(
      child: Text('仙草乙份'),
      style: FortuneItemStyle(color: Color(0xFFDEE8C5)),
    ),
    FortuneItem(
      child: Text(
        '許願乙次+抽籤乙次+仙草乙份',
        style: TextStyle(fontSize: 10),
      ),
      style: FortuneItemStyle(color: Color(0xFFFFF8DE)),
    ),
    FortuneItem(
      child: Text('許願乙次'),
      style: FortuneItemStyle(color: Color(0xFFC5D3E8)),
    ),
    FortuneItem(
      child: Text('仙草乙份,只收10元'),
      style: FortuneItemStyle(color: Color(0xFFA6AEBF)),
    ),
    FortuneItem(
      child: Text('許願乙次+抽籤乙次'),
      style: FortuneItemStyle(color: Color(0xFFA6AEBF)),
    ),
    FortuneItem(
      child: Text('仙草乙份'),
      style: FortuneItemStyle(color: Color(0xFFDEE8C5)),
    ),
    FortuneItem(
      child: Text(
        '許願乙次+抽籤乙次+仙草乙份',
        style: TextStyle(fontSize: 10),
      ),
      style: FortuneItemStyle(color: Color(0xFFFFF8DE)),
    ),
    FortuneItem(
      child: Text('許願乙次'),
      style: FortuneItemStyle(color: Color(0xFFC5D3E8)),
    ),
    FortuneItem(
      child: Text('許願乙次+抽籤乙次'),
      style: FortuneItemStyle(color: Color(0xFFA6AEBF)),
    ),
    FortuneItem(
      child: Text('仙草乙份加芋圓'),
      style: FortuneItemStyle(color: Color(0xFFFFF8DE)),
    ),
    FortuneItem(
      child: Text(
        '許願乙次+抽籤乙次+仙草乙份',
        style: TextStyle(fontSize: 10),
      ),
      style: FortuneItemStyle(color: Color(0xFFFFF8DE)),
    ),
    FortuneItem(
      child: Text('仙草乙份'),
      style: FortuneItemStyle(color: Color(0xFFDEE8C5)),
    ),
  ];
  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  bool fling = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: FortuneWheel(
                onAnimationStart: () {
                  setState(() {
                    fling = true;
                  });
                },
                onAnimationEnd: () {
                  setState(() {
                    fling = false;
                  });
                },
                physics: CircularPanPhysics(
                  duration: const Duration(seconds: 1),
                  curve: Curves.decelerate,
                ),
                onFling: () {
                  controller.add(
                    Fortune.randomInt(0, items.length),
                  );
                },
                selected: controller.stream,
                items: items,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: 40,
              width: 400,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: fling
                      ? null
                      : () {
                          controller.add(
                            Fortune.randomInt(0, items.length),
                          );
                        },
                  child: const Text(
                    '轉!',
                    style: TextStyle(fontSize: 25),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
