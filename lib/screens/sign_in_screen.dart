import 'package:flutter/material.dart';
import 'package:jawan_pakistan_assignment3/widgets/text_container.dart';

class SignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "E-commerce App Ui",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            const Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.account_circle_rounded,
                              size: 150,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "User",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "kzai659@yahoo.com",
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "LogOut",
                                  style: TextStyle(
                                    color: Colors.purpleAccent,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          padding: const EdgeInsets.all(8),
                          child: const Text(
                            "Account Information",
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextContainer(
                        textTitle: "Full Name",
                        textContent: "Gulsher Khan",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14),
                        child: Icon(
                          Icons.edit,
                          size: 30,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  )),
              Expanded(
                flex: 1,
                child: TextContainer(
                  textTitle: "Email",
                  textContent: "kzai659@yahoo.com",
                ),
              ),
              Expanded(
                flex: 1,
                child: TextContainer(
                  textTitle: "Phone",
                  textContent: "022-111-333",
                ),
              ),
              Expanded(
                flex: 1,
                child: TextContainer(
                  textTitle: "Address",
                  textContent: "New York Random Street House No 72",
                ),
              ),
              Expanded(
                flex: 1,
                child: TextContainer(
                  textTitle: "Gender",
                  textContent: "Male",
                ),
              ),
              Expanded(
                flex: 1,
                child: TextContainer(
                  textTitle: "Date Of Birth",
                  textContent: "28-Nov-1998",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
