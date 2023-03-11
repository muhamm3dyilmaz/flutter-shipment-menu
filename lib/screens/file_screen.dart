import 'package:argem_first_design/screens/page1.dart';
import 'package:flutter/material.dart';

import '../widgets/client_status_card.dart';
import 'packages_screen.dart';
import 'page2.dart';

class FileScreen extends StatefulWidget {
  const FileScreen({super.key});

  @override
  State<FileScreen> createState() => _FileScreenState();
}

class _FileScreenState extends State<FileScreen> {
  bool isHovered = false;

  int currentIndex = 0;

  int ordersIndex = 0;

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }

  List<Widget> otherPages = const [
    PackagesScreen(),
    PageOne(),
    PageTwo(),
  ];

  List<Widget> ordersPages = const [
    PackagesScreen(),
    PageOne(),
    PageTwo(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 105, top: 30, bottom: 30, right: 30),
        child: Row(
          children: [
            //client status
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: 300,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "All sales order",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Icon(Icons.arrow_drop_down),
                            const SizedBox(width: 25),
                            const Icon(Icons.list, color: Colors.grey),
                            const Icon(Icons.search, color: Colors.grey),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 1, 33, 193),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: const Icon(
                                Icons.add,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const ClientStatusCard(
                    clientName: "Muhammed Yılmaz",
                    shipmentIcon:
                        Icon(Icons.circle, size: 10, color: Colors.green),
                    shipmentStatus: "FULFILLED",
                    shipmentStatusColor: Colors.green,
                    amount: "1 255.00 \$",
                  ),
                  const ClientStatusCard(
                    clientName: "Yolanda Berrueco",
                    shipmentIcon:
                        Icon(Icons.circle, size: 10, color: Colors.blue),
                    shipmentStatus: "CONFIRMED",
                    shipmentStatusColor: Colors.blue,
                    amount: "904.00 \$",
                  ),
                  const ClientStatusCard(
                    clientName: "Sampson Totton",
                    shipmentIcon:
                        Icon(Icons.circle, size: 10, color: Colors.green),
                    shipmentStatus: "FULFILLED",
                    shipmentStatusColor: Colors.green,
                    amount: "145.99 \$",
                  ),
                  const ClientStatusCard(
                    clientName: "Miriam de Jesus",
                    shipmentIcon:
                        Icon(Icons.circle, size: 10, color: Colors.orange),
                    shipmentStatus: "PARTIALLY SHIPPED",
                    shipmentStatusColor: Colors.orange,
                    amount: "3 669.04 \$",
                  ),
                  const ClientStatusCard(
                    clientName: "Meysam Nassour",
                    shipmentIcon:
                        Icon(Icons.circle, size: 10, color: Colors.green),
                    shipmentStatus: "FULFILLED",
                    shipmentStatusColor: Colors.green,
                    amount: "178.00 \$",
                  ),
                  const ClientStatusCard(
                    clientName: "Dusana Semenov",
                    shipmentIcon:
                        Icon(Icons.circle, size: 10, color: Colors.blue),
                    shipmentStatus: "CONFIRMED",
                    shipmentStatusColor: Colors.blue,
                    amount: "1 255.00 \$",
                  ),
                  const ClientStatusCard(
                    clientName: "Beth Murphy",
                    shipmentIcon:
                        Icon(Icons.circle, size: 10, color: Colors.orange),
                    shipmentStatus: "PARTIALLY SHIPPED",
                    shipmentStatusColor: Colors.orange,
                    amount: "978.26 \$",
                  ),
                  const ClientStatusCard(
                    clientName: "Gaspar Antunes",
                    shipmentIcon:
                        Icon(Icons.circle, size: 10, color: Colors.green),
                    shipmentStatus: "FULFILLED",
                    shipmentStatusColor: Colors.green,
                    amount: "1 255.00 \$",
                  ),
                  const ClientStatusCard(
                    clientName: "Antoine Olivier",
                    shipmentIcon:
                        Icon(Icons.circle, size: 10, color: Colors.green),
                    shipmentStatus: "FULFILLED",
                    shipmentStatusColor: Colors.green,
                    amount: "1 255.00 \$",
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20),
            //Products...
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 247, 247, 247),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Color.fromARGB(255, 206, 206, 206),
                        ),
                      ),
                    ),
                    padding:
                        const EdgeInsets.only(top: 15, right: 15, left: 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  currentIndex = 0;
                                  //isHovered = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      width: 2,
                                      color: currentIndex == 0
                                          ? const Color.fromARGB(
                                              255, 33, 72, 243)
                                          : Colors.transparent,
                                    ),
                                  ),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  "PACKAGES",
                                  style: TextStyle(
                                    color: currentIndex == 0
                                        ? const Color.fromARGB(255, 33, 72, 243)
                                        : Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 50),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  currentIndex = 1;
                                  //isHovered = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      width: 2,
                                      color: currentIndex == 1
                                          ? const Color.fromARGB(
                                              255, 33, 72, 243)
                                          : Colors.transparent,
                                    ),
                                  ),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  "INVOICES",
                                  style: TextStyle(
                                    color: currentIndex == 1
                                        ? const Color.fromARGB(255, 33, 72, 243)
                                        : Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 50),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  currentIndex = 2;
                                  //isHovered = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      width: 2,
                                      color: currentIndex == 2
                                          ? const Color.fromARGB(
                                              255, 33, 72, 243)
                                          : Colors.transparent,
                                    ),
                                  ),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  "HISTORY",
                                  style: TextStyle(
                                    color: currentIndex == 2
                                        ? const Color.fromARGB(255, 33, 72, 243)
                                        : Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(width: 330),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary:
                                    const Color.fromARGB(255, 242, 242, 242),
                                //fixedSize: const Size(5, 5),
                              ),
                              child: const Icon(Icons.edit_outlined,
                                  size: 18, color: Colors.grey),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary:
                                    const Color.fromARGB(255, 242, 242, 242),
                                //fixedSize: const Size(5, 5),
                              ),
                              child: const Icon(Icons.print_outlined,
                                  size: 18, color: Colors.grey),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary:
                                    const Color.fromARGB(255, 242, 242, 242),
                                //fixedSize: const Size(5, 5),
                              ),
                              child: const Icon(Icons.mail_outline,
                                  size: 18, color: Colors.grey),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary:
                                    const Color.fromARGB(255, 242, 242, 242),
                                //fixedSize: const Size(5, 5),
                              ),
                              child: const Icon(Icons.attach_file_outlined,
                                  size: 18, color: Colors.grey),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary:
                                    const Color.fromARGB(255, 242, 242, 242),
                                //fixedSize: const Size(5, 5),
                              ),
                              child: const Icon(Icons.more_horiz,
                                  size: 18, color: Colors.grey),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary:
                                    const Color.fromARGB(255, 242, 242, 242),
                                //fixedSize: const Size(5, 5),
                              ),
                              child: const Icon(Icons.close,
                                  size: 18, color: Colors.grey),
                            ),
                            //const Divider(color: Colors.grey, thickness: 2),
                          ],
                        ),
                        //const Divider(color: Colors.red, thickness: 2),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),
                  //other pages
                  SizedBox(
                    height: 540,
                    width: 1000,
                    child: AnimatedSwitcher(
                      duration: Duration(milliseconds: 300),
                      child: otherPages[currentIndex],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
