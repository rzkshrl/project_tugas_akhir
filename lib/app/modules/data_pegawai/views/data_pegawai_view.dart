import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../theme/theme.dart';
import '../../navigation_drawer/views/navigation_drawer_view.dart';
import '../controllers/data_pegawai_controller.dart';

class DataPegawaiView extends GetView<DataPegawaiController> {
  const DataPegawaiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataPegawaiView'),
        centerTitle: true,
      ),
      drawer: NavigationDrawerView(),
      drawerScrimColor: light.withOpacity(0.6),
      body: Center(
        child: Text(
          'DataPegawaiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}