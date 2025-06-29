import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  const NeuBox({
    super.key,
    required this.height,
    required this.width,
    required this.containerColor,
    this.borderRadius,
    this.image,
    required this.offset1,
    required this.offsetColor1,
    required this.offset2,
    required this.offsetColor2,
    this.child,
    required this.blurRadius1,
    required this.blurRadius2,
  });

  final double height;
  final double width;
  final Color containerColor;
  final double? borderRadius;
  final ImageProvider<Object>? image;
  final Offset offset1;
  final Offset offset2;
  final Color offsetColor1;
  final Color offsetColor2;
  final double blurRadius1;
  final double blurRadius2;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: borderRadius != null
            ? BorderRadius.circular(borderRadius!)
            : null,
        image: image != null ? DecorationImage(image: image!) : null,
        boxShadow: [
          BoxShadow(
            offset: offset1,
            color: offsetColor1,
            blurRadius: blurRadius1,
          ),
          BoxShadow(
            offset: offset2,
            color: offsetColor2,
            blurRadius: blurRadius2,
          ),
        ],
      ),
      child: child,
    );
  }
}
