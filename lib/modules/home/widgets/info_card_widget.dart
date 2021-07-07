import 'package:flutter/material.dart';

import 'package:split_it/modules/home/widgets/icon_dollar_widget.dart';
import 'package:split_it/modules/home/widgets/loading_widget.dart';
import 'package:split_it/theme/app_theme.dart';

class InfoCardWidget extends StatelessWidget {
  final double value;
  final bool isLoading;
  const InfoCardWidget({
    Key? key,
    required this.value,
    this.isLoading = false,
  }) : super(key: key);

  TextStyle get textStyle => value >= 0
      ? AppTheme.textStyle.infoCardSubTitle1
      : AppTheme.textStyle.infoCardSubTitle2;
  IconDollarType get iconDollarType =>
      value >= 0 ? IconDollarType.receive : IconDollarType.payment;
  String get title => value >= 0 ? "A receber" : "A pagar";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 168,
      decoration: BoxDecoration(
        color: AppTheme.colors.backgroundPrimary,
        borderRadius: BorderRadius.circular(10),
        border: Border.fromBorderSide(
          BorderSide(color: AppTheme.colors.border),
        ),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconDollarWidget(
            type: iconDollarType,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppTheme.textStyle.infoCardTitle),
              SizedBox(
                height: 4,
              ),
              if (isLoading == false) ...[
                LoadignWidget(size: Size(94, 24))
              ] else ...[
                Text(
                  "R\$ ${value.toStringAsFixed(2)}",
                  style: textStyle,
                )
              ]
            ],
          ),
        ],
      ),
    );
  }
}


             /*  if (isLoading == false) ...[
                SizedBox(
                  width: 98,
                  height: 24,
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey.shade200,
                    highlightColor: Colors.grey.shade100,
                    child: Container(
                      color: Colors.grey.shade200,
                    ),
                  ),
                )
              ] else ...[
                Text(
                  "R\$ ${value.toStringAsFixed(2)}",
                  style: textStyle,
                )
              ]
 */


    /*           if (isLoading == false) ...[
                Container(
                  child: SizedBox(
                    width: 98,
                    height: 24,
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey.shade200,
                      highlightColor: Colors.grey.shade100,
                      child: Container(
                        color: Colors.grey.shade200,
                      ),
                    ),
                  ),
                ),
              ] else if (isLoading == true) ...[
                Container(
                  child: Text(
                    "R\$ ${value.toStringAsFixed(2)}",
                    style: textStyle,
                  ),
                )
              ] */