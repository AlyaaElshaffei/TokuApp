import 'package:flutter/material.dart';

class ContainerItem extends StatelessWidget {
  const ContainerItem({super.key, this.text,required this.color, this.ontap});

  final String? text;
  final Color color;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
       
        color: color,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 16),
        height: 71,
        width: double.infinity,
        
        child: Text(
          "$text",
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
