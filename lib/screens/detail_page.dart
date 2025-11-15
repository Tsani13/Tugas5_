import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String judul;
  final String gambar;

  const DetailPage({
    super.key,
    required this.judul,
    required this.gambar,
  });

  String getDeskripsi() {
    switch (judul) {

      case 'Milky Way':
        return 'Milky Way adalah galaksi tempat Bumi berada. '
            'Berbentuk spiral batang dengan lebih dari 100 miliar bintang, '
            'galaksi ini memiliki diameter sekitar 100.000 tahun cahaya.';

      case 'Andromeda':
        return 'Andromeda adalah galaksi spiral terbesar terdekat dengan Bima Sakti. '
            'Ia berjarak sekitar 2,5 juta tahun cahaya dan diperkirakan akan bertabrakan dengan Milky Way.';

      case 'Sombrero Galaxy':
        return 'Sombrero Galaxy dikenal karena tonjolan pusatnya yang sangat besar dan cincin debu tebal '
            'yang membuatnya tampak seperti topi sombrero.';

      case 'Whirlpool Galaxy':
        return 'Whirlpool Galaxy adalah galaksi spiral klasik dengan pola lengan yang sangat jelas. '
            'Galaksi ini berinteraksi dengan NGC 5195, galaksi kecil di dekatnya.';

      case 'Pinwheel Galaxy':
        return 'Pinwheel Galaxy adalah galaksi spiral besar dengan pola lengan spiral yang indah dan teratur. '
            'Galaksi ini memiliki sekitar satu triliun bintang.';

      case 'NGC 1300':
        return 'NGC 1300 adalah galaksi spiral batang raksasa yang memiliki struktur spiral sangat simetris. '
            'Pusatnya memiliki fitur mirip cincin yang mencolok.';

      case 'Centaurus A':
        return 'Centaurus A adalah galaksi lentikular atau elips yang unik karena memiliki pita debu gelap. '
            'Galaksi ini juga merupakan sumber radio paling kuat di langit selatan.';

      case 'Triangulum Galaxy':
        return 'Triangulum Galaxy adalah galaksi spiral kecil yang merupakan anggota ketiga terbesar '
            'dari Grup Lokal setelah Andromeda dan Bima Sakti.';

      case 'Messier 81':
        return 'Messier 81 adalah galaksi spiral besar dengan inti yang sangat terang. '
            'Letaknya di rasi Ursa Major dan merupakan salah satu galaksi paling terang di langit malam.';

      case 'Messier 82':
        return 'Messier 82 adalah galaksi starburst yang sedang mengalami pembentukan bintang besar-besaran. '
            'Galaksi ini juga dikenal sebagai Cigar Galaxy.';

      default:
        return 'Deskripsi belum tersedia untuk objek ini.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(judul),
        backgroundColor: Color.fromARGB(255, 35, 6, 86),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              gambar,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Text(
              judul,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                getDeskripsi(),
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}