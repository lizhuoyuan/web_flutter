import 'package:flutter/material.dart';
import 'package:web_flutter/image_util.dart';

class PersonWidget extends StatelessWidget {
  const PersonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                ImageUtil.image('avatar.png'),
                width: 150,
                height: 150,
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'wodexinhaoleng',
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            '个人信息',
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
