import 'dart:convert';

DokterModel dokterModelFromJson(String str) =>
    DokterModel.fromJson(json.decode(str));

String dokterModelToJson(DokterModel data) => json.encode(data.toJson());

class DokterModel {
  String id;
  String markusnicu;
  String markusvvip;
  String markusvip;
  String lukas;
  String maria;
  String fransiskus;
  String matius;
  String teresia;
  String teresiatiga;
  String yosef;
  String klara;
  String egidio;
  String yohanes;
  DateTime updatedAt;

  DokterModel({
    required this.id,
    required this.markusnicu,
    required this.markusvvip,
    required this.markusvip,
    required this.lukas,
    required this.maria,
    required this.fransiskus,
    required this.matius,
    required this.teresia,
    required this.teresiatiga,
    required this.yosef,
    required this.klara,
    required this.egidio,
    required this.yohanes,
    required this.updatedAt,
  });

  factory DokterModel.fromJson(Map<String, dynamic> json) => DokterModel(
        id: json["id"],
        markusnicu: json["markusnicu"],
        markusvvip: json["markusvvip"],
        markusvip: json["markusvip"],
        lukas: json["lukas"],
        maria: json["maria"],
        fransiskus: json["fransiskus"],
        matius: json["matius"],
        teresia: json["teresia"],
        teresiatiga: json["teresiatiga"],
        yosef: json["yosef"],
        klara: json["klara"],
        egidio: json["egidio"],
        yohanes: json["yohanes"],
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "markusnicu": markusnicu,
        "markusvvip": markusvvip,
        "markusvip": markusvip,
        "lukas": lukas,
        "maria": maria,
        "fransiskus": fransiskus,
        "matius": matius,
        "teresia": teresia,
        "teresiatiga": teresiatiga,
        "yosef": yosef,
        "klara": klara,
        "egidio": egidio,
        "yohanes": yohanes,
        "updated_at": updatedAt.toIso8601String(),
      };
}
