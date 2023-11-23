import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../modules/baru/controllers/baru_controller.dart';
import '../../constants/color.dart';
import '../../constants/responsive.dart';
import '../tools/button_widget.dart';
import '../tools/form_widget.dart';
import '../tools/text_info_widget.dart';
import '../tools/text_widget.dart';

class BaruSection extends StatelessWidget {
  const BaruSection({
    super.key,
    required this.baruC,
  });

  final BaruController baruC;

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
                    controller: baruC.ktp,
                  ),
                  FormWidgetT(
                    title: "Nama Lengkap",
                    controller: baruC.nama,
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
                                value: baruC.bayarSelected.value,
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
                                items: baruC.bayar.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  baruC.bayarSelected.value = newValue!;
                                },
                              )),
                        ],
                      ),
                    ],
                  ),
                  Obx(
                    () => Visibility(
                        visible: baruC.bayarSelected.value == "BPJS",
                        child: FormTextWidget(
                          title: "No BPJS",
                          text: "*Kosongkan jika pembayaran umum atau rekanan",
                          controller: baruC.bpjs,
                        )),
                  ),
                  FormWidgetT(
                    title: "Tempat Lahir",
                    controller: baruC.tempat,
                  ),
                  FormWidgetT(
                    title: "Tanggal Lahir (DD/MM/YYYY)",
                    controller: baruC.lahir,
                  ),
                  FormTextWidget(
                    title: "No Handphone",
                    text:
                        "*Isi dengan nomor aktif, atau kosongkan jika tidak punya",
                    controller: baruC.hp,
                  ),
                  FormWidgetT(
                    title: "Alamat",
                    controller: baruC.alamat,
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
                            title: "Agama",
                            size: 12,
                            weight: FontWeight.w600,
                            color: cBlack,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Obx(() => DropdownButton(
                                value: baruC.agamaSelected.value,
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
                                items: baruC.agama.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  baruC.agamaSelected.value = newValue!;
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
                            title: "Jenis Kelamin",
                            size: 12,
                            weight: FontWeight.w600,
                            color: cBlack,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Obx(() => DropdownButton(
                                value: baruC.kelaminSelected.value,
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
                                items: baruC.kelamin.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  baruC.kelaminSelected.value = newValue!;
                                },
                              )),
                        ],
                      ),
                    ],
                  ),
                  FormWidgetT(
                    title: "Nama Ibu Kandung",
                    controller: baruC.ibu,
                  ),
                  FormWidgetT(
                    title: "Nama Family",
                    controller: baruC.keluarga,
                  ),
                  FormWidgetT(
                    title: "Status Hubungan",
                    controller: baruC.status,
                  ),
                  FormWidgetT(
                    title: "Suku",
                    controller: baruC.suku,
                  ),
                  FormWidgetT(
                    title: "Pekerjaan",
                    controller: baruC.pekerjaan,
                  ),
                  FormWidgetT(
                    title: "Propinsi",
                    controller: baruC.propinsi,
                  ),
                  FormWidgetT(
                    title: "Kabupaten",
                    controller: baruC.kabupaten,
                  ),
                  FormWidgetT(
                    title: "Kecamatan",
                    controller: baruC.kecamatan,
                  ),
                  FormWidgetT(
                    title: "Desa",
                    controller: baruC.desa,
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
                                value: baruC.poliSelected.value,
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
                                items: baruC.poli.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  baruC.poliSelected.value = newValue!;
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
                            title: "Tanggal",
                            size: 12,
                            weight: FontWeight.w600,
                            color: cBlack,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Obx(() => DropdownButton(
                                value: baruC.tanggalSelected.value,
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
                                items: baruC.tanggal.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  baruC.tanggalSelected.value = newValue!;
                                },
                              )),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
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
                                value: baruC.bulanSelected.value,
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
                                items: baruC.bulan.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  baruC.bulanSelected.value = newValue!;
                                },
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Obx(
                    () => Column(
                      children: [
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          value: baruC.isAgree.value,
                          onChanged: (value) {
                            baruC.isAgree.toggle();
                          },
                          title: const TextWidgetMon(
                            title:
                                "Saya telah membaca kebijakan privasi dan aturan pengguna website Rumah Sakit Umum Santa Elisabeth Sambas",
                            color: cBlack,
                            size: 10,
                            weight: FontWeight.w300,
                          ),
                        ),
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          value: baruC.isRight.value,
                          onChanged: (value) {
                            baruC.isRight.toggle();
                          },
                          title: const TextWidgetMon(
                            title:
                                "Saya telah mengisi semua data di atas dengan benar",
                            color: cBlack,
                            size: 10,
                            weight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ButtonWidget(
                    title: "DAFTAR",
                    color: cBlue,
                    press: () {
                      baruC.postData();
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
                    controller: baruC.ktp,
                  ),
                  FormWidgetT(
                    title: "Nama Lengkap",
                    controller: baruC.nama,
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
                                value: baruC.bayarSelected.value,
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
                                items: baruC.bayar.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  baruC.bayarSelected.value = newValue!;
                                },
                              )),
                        ],
                      ),
                    ],
                  ),
                  FormTextWidget(
                    title: "No BPJS",
                    text: "*Kosongkan jika pembayaran umum atau rekanan",
                    controller: baruC.bpjs,
                  ),
                  FormWidgetT(
                    title: "Tempat Lahir",
                    controller: baruC.tempat,
                  ),
                  FormWidgetT(
                    title: "Tanggal Lahir (DD/MM/YYYY)",
                    controller: baruC.lahir,
                  ),
                  FormTextWidget(
                    title: "No Handphone",
                    text:
                        "*Isi dengan nomor aktif, atau kosongkan jika tidak punya",
                    controller: baruC.hp,
                  ),
                  FormWidgetT(
                    title: "Alamat",
                    controller: baruC.alamat,
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
                            title: "Agama",
                            size: 12,
                            weight: FontWeight.w600,
                            color: cBlack,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Obx(() => DropdownButton(
                                value: baruC.agamaSelected.value,
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
                                items: baruC.agama.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  baruC.agamaSelected.value = newValue!;
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
                            title: "Jenis Kelamin",
                            size: 12,
                            weight: FontWeight.w600,
                            color: cBlack,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Obx(() => DropdownButton(
                                value: baruC.kelaminSelected.value,
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
                                items: baruC.kelamin.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  baruC.kelaminSelected.value = newValue!;
                                },
                              )),
                        ],
                      ),
                    ],
                  ),
                  FormWidgetT(
                    title: "Nama Ibu Kandung",
                    controller: baruC.ibu,
                  ),
                  FormWidgetT(
                    title: "Nama Family",
                    controller: baruC.keluarga,
                  ),
                  FormWidgetT(
                    title: "Status Hubungan",
                    controller: baruC.status,
                  ),
                  FormWidgetT(
                    title: "Suku",
                    controller: baruC.suku,
                  ),
                  FormWidgetT(
                    title: "Pekerjaan",
                    controller: baruC.pekerjaan,
                  ),
                  FormWidgetT(
                    title: "Propinsi",
                    controller: baruC.propinsi,
                  ),
                  FormWidgetT(
                    title: "Kabupaten",
                    controller: baruC.kabupaten,
                  ),
                  FormWidgetT(
                    title: "Kecamatan",
                    controller: baruC.kecamatan,
                  ),
                  FormWidgetT(
                    title: "Desa",
                    controller: baruC.desa,
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
                                value: baruC.poliSelected.value,
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
                                items: baruC.poli.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  baruC.poliSelected.value = newValue!;
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
                                value: baruC.tanggalSelected.value,
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
                                items: baruC.tanggal.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  baruC.tanggalSelected.value = newValue!;
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
                                value: baruC.bulanSelected.value,
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
                                items: baruC.bulan.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  baruC.bulanSelected.value = newValue!;
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
                    title: "DAFTAR",
                    color: cBlue,
                    press: () {
                      baruC.postData();
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
                      height: 10,
                    ),
                    const TextInfo(),
                    FormWidget(
                      title: "No KTP / KIA / SIM",
                      controller: baruC.ktp,
                    ),
                    FormWidgetT(
                      title: "Nama Lengkap",
                      controller: baruC.nama,
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
                                  value: baruC.bayarSelected.value,
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
                                  items: baruC.bayar.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    baruC.bayarSelected.value = newValue!;
                                  },
                                )),
                          ],
                        ),
                      ],
                    ),
                    FormTextWidget(
                      title: "No BPJS",
                      text: "*Kosongkan jika pembayaran\numum atau rekanan",
                      controller: baruC.bpjs,
                    ),
                    FormWidgetT(
                      title: "Tempat Lahir",
                      controller: baruC.tempat,
                    ),
                    FormWidgetT(
                      title: "Tanggal Lahir (DD/MM/YYYY)",
                      controller: baruC.lahir,
                    ),
                    FormTextWidget(
                      title: "No Handphone",
                      text:
                          "*Isi dengan nomor aktif, atau\nkosongkan jika tidak punya",
                      controller: baruC.hp,
                    ),
                    FormWidgetT(
                      title: "Alamat",
                      controller: baruC.alamat,
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
                              title: "Agama",
                              size: 12,
                              weight: FontWeight.w600,
                              color: cBlack,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Obx(() => DropdownButton(
                                  value: baruC.agamaSelected.value,
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
                                  items: baruC.agama.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    baruC.agamaSelected.value = newValue!;
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
                              title: "Jenis Kelamin",
                              size: 12,
                              weight: FontWeight.w600,
                              color: cBlack,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Obx(() => DropdownButton(
                                  value: baruC.kelaminSelected.value,
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
                                  items: baruC.kelamin.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    baruC.kelaminSelected.value = newValue!;
                                  },
                                )),
                          ],
                        ),
                      ],
                    ),
                    FormWidgetT(
                      title: "Nama Ibu Kandung",
                      controller: baruC.ibu,
                    ),
                    FormWidgetT(
                      title: "Nama Family",
                      controller: baruC.keluarga,
                    ),
                    FormWidgetT(
                      title: "Status Hubungan",
                      controller: baruC.status,
                    ),
                    FormWidgetT(
                      title: "Suku",
                      controller: baruC.suku,
                    ),
                    FormWidgetT(
                      title: "Pekerjaan",
                      controller: baruC.pekerjaan,
                    ),
                    FormWidgetT(
                      title: "Propinsi",
                      controller: baruC.propinsi,
                    ),
                    FormWidgetT(
                      title: "Kabupaten",
                      controller: baruC.kabupaten,
                    ),
                    FormWidgetT(
                      title: "Kecamatan",
                      controller: baruC.kecamatan,
                    ),
                    FormWidgetT(
                      title: "Desa",
                      controller: baruC.desa,
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
                                  value: baruC.poliSelected.value,
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
                                  items: baruC.poli.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    baruC.poliSelected.value = newValue!;
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
                                  value: baruC.tanggalSelected.value,
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
                                  items: baruC.tanggal.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    baruC.tanggalSelected.value = newValue!;
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
                                  value: baruC.bulanSelected.value,
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
                                  items: baruC.bulan.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    baruC.bulanSelected.value = newValue!;
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
                      title: "DAFTAR",
                      color: cBlue,
                      press: () {
                        baruC.postData();
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
