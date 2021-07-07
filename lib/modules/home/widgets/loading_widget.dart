import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadignWidget extends StatelessWidget {
  final Size size;
  const LoadignWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade200,
        highlightColor: Colors.grey.shade100,
        child: Container(
          color: Colors.grey.shade200,
        ),
      ),
    );
  }
}
