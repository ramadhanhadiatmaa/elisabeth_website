import 'package:elisabeth_website/app/data/constants/responsive.dart';
import 'package:flutter/material.dart';
import '../../constants/color.dart';
import '../tools/text_widget.dart';
import '../tools/title_widget.dart';

class InformationSection extends StatelessWidget {
  const InformationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktop: Column(
        children: [
          const TitleWidget(
            title: "Sekilas Tentang Rumah Sakit Santa Elisabeth Sambas",
            size: 16,
          ),
          Container(
            height: 800,
            color: cWhite,
            width: MediaQuery.sizeOf(context).width,
            child: const Padding(
              padding: EdgeInsets.only(
                left: 30.0,
                top: 20,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 20.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidgetMon(
                          title: "Nama Rumah Sakit",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Alamat",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Kelurahan",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Kecamatan",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Kabupaten",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Propinsi",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Kode Pos",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Telp / Fax",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Email Rumah Sakit",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Luas Tanah",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Sertifikat",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Tahun Berdiri",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Pengelola Rumah Sakit",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Izin Operasional Tetap RS",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Nama Direktur",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Tipe Rumah Sakit",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Nama Yayasan",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Nomor NPWP",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Alamat Yayasan",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 20.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidgetMon(
                          title: ":",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 16,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidgetMon(
                        title: "RSU St. Elisabeth Sambas",
                        size: 16,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Jl. Gusti Hamzah No.029 Sambas",
                        size: 16,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Dusun Tunas Baru, Desa Durian RT. 07/04",
                        size: 16,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Sambas",
                        size: 16,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Sambas",
                        size: 16,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Kalimantan Barat",
                        size: 16,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "79400",
                        size: 16,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Telp 0562 – 391648 Fax. 0562-392408",
                        size: 16,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "rsuelisabethsambas@gmail.com",
                        size: 16,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "6.923 m2",
                        size: 16,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "488288",
                        size: 16,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Juli 1924",
                        size: 16,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Yayasan Santa Elisabeth Hungaria",
                        size: 16,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "No.615/DINKES/2018 Tanggal 2 November 2018",
                        size: 16,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "dr. Kristephen Mikha",
                        size: 16,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "D",
                        size: 16,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Yayasan Santa Elisabeth Hungaria",
                        size: 16,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "03.103.299.8 – 702.000",
                        size: 16,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Jln. Gusti Hamzah. No. 30",
                        size: 16,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      tablet: Column(
        children: [
          const TitleWidget(
            title: "Sekilas Tentang Rumah Sakit Santa Elisabeth Sambas",
            size: 16,
          ),
          Container(
            height: 800,
            color: cWhite,
            width: MediaQuery.sizeOf(context).width,
            child: const Padding(
              padding: EdgeInsets.only(
                left: 30.0,
                top: 20,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 20.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidgetMon(
                          title: "Nama Rumah Sakit",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Alamat",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Kelurahan",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Kecamatan",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Kabupaten",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Propinsi",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Kode Pos",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Telp / Fax",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Email Rumah Sakit",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Luas Tanah",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Sertifikat",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Tahun Berdiri",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Pengelola Rumah Sakit",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Izin Operasional Tetap RS",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Nama Direktur",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Tipe Rumah Sakit",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Nama Yayasan",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Nomor NPWP",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: "Alamat Yayasan",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 20.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidgetMon(
                          title: ":",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                        TextWidgetMon(
                          title: ":",
                          size: 14,
                          weight: FontWeight.w500,
                          color: cBlack,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidgetMon(
                        title: "RSU St. Elisabeth Sambas",
                        size: 14,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Jl. Gusti Hamzah No.029 Sambas",
                        size: 14,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Dusun Tunas Baru, Desa Durian RT. 07/04",
                        size: 14,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Sambas",
                        size: 14,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Sambas",
                        size: 14,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Kalimantan Barat",
                        size: 14,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "79400",
                        size: 14,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Telp 0562 – 391648 Fax. 0562-392408",
                        size: 14,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "rsuelisabethsambas@gmail.com",
                        size: 14,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "6.923 m2",
                        size: 14,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "488288",
                        size: 14,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Juli 1924",
                        size: 14,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Yayasan Santa Elisabeth Hungaria",
                        size: 14,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "No.615/DINKES/2018 Tanggal 2 November 2018",
                        size: 14,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "dr. Kristephen Mikha",
                        size: 14,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "D",
                        size: 14,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Yayasan Santa Elisabeth Hungaria",
                        size: 14,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "03.103.299.8 – 702.000",
                        size: 14,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Jln. Gusti Hamzah. No. 30",
                        size: 14,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      mobile: Column(
        children: [
          const TitleWidget(
            title: "Sekilas Tentang Rumah Sakit Santa Elisabeth Sambas",
            size: 16,
          ),
          Container(
            height: 950,
            color: cWhite,
            width: MediaQuery.sizeOf(context).width,
            child: const Padding(
              padding: EdgeInsets.only(
                left: 10.0,
                top: 20,
                right: 10.0,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidgetMon(
                        title: "Nama Rumah Sakit",
                        size: 12,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "RSU St. Elisabeth Sambas",
                        size: 14,
                        weight: FontWeight.w600,
                        color: cBlack,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextWidgetMon(
                        title: "Alamat",
                        size: 12,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Jl. Gusti Hamzah No.029 Sambas",
                        size: 14,
                        weight: FontWeight.w600,
                        color: cBlack,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextWidgetMon(
                        title: "Kelurahan",
                        size: 12,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Dusun Tunas Baru,\nDesa Durian RT. 07/04",
                        size: 14,
                        weight: FontWeight.w600,
                        color: cBlack,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextWidgetMon(
                        title: "Kecamatan",
                        size: 12,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Sambas",
                        size: 14,
                        weight: FontWeight.w600,
                        color: cBlack,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextWidgetMon(
                        title: "Kabupaten",
                        size: 12,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Sambas",
                        size: 14,
                        weight: FontWeight.w600,
                        color: cBlack,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextWidgetMon(
                        title: "Propinsi",
                        size: 12,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Kalimantan Barat",
                        size: 14,
                        weight: FontWeight.w600,
                        color: cBlack,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextWidgetMon(
                        title: "Kode Pos",
                        size: 12,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "79400",
                        size: 14,
                        weight: FontWeight.w600,
                        color: cBlack,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextWidgetMon(
                        title: "Telp / Fax",
                        size: 12,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Telp 0562 – 391648\nFax. 0562-392408",
                        size: 14,
                        weight: FontWeight.w600,
                        color: cBlack,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextWidgetMon(
                        title: "Email Rumah Sakit",
                        size: 12,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "rsuelisabethsambas@gmail.com",
                        size: 14,
                        weight: FontWeight.w600,
                        color: cBlack,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextWidgetMon(
                        title: "Luas Tanah",
                        size: 12,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "6.923 m2",
                        size: 14,
                        weight: FontWeight.w600,
                        color: cBlack,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextWidgetMon(
                        title: "Sertifikat",
                        size: 12,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "488288",
                        size: 14,
                        weight: FontWeight.w600,
                        color: cBlack,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextWidgetMon(
                        title: "Tahun Berdiri",
                        size: 12,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Juli 1924",
                        size: 14,
                        weight: FontWeight.w600,
                        color: cBlack,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextWidgetMon(
                        title: "Pengelola Rumah Sakit",
                        size: 12,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Yayasan Santa Elisabeth Hungaria",
                        size: 14,
                        weight: FontWeight.w600,
                        color: cBlack,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextWidgetMon(
                        title: "Izin Operasional Tetap RS",
                        size: 12,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "No.615/DINKES/2018\nTanggal 2 November 2018",
                        size: 14,
                        weight: FontWeight.w600,
                        color: cBlack,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextWidgetMon(
                        title: "Nama Direktur",
                        size: 12,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "dr. Kristephen Mikha",
                        size: 14,
                        weight: FontWeight.w600,
                        color: cBlack,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextWidgetMon(
                        title: "Tipe Rumah Sakit",
                        size: 12,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "D",
                        size: 14,
                        weight: FontWeight.w600,
                        color: cBlack,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextWidgetMon(
                        title: "Nama Yayasan",
                        size: 12,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Yayasan Santa Elisabeth Hungaria",
                        size: 14,
                        weight: FontWeight.w600,
                        color: cBlack,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextWidgetMon(
                        title: "Nomor NPWP",
                        size: 12,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "03.103.299.8 – 702.000",
                        size: 14,
                        weight: FontWeight.w600,
                        color: cBlack,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextWidgetMon(
                        title: "Alamat Yayasan",
                        size: 12,
                        weight: FontWeight.w500,
                        color: cBlack,
                      ),
                      TextWidgetMon(
                        title: "Jln. Gusti Hamzah. No. 30",
                        size: 14,
                        weight: FontWeight.w600,
                        color: cBlack,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
