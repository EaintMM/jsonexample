import 'package:flutter/material.dart';
import 'tab_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Json DEMO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Parsing some JSON'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Basics'),
              Tab(text: 'Conv. Simple'),
              Tab(text: 'Conv. Complex'),
              Tab(text: 'Conv. List'),
              Tab(text: 'Ser. Simple'),
              Tab(text: 'Ser. Complex'),
              Tab(text: 'Ser. List'),
              Tab(text: 'Built Simple'),
              Tab(text: 'Built Complex'),
              Tab(text: 'Built List'),
            ],
          ),
        ),
        body: const SafeArea(
          bottom: false,
          child: TabBarView(children: [
            BasicPage(),
            ConvertedSimplePage(),
            ConvertedComplexPage(),
            ConvertedListPage(),
            SerializableSimplePage(),
            SerializableComplexPage(),
            SerializableListPage(),
            BuiltSimplePage(),
            BuiltComplexPage(),
            BuiltListPage(),
          ]),
        ),
      ),
    );
  }
}
