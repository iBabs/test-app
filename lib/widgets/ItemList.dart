import "package:flutter/material.dart";

class ItemList extends StatelessWidget {
  final String title, subtitle;
  final IconData leading, trailing;
  final Color? iconColor;
  final Color tileCOlor;
  final VoidCallback? onTap;



  const ItemList({
    super.key,
    required this.title,
    required this.subtitle,
    this.leading = Icons.label,
    this.trailing = Icons.add,
    this.iconColor,
    this.tileCOlor = const Color.fromARGB(255, 220, 217, 217),
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)),
        leading: Icon(leading, color: iconColor),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: Icon(trailing),
        tileColor: tileCOlor,
        onTap: onTap,
      ),
    );
  }
}
