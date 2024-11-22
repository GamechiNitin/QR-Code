import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:zqr_app/core/data/generate_code.dart';

class GenerateQrView extends StatefulWidget {
  const GenerateQrView({super.key});

  @override
  State<GenerateQrView> createState() => _GenerateQrViewState();
}

class _GenerateQrViewState extends State<GenerateQrView> {
  String data = "";

  @override
  void initState() {
    super.initState();
    data = GenerateCode.getCode();
  }

  Future<void> getCode() async {
    // data = await PermissionService.requestCameraPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text("This is a simple QR code"),
          const SizedBox(height: 20),
          QrImageView(
            data: data,
            version: QrVersions.auto,
            size: 320,
            gapless: false,
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {},
            child: const Text("Generate"),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
