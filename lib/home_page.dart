import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter QR Code generator"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              onChanged: (val) => setState(() => data = val),
              decoration: const InputDecoration(
                labelText: 'Type your data',
              ),
            ),
            const SizedBox(height: 30),
            data != null
                ? QrImage(
                    data: data.toString(),
                    padding: const EdgeInsets.all(0),
                    version: QrVersions.auto,
                    size: 300.0,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
