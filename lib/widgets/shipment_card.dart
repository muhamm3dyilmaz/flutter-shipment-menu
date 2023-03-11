import 'package:flutter/material.dart';

class ShipmentCard extends StatefulWidget {
  final String productName;
  final String productCode;
  final Icon invoicedInfo;
  final Icon packedInfo;
  final Icon shippedInfo;
  final String ratePrice;
  final String amountPrice;
  const ShipmentCard({
    super.key,
    required this.productName,
    required this.productCode,
    required this.invoicedInfo,
    required this.packedInfo,
    required this.shippedInfo,
    required this.ratePrice,
    required this.amountPrice,
  });

  @override
  State<ShipmentCard> createState() => _ShipmentCardState();
}

class _ShipmentCardState extends State<ShipmentCard> {
  bool isHovered = false;
  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final hoveredTransform = Matrix4.identity()..scale(1.05);
    // final transform = isHovered ? hoveredTransform : Matrix4.identity();
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        //transform: transform,
        child: Row(
          children: [
            Column(
              children: [
                SizedBox(
                  width: 920,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          //product photo
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundColor: Colors.grey,
                              ),
                              const SizedBox(width: 8),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  //brand
                                  SizedBox(
                                    width: 150,
                                    child: Text(
                                      widget.productName,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 1,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  //product code
                                  Text(
                                    widget.productCode,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 198, 198, 198),
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          //ıcons
                          SizedBox(width: 110, child: widget.invoicedInfo),
                          const Spacer(),
                          SizedBox(width: 100, child: widget.packedInfo),
                          const Spacer(),
                          SizedBox(
                            width: 105,
                            child: widget.shippedInfo,
                          ),
                          const Spacer(),
                          //prices
                          SizedBox(
                            width: 100,
                            child: Text(
                              widget.ratePrice,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 100,
                            child: Text(
                              widget.amountPrice,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
