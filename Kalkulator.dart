import 'dart:io';

// Fungsi untuk format angka agar bulat tampil tanpa .0
String formatAngka(double angka) {
  return (angka % 1 == 0) ? angka.toInt().toString() : angka.toString();
}

void main() {
  while (true) {
    print("\n=== Kalkulator Sederhana ===");
    stdout.write("Masukkan angka pertama: ");
    double num1 = double.parse(stdin.readLineSync()!);

    stdout.write("Masukkan operator (+, -, *, /): ");
    String op = stdin.readLineSync()!;

    stdout.write("Masukkan angka kedua: ");
    double num2 = double.parse(stdin.readLineSync()!);

    double hasil;

    switch (op) {
      case '+':
        hasil = num1 + num2;
        break;
      case '-':
        hasil = num1 - num2;
        break;
      case '*':
        hasil = num1 * num2;
        break;
      case '/':
        if (num2 == 0) {
          print("Error: Tidak bisa membagi dengan nol!");
          continue;
        }
        hasil = num1 / num2;
        break;
      default:
        print("Operator tidak valid!");
        continue;
    }

    print("Hasil: ${formatAngka(num1)} $op ${formatAngka(num2)} = ${formatAngka(hasil)}");

    stdout.write("Apakah ingin menghitung lagi? (y/n): ");
    String? lagi = stdin.readLineSync();
    if (lagi == null || lagi.toLowerCase() != 'y') {
      print("Terima kasih sudah menggunakan kalkulator!");
      break;
    }
  }
}
