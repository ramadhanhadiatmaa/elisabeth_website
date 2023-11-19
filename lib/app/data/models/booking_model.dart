import 'dart:convert';

List<BookingModel> bookingModelFromJson(String str) => List<BookingModel>.from(
    json.decode(str).map((x) => BookingModel.fromJson(x)));

String bookingModelToJson(List<BookingModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BookingModel {
  String id;
  String ktp;
  String bpjs;
  String rm;
  String bayar;
  String nama;
  String poli;
  String selesai;
  int tanggal;
  String bulan;
  int tahun;
  String tempat;
  String lahir;
  String telepon;
  String alamat;
  String kelamin;
  String agama;
  String ibu;
  String keluarga;
  String status;
  String suku;
  String pekerjaan;
  String propinsi;
  String kabupaten;
  String kecamatan;
  String desa;
  DateTime created;
  DateTime updated;

  BookingModel({
    required this.id,
    required this.ktp,
    required this.bpjs,
    required this.rm,
    required this.bayar,
    required this.nama,
    required this.poli,
    required this.selesai,
    required this.tanggal,
    required this.bulan,
    required this.tahun,
    required this.tempat,
    required this.lahir,
    required this.telepon,
    required this.alamat,
    required this.kelamin,
    required this.agama,
    required this.ibu,
    required this.keluarga,
    required this.status,
    required this.suku,
    required this.pekerjaan,
    required this.propinsi,
    required this.kabupaten,
    required this.kecamatan,
    required this.desa,
    required this.created,
    required this.updated,
  });

  factory BookingModel.fromJson(Map<String, dynamic> json) => BookingModel(
        id: json["id"],
        ktp: json["ktp"],
        bpjs: json["bpjs"],
        rm: json["rm"],
        bayar: json["bayar"],
        nama: json["nama"],
        poli: json["poli"],
        selesai: json["selesai"],
        tanggal: json["tanggal"],
        bulan: json["bulan"],
        tahun: json["tahun"],
        tempat: json["tempat"],
        lahir: json["lahir"],
        telepon: json["telepon"],
        alamat: json["alamat"],
        kelamin: json["kelamin"],
        agama: json["agama"],
        ibu: json["ibu"],
        keluarga: json["keluarga"],
        status: json["status"],
        suku: json["suku"],
        pekerjaan: json["pekerjaan"],
        propinsi: json["propinsi"],
        kabupaten: json["kabupaten"],
        kecamatan: json["kecamatan"],
        desa: json["desa"],
        created: DateTime.parse(json["created"]),
        updated: DateTime.parse(json["updated"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "ktp": ktp,
        "bpjs": bpjs,
        "rm": rm,
        "bayar": bayar,
        "nama": nama,
        "poli": poli,
        "selesai": selesai,
        "tanggal": tanggal,
        "bulan": bulan,
        "tahun": tahun,
        "tempat": tempat,
        "lahir": lahir,
        "telepon": telepon,
        "alamat": alamat,
        "kelamin": kelamin,
        "agama": agama,
        "ibu": ibu,
        "keluarga": keluarga,
        "status": status,
        "suku": suku,
        "pekerjaan": pekerjaan,
        "propinsi": propinsi,
        "kabupaten": kabupaten,
        "kecamatan": kecamatan,
        "desa": desa,
        "created": created.toIso8601String(),
        "updated": updated.toIso8601String(),
      };
}
