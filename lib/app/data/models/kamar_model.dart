// To parse this JSON data, do
//
//     final kamarModel = kamarModelFromJson(jsonString);

import 'dart:convert';

KamarModel kamarModelFromJson(String str) =>
    KamarModel.fromJson(json.decode(str));

String kamarModelToJson(KamarModel data) => json.encode(data.toJson());

class KamarModel {
  String id;
  String markusNicu;
  String markusVvip;
  String markusVip;
  String lukas;
  String maria;
  String fransiskus;
  String matius;
  String teresia;
  String teresiaTiga;
  String yosef;
  String klara;
  String egidio;
  String yohanes;
  DateTime updatedAt;

  KamarModel({
    required this.id,
    required this.markusNicu,
    required this.markusVvip,
    required this.markusVip,
    required this.lukas,
    required this.maria,
    required this.fransiskus,
    required this.matius,
    required this.teresia,
    required this.teresiaTiga,
    required this.yosef,
    required this.klara,
    required this.egidio,
    required this.yohanes,
    required this.updatedAt,
  });

  factory KamarModel.fromJson(Map<String, dynamic> json) => KamarModel(
        id: json["id"],
        markusNicu: json["markus_nicu"],
        markusVvip: json["markus_vvip"],
        markusVip: json["markus_vip"],
        lukas: json["lukas"],
        maria: json["maria"],
        fransiskus: json["fransiskus"],
        matius: json["matius"],
        teresia: json["teresia"],
        teresiaTiga: json["teresia_tiga"],
        yosef: json["yosef"],
        klara: json["klara"],
        egidio: json["egidio"],
        yohanes: json["yohanes"],
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "markus_nicu": markusNicu,
        "markus_vvip": markusVvip,
        "markus_vip": markusVip,
        "lukas": lukas,
        "maria": maria,
        "fransiskus": fransiskus,
        "matius": matius,
        "teresia": teresia,
        "teresia_tiga": teresiaTiga,
        "yosef": yosef,
        "klara": klara,
        "egidio": egidio,
        "yohanes": yohanes,
        "updated_at": updatedAt.toIso8601String(),
      };
}
