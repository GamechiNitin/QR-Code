import 'package:flutter/material.dart';
import 'package:zqr_app/presentation/feature/home/ui/component/generate_view.dart';

import 'component/scan_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Qr App"),
        centerTitle: true,
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(
              text: "Generate QR Code",
            ),
            Tab(
              text: "Scan QR Code",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          GenerateQrView(),
          ScannerView(),
        ],
      ),
    );
  }
}
