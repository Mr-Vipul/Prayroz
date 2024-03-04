import "package:flutter/material.dart";


class RoundButton extends StatelessWidget {
  // const RoundButton({super.key});
  final VoidCallback onPressed;
  final String title;
  const RoundButton({super.key, required this.title, required this.onPressed});


  @override
  Widget build(BuildContext context) {

    // Inkwell widget use for touch area
    return InkWell(
      onTap: onPressed,

      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(28),
        ),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
