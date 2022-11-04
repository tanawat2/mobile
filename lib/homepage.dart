import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

class BodyHome extends StatefulWidget {
  const BodyHome({Key? key}) : super(key: key);
  
@override
  _BodyHomeState createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {

  List<String> provices = [
    '',
    'ราศีมังกร(Capricorn)',
    'ราศีกุมภ์(Aquarius)',
    'ราศีมีน(Pisces)',
    'ราศีเมษ(Aries)',
    'ราศีพฤษภ(Taurus)',
    'ราศีเมถุน(Gemini)',
    'ราศีกรกฏ(Cancer)',
    'ราศีสิงห์(Leo)',
    'ราศีกันย์(Virgo)',
    'ราศีตุล(Libra)',
    'ราศีพิจิก(Scorpio)',
    'ราศีธนู(Sagittarius)',
  ];
  dynamic provice = '';

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(5),
      children: <Widget>[
        buildSelectField(),
        Card(
            child: Image.asset('assets/images/12.jpg'),
          ),
      ],
    );
  }
      
      
        // mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.center,
        // children: <Widget>[
        //   buildSelectField(),
        //   Card(
        //     child: Image.asset('assets/images/12.jpg'),
        //   ),
        // ],
      // )
      // padding: const EdgeInsets.all(8),
      // children: [
      //   buildSelectField(),
      //   ElevatedButton(
      //     onPressed: () {
      //       Navigator.pushNamed(context, '/Ariespage');
      //     },
      //     child: const Text('Aries'),
        // ),
      //   const Divider(),
      //   Card(
      //     child: Image.asset('assets/images/arrowheadvine.jpg'),
      //   ),
      //   
      //  ],
    
    
  
  InputDecorator buildSelectField() {
    return InputDecorator(
      decoration: const InputDecoration(labelText: 'เลือก ราศี ของคุณ'),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: provice,
          onChanged: (value) {
            setState(() {
              provice = value;
            });
          },
          items: provices.map(
                (value) => DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                ),
              )
              .toList(),
        ),
      ),
    );
}
}