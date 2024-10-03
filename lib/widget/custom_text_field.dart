import 'package:firebase_login/core/colors.dart';
import 'package:firebase_login/core/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final String image;
  final TextEditingController controller;
  final TextInputType? keyBordType;
  final bool obscureText;
  final VoidCallback? onIconTap;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.image,
    required this.controller,
    this.keyBordType,
    this.obscureText = false,
    this.onIconTap,
    required this.validator,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      margin: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        color: blackTextField,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 270.0,
            child: TextFormField(
              controller: widget.controller,
              textAlignVertical: TextAlignVertical.center,
              obscureText: widget.obscureText,
              keyboardType: widget.keyBordType,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.hintText,
                hintStyle: hintStyle,
              ),
              style: headline2,
              validator: widget.validator,
            ),
          ),
          GestureDetector(
            onTap: widget.onIconTap,
            child: SvgPicture.asset(
              'assets/icon/${widget.image}',
              height: 20.0,
              color: grayText,
            ),
          ),
        ],
      ),
    );
  }
}
