// ignore_for_file: file_names, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../data/models/firestorehariliburmodel.dart';
import '../theme/textstyle.dart';
import '../theme/theme.dart';
import 'package:intl/intl.dart';

class HolidayDTS extends DataTableSource {
  final List<HolidayModel> holidayList;

  HolidayDTS(this.holidayList);

  @override
  DataRow getRow(int index) {
    HolidayModel data = holidayList[index];
    var formatter = DateFormat('d MMMM yyyy', 'id-ID');
    return DataRow(
      cells: [
        DataCell(Text(
          "${data.name}",
          style: getTextTableData(Get.context!),
        )),
        DataCell(Text(
          "${formatter.format(DateTime.parse("${data.date!}"))}",
          style: getTextTableData(Get.context!),
        )),
        DataCell(IconButton(
            onPressed: () {},
            icon: Icon(
              IconlyLight.delete,
              color: Blue1,
            ))),
        DataCell(IconButton(
            onPressed: () {},
            icon: Icon(
              IconlyLight.edit,
              color: Blue1,
            ))),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => holidayList.length;

  @override
  int get selectedRowCount => 0;
}
