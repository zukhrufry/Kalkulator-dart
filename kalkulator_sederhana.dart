import 'dart:io';

void main() {
  print('=== Kalkulator Sederhana ===');
  print('Pilih operasi:');
  print('1. Penjumlahan (+)');
  print('2. Pengurangan (-)');
  print('3. Perkalian (*)');
  print('4. Pembagian (/)');
  stdout.write('Masukkan pilihan (1-4): ');
  String? pilihan = stdin.readLineSync();

  stdout.write('Masukkan angka pertama: ');
  double? angka1 = double.tryParse(stdin.readLineSync()!);
  stdout.write('Masukkan angka kedua: ');
  double? angka2 = double.tryParse(stdin.readLineSync()!);

  double hasil = 0;
  switch (pilihan) {
    case '1':
      hasil = angka1! + angka2!;
      print('Hasil penjumlahan: $hasil');
      break;
    case '2':
      hasil = angka1! - angka2!;
      print('Hasil pengurangan: $hasil');
      break;
    case '3':
      hasil = angka1! * angka2!;
      print('Hasil perkalian: $hasil');
      break;
    case '4':
      if (angka2 != 0) {
        hasil = angka1! / angka2!;
        print('Hasil pembagian: $hasil');
      } else {
        print('Error: Pembagi tidak boleh 0');
      }
      break;
    default:
      print('Pilihan tidak valid');
  }

  print('============================');
}
