import 'dart:io';

import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: Center(
          child: ListView(children: const <Widget>[
        MyRadio(),
      ])),
    );
  }
}

class MyRadio extends StatefulWidget {
  const MyRadio({Key? key}) : super(key: key);

  @override
  _MyRadioState createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  dynamic sex;
  dynamic years;
  
  dynamic provice = '';
  final _format = DateFormat('dd/MM/yyyy');
  File? _avatar;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              initialValue: 'SangSom',
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
              ),
            ),
            TextFormField(
              initialValue: 'Email',
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const Divider(),

            TextFormField(
              initialValue: 'Jame',
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
              ),
            ),
            TextFormField(
              initialValue: 'Email',
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const Divider(),

            TextFormField(
              initialValue: 'ButterNoey',
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
              ),
            ),
            TextFormField(
              initialValue: 'Email',
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const Divider(),
            
            buildDateField(),
            _avatar == null
                ? ElevatedButton(
                    onPressed: () {
                      onChooseImage();
                    },
                    child: const Text('Choose Avatar'),
                  )
                : Column(
                    children: [
                      Image.file(_avatar!),
                      ElevatedButton(
                        onPressed: () {
                          onChooseImage();
                        },
                        child: const Text('Change Avatar'),
                      )
                    ],
                  )
          ]),
    );
  }

  onChooseImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _avatar = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  DateTimeField buildDateField() {
    return DateTimeField(
      decoration: const InputDecoration(labelText: ' Date'),
      format: _format,
      onShowPicker: (context, currentValue) {
        return showDatePicker(
            context: context,
            firstDate: DateTime(1900),
            initialDate: currentValue ?? DateTime.now(),
            lastDate: DateTime(2100));
      },
    );
  }

}