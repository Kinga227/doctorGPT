import 'package:doctorgpt/pages/scan_page.dart';
import 'package:flutter/material.dart';
import 'package:doctorgpt/pages/personal_data_page.dart';
import '../custom/custom_appbar.dart';
import '../custom/custom_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // title of the page.
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: widget.title),
      body: Container(
        // background for the homepage
        color: const Color.fromARGB(211, 0, 77, 64),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomButton(
                onPressed: () {
                  // navigate to the PersonalDataPage when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PersonalDataPage(
                        title: 'Personal Data',
                      ),
                    ),
                  );
                },
                buttonIcon: const Icon(
                  Icons.person,
                  size: 30,
                ),
                buttonText: 'Personal Data',
              ),
              const SizedBox(height: 25),
              CustomButton(
                onPressed: () {
                  // navigate to the ScannerPage when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScannerPage(
                        title: 'Scan Document',
                      ),
                    ),
                  );
                },
                buttonIcon: const Icon(
                  Icons.document_scanner,
                  size: 30,
                ),
                buttonText: 'Scan Document',
              ),
            ],
          ),
        ),
      ),
    );
  }
}