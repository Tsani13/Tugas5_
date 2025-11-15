import 'package:flutter/material.dart';
import 'package:tugas_pertemuan6/models/galaxy.dart';
import 'package:tugas_pertemuan6/screens/detail_page.dart';

Widget buildListview(){
  Galaxy data = Galaxy();

  return ListView.builder(
    itemCount: data.dataGalaxy.length,
    itemBuilder: (context, index){
      final item = data.dataGalaxy[index];
      return Card(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: ListTile(
          leading: Image.network(
            item['gambar']!,
            width: 100,
            fit: BoxFit.cover,
          ),
          title: Text(item['judul']!),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DetailPage(
                  judul: item['judul']!,
                  gambar: item['gambar']!,
                ),
              ),
            );
          },
        ),
      );
    }
  );
}