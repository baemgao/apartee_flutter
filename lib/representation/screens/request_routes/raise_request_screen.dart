import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_02/components/app_bar.dart';
import 'package:flutter_demo_02/components/my_button.dart';
import 'package:flutter_demo_02/core/const/color_const.dart';
import 'package:flutter_demo_02/core/helpers/asset_helpers.dart';
import 'package:intl/intl.dart';
import 'package:spinner_date_time_picker/spinner_date_time_picker.dart';

class RaiseRequestScreen extends StatefulWidget {
  static const routName = 'raise_request';

  const RaiseRequestScreen({Key? key}) : super(key: key);

  @override
  State<RaiseRequestScreen> createState() => _RaiseRequestScreenState();
}

class _RaiseRequestScreenState extends State<RaiseRequestScreen> {
  String _selectedApartment = 'A';
  DateTime selectedDate = DateTime.now();
  DateTime now = DateTime.now();
  onPressedRaise() async {}

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorPalette.bgColor,
      appBar: AppBarCom(
        appBarText: 'Raise request',
        leading: true,
        leftIcon: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: ColorPalette.bgColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              AssetHelper.imageBanner,
              width: screenWidth,
            ),
            const SizedBox(
                height: 16.0), // Xóa "const" để có thể thay đổi khoảng cách
            const Text(
              'Select your apartment',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 300.0,
              child: DropdownButton<String>(
                value: _selectedApartment,
                iconSize: 48.0,
                items: <String>['A', 'B', 'C'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text('Apartment $value'),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedApartment = newValue!;
                  });
                },
              ),
            ),

            SafeArea(
              child: Container(
                margin: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorPalette.bgColor,
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              var today = DateTime.now();
                              return Dialog(
                                child: SpinnerDateTimePicker(
                                    initialDateTime: today,
                                    maximumDate:
                                        today.add(const Duration(days: 365)),
                                    minimumDate: now,
                                    mode: CupertinoDatePickerMode.dateAndTime,
                                    use24hFormat: true,
                                    didSetTime: (selectedDate) {
                                      if (selectedDate.isBefore(now)) {
                                        // Ngày không hợp lệ
                                        return;
                                      }

                                      // Ngày hợp lệ
                                      // Cập nhật ngày đã chọn
                                      setState(() {
                                        this.selectedDate = selectedDate;
                                      });
                                    }),
                              );
                            });
                      },
                      child: const Text(
                        "Select Request Date & Time",
                        style: TextStyle(
                            fontSize: 18, color: ColorPalette.primaryColor),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text("Request date:"),
                    Text(
                      DateFormat('dd/MM/yyyy HH:mm').format(selectedDate),
                      style: const TextStyle(
                          fontSize: 18, color: ColorPalette.primaryColor),
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(height: 5.0),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Package 1',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: ColorPalette.textColor,
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  'Package description',
                  style: TextStyle(
                    fontSize: 14,
                    color: ColorPalette.unselectedIcon,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        child: MyButton(
          onTap: onPressedRaise,
          text: 'Raise SR',
          color: ColorPalette.primaryColor,
          textColor: ColorPalette.bgColor,
        ),
      ),
    );
  }
}
