import 'package:argem_first_design/widgets/shipment_card.dart';
import 'package:flutter/material.dart';

class PackagesScreen extends StatefulWidget {
  const PackagesScreen({super.key});

  @override
  State<PackagesScreen> createState() => _PackagesScreenState();
}

class _PackagesScreenState extends State<PackagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              //shipment
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "Sales Order",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),

                  //elevatedbutton.icon
                  DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Colors.orangeAccent,
                          Colors.deepOrange,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.transparent,
                        ),
                        shadowColor: MaterialStateProperty.all(
                          Colors.transparent,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      icon: const Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 8,
                      ),
                      label: const Text(
                        'PARTIALLY SHIPPED',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                  //shipment infos
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.file_copy,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            "ORDER DATE",
                            style: TextStyle(
                              color: Color.fromARGB(255, 159, 159, 159),
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "15 August 2015",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 50),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.local_shipping,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            "EXPECTED SHIPMENT DATE",
                            style: TextStyle(
                              color: Color.fromARGB(255, 159, 159, 159),
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "24 August 2015",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(width: 420),

              //client card
              Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            "BILLING TO",
                            style: TextStyle(
                              color: Color.fromARGB(255, 159, 159, 159),
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const CircleAvatar(
                            backgroundColor: Colors.grey,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Muhammed Yılmaz",
                            style: TextStyle(
                              color: Color.fromARGB(255, 1, 33, 193),
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "2762 Mapleview Drive\nSouth Fulton\nTenessee --38257",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),

          //orders status
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              height: 300,
              width: 950,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 234, 234, 234),
                borderRadius: BorderRadius.circular(10),
              ),
              child:
                  //liste ve index adı gelecek
                  SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(
                          width: 250,
                          child: Text(
                            "ITEMS & DESCRIPTION",
                            style: TextStyle(
                              color: Color.fromARGB(255, 153, 153, 153),
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const SizedBox(
                          width: 100,
                          child: Text(
                            "INVOICED",
                            style: TextStyle(
                              color: Color.fromARGB(255, 153, 153, 153),
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const SizedBox(
                          width: 105,
                          child: Text(
                            "PACKED",
                            style: TextStyle(
                              color: Color.fromARGB(255, 153, 153, 153),
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const SizedBox(
                          width: 105,
                          child: Text(
                            "SHIPPED",
                            style: TextStyle(
                              color: Color.fromARGB(255, 153, 153, 153),
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const SizedBox(
                          width: 95,
                          child: Text(
                            "RATE",
                            style: TextStyle(
                              color: Color.fromARGB(255, 153, 153, 153),
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const SizedBox(
                          width: 110,
                          child: Text(
                            "AMOUNT",
                            style: TextStyle(
                              color: Color.fromARGB(255, 153, 153, 153),
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    //product card
                    const ShipmentCard(
                      productName: "OLLIE ARNES Women's Essential",
                      productCode: "SKU: 00001",
                      invoicedInfo:
                          Icon(Icons.check_circle, color: Colors.green),
                      packedInfo: Icon(Icons.check_circle, color: Colors.green),
                      shippedInfo:
                          Icon(Icons.check_circle, color: Colors.green),
                      ratePrice: "30.00 \$",
                      amountPrice: "270.00 \$",
                    ),
                    const ShipmentCard(
                      productName: "T-shirt in soft cotton jersey with a",
                      productCode: "SKU: 00002",
                      invoicedInfo:
                          Icon(Icons.check_circle, color: Colors.green),
                      packedInfo:
                          Icon(Icons.watch_later, color: Colors.orangeAccent),
                      shippedInfo:
                          Icon(Icons.watch_later, color: Colors.orangeAccent),
                      ratePrice: "24.00 \$",
                      amountPrice: "72.00 \$",
                    ),
                    const ShipmentCard(
                      productName: "New Balance 997H Canvas",
                      productCode: "SKU: 00003",
                      invoicedInfo:
                          Icon(Icons.check_circle, color: Colors.green),
                      packedInfo: Icon(Icons.check_circle, color: Colors.green),
                      shippedInfo:
                          Icon(Icons.watch_later, color: Colors.orangeAccent),
                      ratePrice: "112.00 \$",
                      amountPrice: "2 688.00 \$",
                    ),
                    const ShipmentCard(
                      productName: "Jacket in washed denim jersey",
                      productCode: "SKU: 00004",
                      invoicedInfo:
                          Icon(Icons.check_circle, color: Colors.green),
                      packedInfo: Icon(Icons.check_circle, color: Colors.green),
                      shippedInfo:
                          Icon(Icons.check_circle, color: Colors.green),
                      ratePrice: "44.56 \$",
                      amountPrice: "401.04 \$",
                    ),
                    const ShipmentCard(
                      productName: "Soft sweatshirt jacked with a jersey",
                      productCode: "SKU: 00005",
                      invoicedInfo:
                          Icon(Icons.check_circle, color: Colors.green),
                      packedInfo:
                          Icon(Icons.watch_later, color: Colors.orangeAccent),
                      shippedInfo:
                          Icon(Icons.watch_later, color: Colors.orangeAccent),
                      ratePrice: "30.00 \$",
                      amountPrice: "238.00 \$",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
