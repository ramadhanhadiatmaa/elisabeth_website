class PoliModel {
  PoliModel({
    String? kodePoli,
    String? dokter,
    String? nama,
    String? foto,
    String? status,
  }) {
    _kodePoli = kodePoli;
    _dokter = dokter;
    _nama = nama;
    _foto = foto;
    _status = status;
  }

  PoliModel.fromJson(dynamic json) {
    _kodePoli = json["kode_poli"];
    _dokter = json["dokter"];
    _nama = json["nama"];
    _foto = json["foto"];
    _status = json["status"];
  }

  String? _kodePoli;
  String? _dokter;
  String? _nama;
  String? _foto;
  String? _status;

  String? get kodePoli => _kodePoli;
  String? get dokter => _dokter;
  String? get nama => _nama;
  String? get foto => _foto;
  String? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["kode_poli"] = _kodePoli;
    map["dokter"] = _dokter;
    map["nama"] = _nama;
    map["foto"] = _foto;
    map["status"] = _status;
    return map;
  }
}
