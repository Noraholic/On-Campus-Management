import 'package:material_ui/material_ui.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanningScreen extends StatelessWidget {
  const ScanningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE2E2E2),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Smart Campus Header
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0XFFFFFFFF),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'SMART CAMPUS',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF482541),
                          ),
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 15,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFE2E2E2),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: const Text(
                          'اردو',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF482541),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.menu, size: 40, color: Color(0xFF482541)),

                    const SizedBox(width: 20),

                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Scanning',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF29252B),
                            ),
                          ),

                          SizedBox(height: 8),

                          Text(
                            'Scan QR Code for Access or Information',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF92999B),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF2E8F2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              Icons.qr_code_rounded,
                              size: 40,
                              color: Color(0xFF482541),
                            ),
                          ),

                          const SizedBox(width: 15),

                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Scan QR Code',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF29252B),
                                ),
                              ),

                              SizedBox(height: 5),

                              Text(
                                'Point your camera at the QR code',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF92999B),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),
                      Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(25),
                        ),

                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),

                          child: Stack(
                            children: [
                              MobileScanner(
                                onDetect: (capture) {
                                  final barcode = capture.barcodes.first;

                                  if (barcode.rawValue != null) {
                                    debugPrint('Scanned: ${barcode.rawValue}');
                                  }
                                },
                              ),
                              Center(
                                child: Icon(
                                  Icons.qr_code_2_rounded,
                                  size: 100,
                                  color: Colors.white,
                                ),
                              ),
                              // Top Left
                              Positioned(
                                top: 40,
                                left: 40,
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        color: Color(0xFFE2E2E2),
                                        width: 4,
                                      ),
                                      left: BorderSide(
                                        color: Color(0xFFE2E2E2),
                                        width: 4,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // Top Right
                              Positioned(
                                top: 40,
                                right: 40,
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        color: Color(0xFFE2E2E2),
                                        width: 4,
                                      ),
                                      right: BorderSide(
                                        color: Color(0xFFE2E2E2),
                                        width: 4,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // Bottom Left
                              Positioned(
                                bottom: 40,
                                left: 40,
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Color(0xFFE2E2E2),
                                        width: 4,
                                      ),
                                      left: BorderSide(
                                        color: Color(0xFFE2E2E2),
                                        width: 4,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // Bottom Right
                              Positioned(
                                bottom: 40,
                                right: 40,
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Color(0xFFE2E2E2),
                                        width: 4,
                                      ),
                                      right: BorderSide(
                                        color: Color(0xFFE2E2E2),
                                        width: 4,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              Center(
                                child: Container(
                                  height: 3,
                                  width: 220,
                                  color: const Color(0xFFE2E2E2),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Information Box
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF8F2F8),
                          borderRadius: BorderRadius.circular(20),
                        ),

                        child: Row(
                          children: [
                            const Icon(
                              Icons.info_outline,
                              size: 35,
                              color: Color(0xFF713B68),
                            ),

                            const SizedBox(width: 15),

                            Container(
                              height: 50,
                              width: 2,
                              color: const Color(0xFF92999B),
                            ),

                            const SizedBox(width: 15),

                            const Expanded(
                              child: Text(
                                'Make sure the QR code is well visible in the frame.',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF92999B),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
