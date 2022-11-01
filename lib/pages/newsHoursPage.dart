import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/pages/allData.dart';
import 'package:flutter_application_1/pages/dataStat.dart';
import 'package:flutter_application_1/pages/uploadRem.dart';

class NewsPages extends StatefulWidget {
  const NewsPages({Key? key}) : super(key: key);

  @override
  State<NewsPages> createState() => _NewsPagesState();
}

class _NewsPagesState extends State<NewsPages> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            'NewsHours-Admin',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
          bottom: const TabBar(tabs: [
            Tab(
              text: 'Data Stat',
            ),
            Tab(
              text: 'Upload Rem',
            ),
            Tab(
              text: 'All Data',
            ),
          ]),
        ),
        body: const TabBarView(
            children: [DataStatPage(), UploadRemPage(), AllDataPage()]),
      ),
    );
  }
}
