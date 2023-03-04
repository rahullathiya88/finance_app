import 'package:finance_app/utils/color.dart';
import 'package:flutter/material.dart';

class ConstTextField extends StatelessWidget {
  const ConstTextField(
      {Key? key,
      required this.labelText,
      required this.controller,
      this.suffixIcon,
      this.obscureText = false,
      required this.prefixIcon,
      required this.hintText,
      this.validator})
      : super(key: key);
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                labelText,
                style: const TextStyle(
                    color: KColor.disableText,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            TextFormField(
              onTap: () {},
              style: const TextStyle(color: Colors.black, fontSize: 18),
              controller: controller,
              validator: validator,
              obscureText: obscureText,
              decoration: InputDecoration(
                  filled: true,
                  prefixIcon: prefixIcon,
                  suffixIcon: suffixIcon,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.all(8),
                  hintText: hintText,
                  hintStyle:
                      const TextStyle(color: Color(0xffB4B0B4), fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
