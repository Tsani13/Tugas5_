import 'package:flutter/material.dart';
import 'package:tugas_pertemuan6/widgets/listview.dart';
import 'package:tugas_pertemuan6/widgets/gridview.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cosmic Gallery'),
          backgroundColor: Color.fromARGB(255, 35, 6, 86),
          centerTitle: true,
          bottom: const TabBar(
  indicatorColor: Colors.cyan,
  labelColor: Colors.white,
  unselectedLabelColor: Colors.grey,
  tabs: [
    Tab(icon: Icon(Icons.list), text: 'ListView'),
    Tab(icon: Icon(Icons.grid_on), text: 'GridView'),
  ],
),
        ),
        body: TabBarView(
          children :[
            buildListview(),
            buildGridview()
          ]
        ),
      ));
  }
}