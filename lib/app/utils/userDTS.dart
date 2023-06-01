// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import 'package:project_tugas_akhir/app/data/models/usermodel.dart';
import 'package:project_tugas_akhir/app/web/super-admin/controllers/super_admin_controller.dart';
import 'package:project_tugas_akhir/app/theme/theme.dart';
import 'package:project_tugas_akhir/app/utils/dialogTextField.dart';
import 'package:project_tugas_akhir/app/utils/stringGlobal.dart';
import 'package:project_tugas_akhir/app/utils/textfield.dart';
import 'package:sizer/sizer.dart';

import '../theme/textstyle.dart';
import 'btnDefault.dart';
import 'dropdownTextField.dart';

class UserDTS extends DataTableSource {
  final List<UserModel> userList;

  final c = Get.put(SuperAdminController());

  UserDTS(this.userList);

  @override
  DataRow getRow(int index) {
    UserModel data = userList[index];

    return DataRow(
      cells: [
        DataCell(Text(
          data.name!,
          style: getTextTableData(Get.context!),
        )),
        DataCell(Text(
          // "${data.role}",
          data.role == superAdmin
              ? "Super-Admin"
              : data.role == admin
                  ? "Admin"
                  : "Pegawai",
          style: getTextTableData(Get.context!),
        )),
        DataCell(Text(
          "${data.bidang}",
          style: getTextTableData(Get.context!),
        )),
        DataCell(Text(
          "${data.email}",
          style: getTextTableData(Get.context!),
        )),
        DataCell(IconButton(
            onPressed: () {
              c.deleteDoc(data.email!, data.uid!);
            },
            icon: Icon(
              IconlyLight.delete,
              color: Blue1,
            ))),
        DataCell(IconButton(
            onPressed: () {
              textC.namaDataUserC.text = data.name!;
              cDropdown.roleDataUserC.text = data.role!;
              textC.emailDataUserC.text = data.email!;
              cDropdown.jabatanDataUserC.text = data.bidang!;
              textC.pinDataUserC.text = data.pin!;
              Get.dialog(dialogTextFieldEditDataUser(
                  Get.context!,
                  btnDefaultIcon1(10.w, Blue4, IconlyLight.tick_square, Yellow1,
                      "Kirim", getTextBtnAction(Get.context!), () {
                    if (textC.namaDataUserKey.value.currentState!.validate() &&
                        cDropdown.roleDataUserKey.value.currentState!
                            .validate() &&
                        textC.passDataUserKey.value.currentState!.validate() &&
                        cDropdown.jabatanDataUserKey.value.currentState!
                            .validate() &&
                        textC.emailDataUserKey.value.currentState!.validate() &&
                        textC.pinDataUserKey.value.currentState!.validate()) {
                      c.editUser(
                          data.email!,
                          data.uid!,
                          textC.namaDataUserC.text,
                          cDropdown.roleDataUserC.text,
                          cDropdown.jabatanDataUserC.text,
                          textC.emailDataUserC.text,
                          textC.pinDataUserC.text);
                    }
                  }),
                  true));
            },
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
  int get rowCount => userList.length;

  @override
  int get selectedRowCount => 0;
}
