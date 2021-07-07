import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/icon_dollar_widget.dart';
import 'package:split_it/modules/home/widgets/loading_widget.dart';
import 'package:split_it/shared/models/event_model.dart';
import 'package:split_it/theme/app_theme.dart';

class EventTileWidget extends StatelessWidget {
  final EventModel model;
  final bool isLoading;
  const EventTileWidget({
    Key? key,
    required this.model,
    this.isLoading = false,
  }) : super(key: key);

  IconDollarType get type =>
      model.value! >= 0 ? IconDollarType.receive : IconDollarType.payment;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Row(
        children: [
          LoadignWidget(size: Size(48, 48)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: LoadignWidget(size: Size(81, 19)),
                    subtitle: LoadignWidget(size: Size(52, 18)),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LoadignWidget(size: Size(61, 17)),
                        SizedBox(
                          height: 5,
                        ),
                        LoadignWidget(size: Size(44, 18)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      );
    }
    return Row(
      children: [
        IconDollarWidget(type: type),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    model.title!,
                    style: AppTheme.textStyle.eventTile,
                  ),
                  subtitle: Text(
                    model.created!.toIso8601String(),
                    style: AppTheme.textStyle.eventSubTile,
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "R\$ ${model.value!.toStringAsFixed(2)}",
                        style: AppTheme.textStyle.eventTileValue,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${model.people} ${model.people! > 1 ? 'Pessoas' : 'Pessoa'}",
                        style: AppTheme.textStyle.eventSubTile,
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: AppTheme.colors.divider,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
