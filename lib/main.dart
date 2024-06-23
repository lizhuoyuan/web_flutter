import 'package:flutter/material.dart';
import 'package:web_flutter/home.dart';
import 'package:web_flutter/person_widget.dart';
import 'package:web_flutter/yuyin.dart';

import 'bottom_widget.dart';
import 'image_util.dart';
import 'list_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '欢迎来到B-ASR'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      ImageUtil.image('xuexiao.jpg'),
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 10),
                    const Text('B-ASR'),
                  ],
                ),
                const SizedBox(height: 50),
                daoHang(icon: Icons.home, title: '首页', index: 0),
                daoHang(icon: Icons.bug_report, title: '语音识别', index: 1),
                daoHang(icon: Icons.table_rows, title: '数据记录', index: 2),
                daoHang(icon: Icons.person, title: '个人中心', index: 3),
              ],
            ),
            const SizedBox(width: 200),
            Column(
              children: [
                SizedBox(
                    height: 500,
                    child: IndexedStack(
                      index: _index,
                      children: const [
                        Home(),
                        Yuyin(),
                        ListWidget(),
                        PersonWidget(),
                      ],
                    )),
                const BottomWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget daoHang({required IconData icon, required String title, required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _index = index;
        });
        print('in:$_index');
      },
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(bottom: 50),
        child: Row(
          children: [Icon(icon), const SizedBox(width: 10), Text(title)],
        ),
      ),
    );
  }
}
