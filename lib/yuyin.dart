import 'package:flutter/material.dart';

class Yuyin extends StatefulWidget {
  const Yuyin({Key? key}) : super(key: key);

  @override
  State<Yuyin> createState() => _YuyinState();
}

class _YuyinState extends State<Yuyin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Row(
              children: [ElevatedButton(onPressed: () {}, child: Text('上传文件')), Text('未选择文件')],
            ),
          ],
        ),
        SizedBox(height: 50),
        Row(
          children: [
            ElevatedButton(onPressed: () {}, child: Text('语音输入')),
            SizedBox(width: 50),
            ElevatedButton(onPressed: () {}, child: Text('暂停录音')),
            SizedBox(width: 50),  ElevatedButton(onPressed: () {}, child: Text('继续录音')),
            SizedBox(width: 50), ElevatedButton(onPressed: () {}, child: Text('结束录音')),
          ],
        ),
        SizedBox(height: 50),
        Container(
          padding: EdgeInsets.all(10),
          color: Colors.grey.withOpacity(0.2),
          child: Row(
            children: [
              Icon(
                Icons.play_circle_fill,
                size: 20,
              ),
              Text('00:00 / 02:24'),
              SizedBox(height: 20),
              Slider(
                value: 0.1,
                onChanged: (value) {},
              ),
            ],
          ),
        ),
        SizedBox(height: 50),
        Text('识别内容:'),
        SizedBox(height: 50),
        Text('开始装配，涂漆并安装左侧框架。安装右侧框架并拧紧螺丝，最后检查和调试。'),
        SizedBox(height: 50),
        Text('相关操作指令'),
        SizedBox(height: 20),
        Text('装配、涂漆、测试'),
      ],
    );
  }
}
