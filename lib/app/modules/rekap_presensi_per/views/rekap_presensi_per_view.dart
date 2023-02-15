import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../theme/theme.dart';
import '../../navigation_drawer/views/navigation_drawer_view.dart';
import '../controllers/rekap_presensi_per_controller.dart';

class RekapPresensiPerView extends GetView<RekapPresensiPerController> {
  const RekapPresensiPerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RekapPresensiPerView'),
        centerTitle: true,
      ),
      drawer: NavigationDrawerView(),
      drawerScrimColor: light.withOpacity(0.6),
      body: Center(
        child: Text(
          'RekapPresensiPerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
