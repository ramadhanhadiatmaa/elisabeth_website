import 'package:elisabeth_website/app/data/constants/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../modules/lama/controllers/lama_controller.dart';
import '../../constants/color.dart';
import '../tools/button_widget.dart';
import '../tools/form_widget.dart';
import '../tools/text_info_widget.dart';
import '../tools/text_widget.dart';

class LamaSection extends StatelessWidget {
  const LamaSection({
    super.key,
    required this.lamaC,
  });

  final LamaController lamaC;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktop: Container(
        color: cWhite,
        child: ListView(children: [
          Center(
            child: SizedBox(
              width: 400,
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  const TextInfo(),
                  FormWidget(
                    title: "No KTP / KIA / SIM",
                    controller: lamaC.ktp,
                  ),
                  FormWidget(
                    title: "No Rekam Medis",
                    controller: lamaC.rm,
                  ),
                  FormWidgetT(
                    title: "Nama Lengkap",
                    controller: lamaC.nama,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextWidgetMon(
                            align: TextAlign.start,
                            title: "Pilih Jenis Pembayaran",
                            size: 12,
                            weight: FontWeight.w600,
                            color: cBlack,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Obx(() => DropdownButton(
                                value: lamaC.bayarSelected.value,
                                borderRadius: BorderRadius.circular(8),
                                elevation: 5,
                                style: GoogleFonts.montserrat(
                                  color: cBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                underline: Container(
                                  color: Colors.transparent,
                                ),
                                items: lamaC.bayar.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  lamaC.bayarSelected.value = newValue!;
                                },
                              )),
                        ],
                      ),
                    ],
                  ),
                  FormTextWidget(
                    title: "No BPJS",
                    text: "*Kosongkan jika pembayaran umum atau rekanan",
                    controller: lamaC.bpjs,
                  ),
                  FormWidgetT(
                    title: "Tanggal Lahir (DD/MM/YYYY)",
                    controller: lamaC.lahir,
                  ),
                  FormTextWidget(
                    title: "No Handphone",
                    text:
                        "*Isi dengan nomor aktif, atau kosongkan jika tidak punya",
                    controller: lamaC.hp,
                  ),
                  FormWidgetT(
                    title: "Alamat",
                    controller: lamaC.alamat,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextWidgetMon(
                            align: TextAlign.start,
                            title: "Daftar Poli Ke -",
                            size: 12,
                            weight: FontWeight.w600,
                            color: cBlack,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Obx(() => DropdownButton(
                                value: lamaC.poliSelected.value,
                                borderRadius: BorderRadius.circular(8),
                                elevation: 5,
                                style: GoogleFonts.montserrat(
                                  color: cBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                underline: Container(
                                  color: Colors.transparent,
                                ),
                                items: lamaC.poli.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  lamaC.poliSelected.value = newValue!;
                                },
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextWidgetMon(
                            align: TextAlign.start,
                            title: "Pada Tanggal",
                            size: 12,
                            weight: FontWeight.w600,
                            color: cBlack,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Obx(() => DropdownButton(
                                value: lamaC.tanggalSelected.value,
                                borderRadius: BorderRadius.circular(8),
                                elevation: 5,
                                style: GoogleFonts.montserrat(
                                  color: cBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                underline: Container(
                                  color: Colors.transparent,
                                ),
                                items: lamaC.tanggal.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  lamaC.tanggalSelected.value = newValue!;
                                },
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextWidgetMon(
                            align: TextAlign.start,
                            title: "Bulan",
                            size: 12,
                            weight: FontWeight.w600,
                            color: cBlack,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Obx(() => DropdownButton(
                                value: lamaC.bulanSelected.value,
                                borderRadius: BorderRadius.circular(8),
                                elevation: 5,
                                style: GoogleFonts.montserrat(
                                  color: cBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                underline: Container(
                                  color: Colors.transparent,
                                ),
                                items: lamaC.bulan.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  lamaC.bulanSelected.value = newValue!;
                                },
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const TextWidgetMon(
                    align: TextAlign.justify,
                    title:
                        "*Pastikan semua informasi diisi dengan benar dan sesuai dengan ketentuan untuk keperluan pendaftaran.",
                    size: 12,
                    weight: FontWeight.w300,
                    color: cBlack,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ButtonWidget(
                    title: "DAFTAR POLI",
                    color: cBlue,
                    press: () {
                      lamaC.postData();
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
      tablet: Container(
        color: cWhite,
        child: ListView(children: [
          Center(
            child: SizedBox(
              width: 400,
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  const TextInfo(),
                  FormWidget(
                    title: "No KTP / KIA / SIM",
                    controller: lamaC.ktp,
                  ),
                  FormWidget(
                    title: "No Rekam Medis",
                    controller: lamaC.rm,
                  ),
                  FormWidgetT(
                    title: "Nama Lengkap",
                    controller: lamaC.nama,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextWidgetMon(
                            align: TextAlign.start,
                            title: "Pilih Jenis Pembayaran",
                            size: 12,
                            weight: FontWeight.w600,
                            color: cBlack,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Obx(() => DropdownButton(
                                value: lamaC.bayarSelected.value,
                                borderRadius: BorderRadius.circular(8),
                                elevation: 5,
                                style: GoogleFonts.montserrat(
                                  color: cBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                underline: Container(
                                  color: Colors.transparent,
                                ),
                                items: lamaC.bayar.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  lamaC.bayarSelected.value = newValue!;
                                },
                              )),
                        ],
                      ),
                    ],
                  ),
                  FormTextWidget(
                    title: "No BPJS",
                    text: "*Kosongkan jika pembayaran umum atau rekanan",
                    controller: lamaC.bpjs,
                  ),
                  FormWidgetT(
                    title: "Tanggal Lahir (DD/MM/YYYY)",
                    controller: lamaC.lahir,
                  ),
                  FormTextWidget(
                    title: "No Handphone",
                    text:
                        "*Isi dengan nomor aktif, atau kosongkan jika tidak punya",
                    controller: lamaC.hp,
                  ),
                  FormWidgetT(
                    title: "Alamat",
                    controller: lamaC.alamat,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextWidgetMon(
                            align: TextAlign.start,
                            title: "Daftar Poli Ke -",
                            size: 12,
                            weight: FontWeight.w600,
                            color: cBlack,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Obx(() => DropdownButton(
                                value: lamaC.poliSelected.value,
                                borderRadius: BorderRadius.circular(8),
                                elevation: 5,
                                style: GoogleFonts.montserrat(
                                  color: cBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                underline: Container(
                                  color: Colors.transparent,
                                ),
                                items: lamaC.poli.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  lamaC.poliSelected.value = newValue!;
                                },
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextWidgetMon(
                            align: TextAlign.start,
                            title: "Pada Tanggal",
                            size: 12,
                            weight: FontWeight.w600,
                            color: cBlack,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Obx(() => DropdownButton(
                                value: lamaC.tanggalSelected.value,
                                borderRadius: BorderRadius.circular(8),
                                elevation: 5,
                                style: GoogleFonts.montserrat(
                                  color: cBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                underline: Container(
                                  color: Colors.transparent,
                                ),
                                items: lamaC.tanggal.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  lamaC.tanggalSelected.value = newValue!;
                                },
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextWidgetMon(
                            align: TextAlign.start,
                            title: "Bulan",
                            size: 12,
                            weight: FontWeight.w600,
                            color: cBlack,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Obx(() => DropdownButton(
                                value: lamaC.bulanSelected.value,
                                borderRadius: BorderRadius.circular(8),
                                elevation: 5,
                                style: GoogleFonts.montserrat(
                                  color: cBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                underline: Container(
                                  color: Colors.transparent,
                                ),
                                items: lamaC.bulan.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  lamaC.bulanSelected.value = newValue!;
                                },
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const TextWidgetMon(
                    align: TextAlign.justify,
                    title:
                        "*Pastikan semua informasi diisi dengan benar dan sesuai dengan ketentuan untuk keperluan pendaftaran.",
                    size: 12,
                    weight: FontWeight.w300,
                    color: cBlack,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ButtonWidget(
                    title: "DAFTAR POLI",
                    color: cBlue,
                    press: () {
                      lamaC.postData();
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
      mobile: Container(
        color: cWhite,
        child: ListView(children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    const TextInfo(),
                    FormWidget(
                      title: "No KTP / KIA / SIM",
                      controller: lamaC.ktp,
                    ),
                    FormWidget(
                      title: "No Rekam Medis",
                      controller: lamaC.rm,
                    ),
                    FormWidgetT(
                      title: "Nama Lengkap",
                      controller: lamaC.nama,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextWidgetMon(
                              align: TextAlign.start,
                              title: "Pilih Jenis Pembayaran",
                              size: 12,
                              weight: FontWeight.w600,
                              color: cBlack,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Obx(() => DropdownButton(
                                  value: lamaC.bayarSelected.value,
                                  borderRadius: BorderRadius.circular(8),
                                  elevation: 5,
                                  style: GoogleFonts.montserrat(
                                    color: cBlack,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  underline: Container(
                                    color: Colors.transparent,
                                  ),
                                  items: lamaC.bayar.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    lamaC.bayarSelected.value = newValue!;
                                  },
                                )),
                          ],
                        ),
                      ],
                    ),
                    FormTextWidget(
                      title: "No BPJS",
                      text: "*Kosongkan jika pembayaran\numum atau rekanan",
                      controller: lamaC.bpjs,
                    ),
                    FormWidgetT(
                      title: "Tanggal Lahir (DD/MM/YYYY)",
                      controller: lamaC.lahir,
                    ),
                    FormTextWidget(
                      title: "No Handphone",
                      text:
                          "*Isi dengan nomor aktif, atau\nkosongkan jika tidak punya",
                      controller: lamaC.hp,
                    ),
                    FormWidgetT(
                      title: "Alamat",
                      controller: lamaC.alamat,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextWidgetMon(
                              align: TextAlign.start,
                              title: "Daftar Poli Ke -",
                              size: 12,
                              weight: FontWeight.w600,
                              color: cBlack,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Obx(() => DropdownButton(
                                  value: lamaC.poliSelected.value,
                                  borderRadius: BorderRadius.circular(8),
                                  elevation: 5,
                                  style: GoogleFonts.montserrat(
                                    color: cBlack,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  underline: Container(
                                    color: Colors.transparent,
                                  ),
                                  items: lamaC.poli.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    lamaC.poliSelected.value = newValue!;
                                  },
                                )),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextWidgetMon(
                              align: TextAlign.start,
                              title: "Pada Tanggal",
                              size: 12,
                              weight: FontWeight.w600,
                              color: cBlack,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Obx(() => DropdownButton(
                                  value: lamaC.tanggalSelected.value,
                                  borderRadius: BorderRadius.circular(8),
                                  elevation: 5,
                                  style: GoogleFonts.montserrat(
                                    color: cBlack,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  underline: Container(
                                    color: Colors.transparent,
                                  ),
                                  items: lamaC.tanggal.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    lamaC.tanggalSelected.value = newValue!;
                                  },
                                )),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextWidgetMon(
                              align: TextAlign.start,
                              title: "Bulan",
                              size: 12,
                              weight: FontWeight.w600,
                              color: cBlack,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Obx(() => DropdownButton(
                                  value: lamaC.bulanSelected.value,
                                  borderRadius: BorderRadius.circular(8),
                                  elevation: 5,
                                  style: GoogleFonts.montserrat(
                                    color: cBlack,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  underline: Container(
                                    color: Colors.transparent,
                                  ),
                                  items: lamaC.bulan.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    lamaC.bulanSelected.value = newValue!;
                                  },
                                )),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const TextWidgetMon(
                      align: TextAlign.justify,
                      title:
                          "*Pastikan semua informasi diisi dengan benar dan sesuai dengan ketentuan untuk keperluan pendaftaran.",
                      size: 12,
                      weight: FontWeight.w300,
                      color: cBlack,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ButtonWidget(
                      title: "DAFTAR POLI",
                      color: cBlue,
                      press: () {
                        lamaC.postData();
                      },
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
