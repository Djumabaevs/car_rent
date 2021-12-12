import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core.dart';

class ProVersionView extends StatelessWidget {
  const ProVersionView({this.isBackAvailable = false, Key? key})
      : super(key: key);
  final bool isBackAvailable;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              AppBarWidget(
                title: "Pro Version",
                isBackButton: false,
                titlePadding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                actions: [],
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Support Us by Buying Template :D",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 17),
                      const Text(
                        "The link at README.md file.",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      !isBackAvailable
                          ? Container()
                          : Column(
                              children: [
                                const SizedBox(height: 50),
                                OutlinedButton.icon(
                                  onPressed: () => Get.back(),
                                  style: ButtonStyle(
                                      side: MaterialStateProperty.all(
                                          BorderSide(
                                              color: kPrimaryColor, width: 1))),
                                  icon: const Icon(
                                    Icons.arrow_back_ios,
                                    size: 23,
                                  ),
                                  label: const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10.0),
                                    child: Text(
                                      "Back",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
