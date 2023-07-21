class Warung {
  final String nama;
  final String lokasi;
  final String deskripsi;
  final String gambar;

  Warung({
    required this.nama,
    required this.lokasi,
    required this.deskripsi,
    required this.gambar,
  });

  factory Warung.fromJson(Map<String, dynamic> json) {
    return Warung(
        nama: json['nama'],
        lokasi: json['lokasi'],
        deskripsi: json['deskripsi'],
        gambar: json['gambar']);
  }
}
