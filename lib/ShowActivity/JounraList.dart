
import 'package:flutter/material.dart';

class JournaList extends StatelessWidget {
   JournaList({super.key});

  List <Map<String,String>> NameList = [

    {'Name': 'Md Sakibul Hasan Santo','SubTitle' : 'Student', 'Icon' : 'S'},
    {'Name': 'Santo','SubTitle' : 'Student', 'Icon' : 'M'},
    {'Name': 'Santo','SubTitle' : 'Student', 'Icon' : 'N'},
    {'Name': 'Santo','SubTitle' : 'Student','Icon' : 'J'},
    {'Name': 'Santo','SubTitle' : 'Student', 'Icon' : 'S'},
    {'Name': 'Santo','SubTitle' : 'Student', 'Icon' : 'M'},
    {'Name': 'Santo','SubTitle' : 'Student', 'Icon' : 'N'},
    {'Name': 'Santo','SubTitle' : 'Student','Icon' : 'J'},
    {'Name': 'Santo','SubTitle' : 'Student', 'Icon' : 'S'},
    {'Name': 'Santo','SubTitle' : 'Student', 'Icon' : 'M'},
    {'Name': 'Santo','SubTitle' : 'Student', 'Icon' : 'N'},
    {'Name': 'Santo','SubTitle' : 'Student','Icon' : 'J'},
    {'Name': 'Santo','SubTitle' : 'Student', 'Icon' : 'S'},
    {'Name': 'Santo','SubTitle' : 'Student', 'Icon' : 'M'},
    {'Name': 'Santo','SubTitle' : 'Student', 'Icon' : 'N'},
    {'Name': 'Santo','SubTitle' : 'Student','Icon' : 'J'},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JournaList'),

        actions: [
          IconButton(
            onPressed: () {
            },
            icon: Icon(Icons.point_of_sale_rounded),
          ),
        ],
      ),
      body: ListView.separated(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: const Text('Name : '),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              color: Colors.grey,
              endIndent: 16,
              indent: 20,
            );
          }
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: JournaList(),
  ));
}
