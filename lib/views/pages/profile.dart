// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
              onEditingComplete: () {
                setState(() {});
              },
            ),
            Text(controller.text),
            Checkbox.adaptive(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            CheckboxListTile.adaptive(
              title: Text('Accept Terms & Conditions'),
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            Switch.adaptive(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            Slider(
              divisions: 10,
              value: sliderValue,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            SwitchListTile.adaptive(
              title: Text('Accept Terms & Conditions'),
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            InkWell(
              onTap: () {
                // ignore: avoid_print
                print('Image Clicked');
              },
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.white12,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Submit'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
            ),
            FilledButton(onPressed: () {}, child: Text('Submit')),
            TextButton(
              onPressed: () {},
              child: Text('Submit'),
              style: TextButton.styleFrom(foregroundColor: Colors.teal),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Submit'),
              style: OutlinedButton.styleFrom(foregroundColor: Colors.teal),
            ),
            CloseButton(),
            BackButton(),
          ],
        ),
      ),
    );
  }
}
