import 'package:flutter/material.dart';
import 'package:web_flutter/image_util.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text('BIT-ASR'),
            Text('地址：北京市海淀区中关村南大街5号'),
            Text('电话：010-00000000'),
          ],
        ),
        SizedBox(width: 100),
        Column(
          children: [
            Text('关于我们'),
            Text('BIT'),
            Text('团队介绍'),
            Text('合作'),
          ],
        ),
        SizedBox(width: 100),
        Row(
          children: [Text('关\n注\n我\n们'),  SizedBox(width: 30),Image.asset(ImageUtil.image('qr_code.png'))],
        )
      ],
    );
  }
}
