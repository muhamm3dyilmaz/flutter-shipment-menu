import 'package:flutter/material.dart';

import '../widgets/shipment_card.dart';

class ClientOrdersTwo extends StatefulWidget {
  const ClientOrdersTwo({super.key});

  @override
  State<ClientOrdersTwo> createState() => _ClientOrdersTwoState();
}

class _ClientOrdersTwoState extends State<ClientOrdersTwo> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            invoicedInfo: Icon(Icons.watch_later, color: Colors.orangeAccent),
            packedInfo: Icon(Icons.watch_later, color: Colors.orangeAccent),
            shippedInfo: Icon(Icons.watch_later, color: Colors.orangeAccent),
            ratePrice: "30.00 \$",
            amountPrice: "270.00 \$",
          ),
          const ShipmentCard(
            productName: "T-shirt in soft cotton jersey with a",
            productCode: "SKU: 00002",
            invoicedInfo: Icon(Icons.watch_later, color: Colors.orangeAccent),
            packedInfo: Icon(Icons.watch_later, color: Colors.orangeAccent),
            shippedInfo: Icon(Icons.watch_later, color: Colors.orangeAccent),
            ratePrice: "24.00 \$",
            amountPrice: "72.00 \$",
          ),
          const ShipmentCard(
            productName: "New Balance 997H Canvas",
            productCode: "SKU: 00003",
            invoicedInfo: Icon(Icons.check_circle, color: Colors.green),
            packedInfo: Icon(Icons.check_circle, color: Colors.green),
            shippedInfo: Icon(Icons.watch_later, color: Colors.orangeAccent),
            ratePrice: "112.00 \$",
            amountPrice: "2 688.00 \$",
          ),
          const ShipmentCard(
            productName: "Jacket in washed denim jersey",
            productCode: "SKU: 00004",
            invoicedInfo: Icon(Icons.check_circle, color: Colors.green),
            packedInfo: Icon(Icons.check_circle, color: Colors.green),
            shippedInfo: Icon(Icons.check_circle, color: Colors.green),
            ratePrice: "44.56 \$",
            amountPrice: "401.04 \$",
          ),
          const ShipmentCard(
            productName: "Soft sweatshirt jacked with a jersey",
            productCode: "SKU: 00005",
            invoicedInfo: Icon(Icons.check_circle, color: Colors.green),
            packedInfo: Icon(Icons.watch_later, color: Colors.orangeAccent),
            shippedInfo: Icon(Icons.watch_later, color: Colors.orangeAccent),
            ratePrice: "30.00 \$",
            amountPrice: "238.00 \$",
          ),
        ],
      ),
    );
  }
}
