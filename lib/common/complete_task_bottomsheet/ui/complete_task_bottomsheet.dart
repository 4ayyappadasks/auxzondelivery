import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/enum.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

import '../../color/color.dart';
import '../../textfont/textfont.dart';

class CompleteTaskBottomsheet extends StatelessWidget {
  const CompleteTaskBottomsheet({super.key});
  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextThemedel(
            text: "Confirm Order",
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colorsdata.black,
          ),
          const SizedBox(height: 16),
          MaterialButton(
            onPressed: () async {
              String? qrCode = await SimpleBarcodeScanner.scanBarcode(
                context,
                isShowFlashIcon: true,
                delayMillis: 20,
                cameraFace: CameraFace.back,
                scanFormat: ScanFormat.ONLY_QR_CODE,
              );

              if (qrCode != "-1") {
                // Handle scanned QR code
                Navigator.pop(context);
                _showSnackBar(
                    context, "QR Code: $qrCode scanned successfully!");
              }
            },
            color: Colorsdata.darkcolor,
            child: TextThemedel(
              text: "Scan QR Code",
              color: Colorsdata.white,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Enter OTP",
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 16),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              _showSnackBar(context, "OTP confirmed successfully!");
            },
            color: Colorsdata.darkcolor,
            child: TextThemedel(
              text: "Confirm OTP",
              color: Colorsdata.white,
            ),
          ),
        ],
      ),
    );
  }
}
