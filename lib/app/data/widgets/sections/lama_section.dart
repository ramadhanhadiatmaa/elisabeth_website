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
                  Obx(
                    () => Visibility(
                        visible: lamaC.bayarSelected.value == "BPJS",
                        child: FormTextWidget(
                          title: "No BPJS",
                          text: "*Kosongkan jika pembayaran umum atau rekanan",
                          controller: lamaC.bpjs,
                        )),
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
                            title: "Daftar Ke Poli-",
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
                            title: "Tanggal",
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
                    height: 10,
                  ),
                  Obx(
                    () => Column(
                      children: [
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          value: lamaC.isAgree.value,
                          onChanged: (value) {
                            lamaC.isAgree.toggle();
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
                          value: lamaC.isRight.value,
                          onChanged: (value) {
                            lamaC.isRight.toggle();
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
                  Obx(
                    () => Visibility(
                        visible: lamaC.bayarSelected.value == "BPJS",
                        child: FormTextWidget(
                          title: "No BPJS",
                          text: "*Kosongkan jika pembayaran umum atau rekanan",
                          controller: lamaC.bpjs,
                        )),
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
                            title: "Daftar Ke Poli-",
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
                            title: "Tanggal",
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
                    height: 10,
                  ),
                  Obx(
                    () => Column(
                      children: [
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          value: lamaC.isAgree.value,
                          onChanged: (value) {
                            lamaC.isAgree.toggle();
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
                          value: lamaC.isRight.value,
                          onChanged: (value) {
                            lamaC.isRight.toggle();
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
                    Obx(
                      () => Visibility(
                          visible: lamaC.bayarSelected.value == "BPJS",
                          child: FormTextWidget(
                            title: "No BPJS",
                            text:
                                "*Kosongkan jika pembayaran umum atau rekanan",
                            controller: lamaC.bpjs,
                          )),
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
                              title: "Daftar Ke Poli-",
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
                      height: 10,
                    ),
                    Obx(
                      () => Column(
                        children: [
                          CheckboxListTile(
                            controlAffinity: ListTileControlAffinity.leading,
                            value: lamaC.isAgree.value,
                            onChanged: (value) {
                              lamaC.isAgree.toggle();
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
                            value: lamaC.isRight.value,
                            onChanged: (value) {
                              lamaC.isRight.toggle();
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
