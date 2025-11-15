import 'package:flutter/material.dart';
import 'package:tugas_pertemuan6/models/galaxy.dart';
import 'package:tugas_pertemuan6/screens/detail_page.dart';

Widget buildGridview(){
  Galaxy data = Galaxy();

  return GridView.builder(
    itemCount: data.dataGalaxy.length,
    padding: const EdgeInsets.all(10),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 15,
    ),
    itemBuilder: (context, index) {
      final item = data.dataGalaxy[index];
      return InkWell(
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
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Image.network(
                  item['gambar']!,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                item['judul']!,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    },
  );
}