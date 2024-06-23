import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          item(fileName: '文件名.txt', text: '皮拉罗科人口变化图示'),
          item(fileName: '文件名.txt', text: '开始装配,注意左侧框架'),
          item(fileName: '文件名.txt', text: '皮拉罗科人口变化图示'),
          item(fileName: '文件名.txt', text: '皮拉罗科人口变化图示'),
        ],
      ),
    );
  }

  item({required fileName, required text}) {
    return Row(
      children: [
        Container(
            child: Row(
          children: [
            Text(fileName),
            Icon(
              Icons.play_circle_fill,
              size: 20,
            ),
            Text('00:00 / 02:24'),
            SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: Slider(
                value: 0.1,
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              width: 60,
            ),
            Text(text),
          ],
        )),
        SizedBox(
          width: 60,
        ),
        Text(
          '管理',
          style: TextStyle(color: Colors.blue),
        ),
        SizedBox(
          width: 30,
        ),
        Text('删除', style: TextStyle(color: Colors.blue))
      ],
    );
  }
}
