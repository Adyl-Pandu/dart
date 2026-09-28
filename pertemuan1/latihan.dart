void main() {
  // var barang toko

  String barangToko = 'Laptop';
  int stok = 90;
  double harga = 100000.0;
  bool tersedia = true;

  // stok = 20; // nilai boleh berubah, tapi tipe tetap

  print(barangToko);
  print(stok);
  print(harga);
  print(tersedia);

  // menampilkan variabel dalam teks
  print('beli barang $barangToko dengan harga $harga');

  // === 2. Nullable & Null Safety ===

  String? alamat = 'Jl. Merdeka No. 10';
  print(alamat);

  alamat = null;
  print(alamat);

  // memberikan teks jika data null
  String hasilAlamat = alamat ?? 'Alamat belum diisi';
  print(hasilAlamat);

  // === 3. final vs const ===

  final waktuSekarang = DateTime.now(); // OK, baru diketahui saat program jalan
  const namaToko = 'Toko Leptop';         // OK, nilainya sudah pasti

  print(waktuSekarang);
  print(namaToko);

  // === 4. late modifier ===

  late String namaPelangan;

  namaPelangan = 'Budi';   // diisi belakangan
  print(namaPelangan);   

  // === 5. List, Set, Map ===


  List<String> daftarBarang = ['laptop', 'ipad', 'laptop'];

  print(daftarBarang);        // [laptop, ipad, laptop]
  print(daftarBarang[1]);     // ipad
  print(daftarBarang.length); // 3

  daftarBarang.add('keyboard');
  daftarBarang.remove('ipad');
  print(daftarBarang);        // [laptop, laptop, keyboard]

  Set<String> pelangganToko = {'Budi', 'Ani', 'Budi'};

  print(pelangganToko);        // {Budi, Ani}  (Budi cuma sekali)
  print(pelangganToko.length); // 2

  pelangganToko.add('Citra');
  pelangganToko.add('Ani');    // diabaikan, sudah ada
  print(pelangganToko);        // {Budi, Ani, Citra}

  print(pelangganToko.contains('Budi')); // cek apakah ada true/false

  Map<String, int> hargaBarang = {
    'laptop': 15000000,
    'keyboard': 120000,
  };

  print(hargaBarang['keyboard']); // 120000

  hargaBarang['ipad'] = 10000000;    // tambah data baru
  hargaBarang['keyboard'] = 1300000; // ubah data yang ada
  print(hargaBarang);
  // {laptop: 15000000, keyboard: 1300000, ipad: 10000000}

  print(hargaBarang['cpu']); // null (key tidak ada)

}