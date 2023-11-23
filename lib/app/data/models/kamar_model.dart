import 'dart:convert';

KamarModel kamarModelFromJson(String str) =>
    KamarModel.fromJson(json.decode(str));

String kamarModelToJson(KamarModel data) => json.encode(data.toJson());

class KamarModel {
  String id;
  int markusnicu;
  int markusvvip;
  int markusvip;
  int lukas;
  int maria;
  int fransiskus;
  int matius;
  int teresia;
  int teresiatiga;
  int yosef;
  int klara;
  int egidio;
  int yohanes;
  int total;
  int tersedia;
  int terisi;
  DateTime updatedAt;

  KamarModel({
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
    required this.total,
    required this.tersedia,
    required this.terisi,
    required this.updatedAt,
  });

  factory KamarModel.fromJson(Map<String, dynamic> json) => KamarModel(
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
        total: json["total"],
        tersedia: json["tersedia"],
        terisi: json["terisi"],
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
        "total": total,
        "tersedia": tersedia,
        "terisi": terisi,
        "updated_at": updatedAt.toIso8601String(),
      };
}
