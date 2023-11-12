import 'package:elisabeth_website/app/data/constants/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../modules/siriel/controllers/siriel_controller.dart';
import '../../constants/color.dart';
import '../tools/table_widget.dart';
import '../tools/text_widget.dart';
import '../tools/title_widget.dart';

class BedSection extends StatelessWidget {
  const BedSection({
    super.key,
    required this.sirielC,
  });

  final SirielController sirielC;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktop: Column(
        children: [
          const TitleWidget(
            title: "Sistem Informasi Rawat Inap Rumah Sakit Elisabeth",
            size: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  color: cBlue,
                  width: 700,
                  height: 50,
                  child: const Center(
                    child: TextWidgetMon(
                      title: "Total Kamar : 47",
                      size: 20,
                      weight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: cBlue,
                  width: 700,
                  height: 50,
                  child: const Center(
                    child: TextWidgetMon(
                      title: "Tersedia: 48",
                      size: 20,
                      weight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: cBlue,
                  width: 700,
                  height: 50,
                  child: const Center(
                    child: TextWidgetMon(
                      title: "Ditempati : ",
                      size: 20,
                      weight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 700,
                  child: Table(
                    border: TableBorder.all(
                      color: cWhite,
                      width: 0.5,
                    ),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      const TableRow(
                          decoration: BoxDecoration(
                            color: cBlue,
                          ),
                          children: [
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextWidgetMon(
                                  align: TextAlign.center,
                                  title: "Lokasi",
                                  size: 20,
                                  weight: FontWeight.normal,
                                  color: cWhite,
                                ),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextWidgetMon(
                                  align: TextAlign.center,
                                  title: "Kelas",
                                  size: 20,
                                  weight: FontWeight.normal,
                                  color: cWhite,
                                ),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextWidgetMon(
                                  align: TextAlign.center,
                                  title: "Tersedia",
                                  size: 20,
                                  weight: FontWeight.normal,
                                  color: cWhite,
                                ),
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            TableCell(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width,
                                height: 30,
                                decoration: const BoxDecoration(color: cBlue),
                                child: const Center(
                                  child: TextWidgetMon(
                                    align: TextAlign.center,
                                    title: "Total",
                                    size: 14,
                                    weight: FontWeight.w400,
                                    color: cWhite,
                                  ),
                                ),
                              ),
                            ),
                            const TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextWidgetMon(
                                  align: TextAlign.center,
                                  title: "ALL",
                                  size: 14,
                                  weight: FontWeight.w400,
                                  color: cBlue,
                                ),
                              ),
                            ),
                            const TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextWidgetMon(
                                  align: TextAlign.center,
                                  title: "48",
                                  size: 14,
                                  weight: FontWeight.w400,
                                  color: cBlue,
                                ),
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Markus",
                              size: 30,
                            ),
                            const TableObx(
                              title: "NICU",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.markusNicu.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Markus",
                              size: 30,
                            ),
                            const TableObx(
                              title: "VVIP",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.markusVvip.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Markus",
                              size: 30,
                            ),
                            const TableObx(
                              title: "VVIP",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.markusVip.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Lukas",
                              size: 30,
                            ),
                            const TableObx(
                              title: "KELAS 1",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.lukas.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Maria",
                              size: 30,
                            ),
                            const TableObx(
                              title: "KELAS 1",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.maria.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Matius",
                              size: 30,
                            ),
                            const TableObx(
                              title: "KELAS 2",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.matius.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Fransiskus",
                              size: 30,
                            ),
                            const TableObx(
                              title: "KELAS 2",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.fransiskus.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Teresia",
                              size: 30,
                            ),
                            const TableObx(
                              title: "KELAS 2",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.teresia.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Yosef",
                              size: 30,
                            ),
                            const TableObx(
                              title: "KELAS 3",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.yosef.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Teresia",
                              size: 30,
                            ),
                            const TableObx(
                              title: "KELAS 3",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.teresiaTiga.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Egidio",
                              size: 30,
                            ),
                            const TableObx(
                              title: "KELAS 3",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.egidio.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Klara",
                              size: 30,
                            ),
                            const TableObx(
                              title: "KELAS 3",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.klara.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Yohanes",
                              size: 30,
                            ),
                            const TableObx(
                              title: "ISOLASI",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.yohanes.value,
                              ),
                            ),
                          ]),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      tablet: Column(
        children: [
          const TitleWidget(
            title: "Sistem Informasi Rawat Inap Rumah Sakit Elisabeth",
            size: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  color: cBlue,
                  width: 700,
                  height: 50,
                  child: const Center(
                    child: TextWidgetMon(
                      title: "Total Kamar : 47",
                      size: 20,
                      weight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: cBlue,
                  width: 700,
                  height: 50,
                  child: const Center(
                    child: TextWidgetMon(
                      title: "Tersedia: 48",
                      size: 20,
                      weight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: cBlue,
                  width: 700,
                  height: 50,
                  child: const Center(
                    child: TextWidgetMon(
                      title: "Ditempati : ",
                      size: 20,
                      weight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 700,
                  child: Table(
                    border: TableBorder.all(
                      color: cWhite,
                      width: 0.5,
                    ),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      const TableRow(
                          decoration: BoxDecoration(
                            color: cBlue,
                          ),
                          children: [
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextWidgetMon(
                                  align: TextAlign.center,
                                  title: "Lokasi",
                                  size: 20,
                                  weight: FontWeight.normal,
                                  color: cWhite,
                                ),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextWidgetMon(
                                  align: TextAlign.center,
                                  title: "Kelas",
                                  size: 20,
                                  weight: FontWeight.normal,
                                  color: cWhite,
                                ),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextWidgetMon(
                                  align: TextAlign.center,
                                  title: "Tersedia",
                                  size: 20,
                                  weight: FontWeight.normal,
                                  color: cWhite,
                                ),
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            TableCell(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width,
                                height: 30,
                                decoration: const BoxDecoration(color: cBlue),
                                child: const Center(
                                  child: TextWidgetMon(
                                    align: TextAlign.center,
                                    title: "Total",
                                    size: 14,
                                    weight: FontWeight.w400,
                                    color: cWhite,
                                  ),
                                ),
                              ),
                            ),
                            const TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextWidgetMon(
                                  align: TextAlign.center,
                                  title: "ALL",
                                  size: 14,
                                  weight: FontWeight.w400,
                                  color: cBlue,
                                ),
                              ),
                            ),
                            const TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextWidgetMon(
                                  align: TextAlign.center,
                                  title: "48",
                                  size: 14,
                                  weight: FontWeight.w400,
                                  color: cBlue,
                                ),
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Markus",
                              size: 30,
                            ),
                            const TableObx(
                              title: "NICU",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.markusNicu.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Markus",
                              size: 30,
                            ),
                            const TableObx(
                              title: "VVIP",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.markusVvip.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Markus",
                              size: 30,
                            ),
                            const TableObx(
                              title: "VVIP",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.markusVip.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Lukas",
                              size: 30,
                            ),
                            const TableObx(
                              title: "KELAS 1",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.lukas.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Maria",
                              size: 30,
                            ),
                            const TableObx(
                              title: "KELAS 1",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.maria.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Matius",
                              size: 30,
                            ),
                            const TableObx(
                              title: "KELAS 2",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.matius.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Fransiskus",
                              size: 30,
                            ),
                            const TableObx(
                              title: "KELAS 2",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.fransiskus.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Teresia",
                              size: 30,
                            ),
                            const TableObx(
                              title: "KELAS 2",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.teresia.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Yosef",
                              size: 30,
                            ),
                            const TableObx(
                              title: "KELAS 3",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.yosef.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Teresia",
                              size: 30,
                            ),
                            const TableObx(
                              title: "KELAS 3",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.teresiaTiga.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Egidio",
                              size: 30,
                            ),
                            const TableObx(
                              title: "KELAS 3",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.egidio.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Klara",
                              size: 30,
                            ),
                            const TableObx(
                              title: "KELAS 3",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.klara.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Yohanes",
                              size: 30,
                            ),
                            const TableObx(
                              title: "ISOLASI",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.yohanes.value,
                              ),
                            ),
                          ]),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      mobile: Column(
        children: [
          const TitleWidget(
            title: "Sistem Informasi Rawat Inap Rumah Sakit Elisabeth",
            size: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  color: cBlue,
                  width: 700,
                  height: 50,
                  child: const Center(
                    child: TextWidgetMon(
                      title: "Total Kamar : 47",
                      size: 20,
                      weight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: cBlue,
                  width: 700,
                  height: 50,
                  child: const Center(
                    child: TextWidgetMon(
                      title: "Tersedia: 48",
                      size: 20,
                      weight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: cBlue,
                  width: 700,
                  height: 50,
                  child: const Center(
                    child: TextWidgetMon(
                      title: "Ditempati : ",
                      size: 20,
                      weight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 700,
                  child: Table(
                    border: TableBorder.all(
                      color: cWhite,
                      width: 0.5,
                    ),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      const TableRow(
                          decoration: BoxDecoration(
                            color: cBlue,
                          ),
                          children: [
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextWidgetMon(
                                  align: TextAlign.center,
                                  title: "Lokasi",
                                  size: 20,
                                  weight: FontWeight.normal,
                                  color: cWhite,
                                ),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextWidgetMon(
                                  align: TextAlign.center,
                                  title: "Kelas",
                                  size: 20,
                                  weight: FontWeight.normal,
                                  color: cWhite,
                                ),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextWidgetMon(
                                  align: TextAlign.center,
                                  title: "Tersedia",
                                  size: 20,
                                  weight: FontWeight.normal,
                                  color: cWhite,
                                ),
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            TableCell(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width,
                                height: 30,
                                decoration: const BoxDecoration(color: cBlue),
                                child: const Center(
                                  child: TextWidgetMon(
                                    align: TextAlign.center,
                                    title: "Total",
                                    size: 14,
                                    weight: FontWeight.w400,
                                    color: cWhite,
                                  ),
                                ),
                              ),
                            ),
                            const TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextWidgetMon(
                                  align: TextAlign.center,
                                  title: "ALL",
                                  size: 14,
                                  weight: FontWeight.w400,
                                  color: cBlue,
                                ),
                              ),
                            ),
                            const TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextWidgetMon(
                                  align: TextAlign.center,
                                  title: "48",
                                  size: 14,
                                  weight: FontWeight.w400,
                                  color: cBlue,
                                ),
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Markus",
                              size: 40,
                            ),
                            const TableObx(
                              title: "NICU",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.markusNicu.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Markus",
                              size: 40,
                            ),
                            const TableObx(
                              title: "VVIP",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.markusVvip.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Markus",
                              size: 40,
                            ),
                            const TableObx(
                              title: "VVIP",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.markusVip.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Lukas",
                              size: 40,
                            ),
                            const TableObx(
                              title: "KELAS 1",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.lukas.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Maria",
                              size: 40,
                            ),
                            const TableObx(
                              title: "KELAS 1",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.maria.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Matius",
                              size: 40,
                            ),
                            const TableObx(
                              title: "KELAS 2",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.matius.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Fransiskus",
                              size: 40,
                            ),
                            const TableObx(
                              title: "KELAS 2",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.fransiskus.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Teresia",
                              size: 40,
                            ),
                            const TableObx(
                              title: "KELAS 2",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.teresia.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Yosef",
                              size: 40,
                            ),
                            const TableObx(
                              title: "KELAS 3",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.yosef.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Teresia",
                              size: 40,
                            ),
                            const TableObx(
                              title: "KELAS 3",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.teresiaTiga.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Egidio",
                              size: 40,
                            ),
                            const TableObx(
                              title: "KELAS 3",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.egidio.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Klara",
                              size: 40,
                            ),
                            const TableObx(
                              title: "KELAS 3",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.klara.value,
                              ),
                            ),
                          ]),
                      TableRow(
                          decoration: const BoxDecoration(
                            color: cWhite,
                          ),
                          children: [
                            const TableCon(
                              title: "ST.Yohanes",
                              size: 40,
                            ),
                            const TableObx(
                              title: "ISOLASI",
                            ),
                            Obx(
                              () => TableObx(
                                title: sirielC.yohanes.value,
                              ),
                            ),
                          ]),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
