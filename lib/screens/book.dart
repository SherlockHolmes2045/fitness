import 'package:date_time_picker/date_time_picker.dart';
import 'package:fitness/utils/hexcolor.dart';
import 'package:fitness/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Book extends StatefulWidget {
  const Book({Key? key}) : super(key: key);

  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal * 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 3),
                child: Text(
                  "Heure de début",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.blockSizeHorizontal * 4.5),
                ),
              ),
              DateTimePicker(
                type: DateTimePickerType.time,
                initialValue: '',
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                dateLabelText: ' ',
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  return null;
                },
                onSaved: (val) => print(val),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 5),
                child: Text(
                  "Heure de fin",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.blockSizeHorizontal * 4.5),
                ),
              ),
              DateTimePicker(
                type: DateTimePickerType.time,
                initialValue: '',
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                dateLabelText: ' ',
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  return null;
                },
                onSaved: (val) => print(val),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 5,left: SizeConfig.blockSizeHorizontal * 4),
                child: SizedBox(
                  height: SizeConfig.blockSizeVertical * 8,
                  width: SizeConfig.screenWidth / 1.2,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                          return RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(SizeConfig.blockSizeHorizontal * 3));
                        }),
                        backgroundColor: MaterialStateProperty.all<Color>(HexColor("#8587DC"))
                    ),
                    onPressed: () {
                    },
                    child: const Text(
                        "Réserver"
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
