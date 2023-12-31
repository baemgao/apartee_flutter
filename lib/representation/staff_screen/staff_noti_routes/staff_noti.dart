import 'package:flutter/material.dart';

import '../../../components/app_bar.dart';
import '../../../core/const/color_const.dart';

class StaffNoti extends StatefulWidget {
  const StaffNoti({super.key});

  @override
  State<StaffNoti> createState() => _StaffNotiState();
}

class _StaffNotiState extends State<StaffNoti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.bgColor,
      appBar: const AppBarCom(
        appBarText: 'Message',
      ),
      body: ListView.builder(
        itemCount: messageLayouts.length,
        itemBuilder: (context, index) {
          final message = messageLayouts[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(message.title),
              subtitle: Text(message.date),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Xử lý khi bấm vào một yêu cầu
                // Ví dụ: điều hướng đến trang chi tiết yêu cầu
              },
            ),
          );
        },
      ),
    );
  }
}

class MessageLayout {
  final String title;
  final String date;

  MessageLayout(this.title, this.date);
}

List<MessageLayout> messageLayouts = [
  MessageLayout('Thông báo số 1', '10/10/2023'),
  MessageLayout('Thông báo số 2', '15/10/2023'),
  MessageLayout('Thông báo số 3', '20/10/2023'),
  // Thêm các yêu cầu khác vào đây
];
