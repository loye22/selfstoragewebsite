import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class selectDate extends StatefulWidget {
  final String label;
  final TextEditingController controller;

  selectDate({required this.label, required this.controller});

  @override
  _selectDateState createState() => _selectDateState();
}

class _selectDateState extends State<selectDate> {
  DateTime? _selectedDate;
  bool _isDatePickerVisible = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
              letterSpacing: -0.0125,
            ),
          ),
          SizedBox(height: 2.0),
          GestureDetector(
            onTap: () {
              setState(() {
                _isDatePickerVisible = !_isDatePickerVisible;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _selectedDate != null
                        ? _formattedDate(_selectedDate!)
                        : 'Select Date',
                    style: TextStyle(
                      color: _selectedDate != null ? Colors.black : Colors.grey,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
          ),
          if (_isDatePickerVisible)
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: SizedBox(
                  height: 200.0,
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    initialDateTime: _selectedDate ,
                    minimumDate: DateTime.now().subtract(Duration(days: 1)),
                    maximumDate: DateTime.now().add(Duration(days: 45)),
                    onDateTimeChanged: (DateTime newDate) {
                      setState(() {
                        if( newDate.isBefore(DateTime.now()) || newDate.isAfter(DateTime.now().add(Duration(days: 45)))){
                          _selectedDate = DateTime.now();
                        }
                        else{
                          _selectedDate = newDate;
                          widget.controller.text = _formattedDate(_selectedDate!);
                        }

                      });
                    },
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  String _formattedDate(DateTime date) {
    return '${date.day}-${_monthToString(date.month)}-${date.year}';
  }

  String _monthToString(int month) {
    switch (month) {
      case 1:
        return 'Jan';
      case 2:
        return 'Feb';
      case 3:
        return 'Mar';
      case 4:
        return 'Apr';
      case 5:
        return 'May';
      case 6:
        return 'Jun';
      case 7:
        return 'Jul';
      case 8:
        return 'Aug';
      case 9:
        return 'Sep';
      case 10:
        return 'Oct';
      case 11:
        return 'Nov';
      case 12:
        return 'Dec';
      default:
        return '';
    }
  }
}
