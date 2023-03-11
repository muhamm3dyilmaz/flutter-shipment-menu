import 'package:flutter/material.dart';

class ClientStatusCard extends StatefulWidget {
  final String clientName;
  final Icon shipmentIcon;
  final String shipmentStatus;
  final Color shipmentStatusColor;
  final String amount;

  const ClientStatusCard({
    super.key,
    required this.clientName,
    required this.shipmentIcon,
    required this.shipmentStatus,
    required this.shipmentStatusColor,
    required this.amount,
  });

  @override
  State<ClientStatusCard> createState() => _ClientStatusCardState();
}

class _ClientStatusCardState extends State<ClientStatusCard> {
  bool isHovered = false;
  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: InkWell(
          onTap: () {},
          child: SizedBox(
            width: 300,
            child: Card(
              color: isHovered
                  ? const Color.fromARGB(255, 29, 61, 218)
                  : Colors.white,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.clientName,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            widget.shipmentIcon,
                            const SizedBox(width: 5),
                            Text(
                              widget.shipmentStatus,
                              style: TextStyle(
                                color: widget.shipmentStatusColor,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Text(
                      widget.amount,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 5),
                    const Icon(Icons.more_vert, color: Colors.grey),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
