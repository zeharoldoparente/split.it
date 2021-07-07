import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitPage extends StatefulWidget {
  const CreateSplitPage({Key? key}) : super(key: key);

  @override
  _CreateSplitPageState createState() => _CreateSplitPageState();
}

class _CreateSplitPageState extends State<CreateSplitPage> {
  var pages = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.purple,
    ),
  ];
  var index = 0;
  void nextPage() {
    if (index < 2) {
      setState(() {
        index++;
      });
    }
  }

  void backPage() {
    if (index > 0) {
      setState(() {
        index--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      appBar: PreferredSize(
          child: SafeArea(
            top: true,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: IconButton(
                    onPressed: () {
                      backPage();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: AppTheme.colors.backButton,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text.rich(
                    TextSpan(
                        text: "0${index + 1}",
                        style: AppTheme.textStyle.stepperIndicatorPrimary,
                        children: [
                          TextSpan(
                              text: " - 0${pages.length}",
                              style:
                                  AppTheme.textStyle.stepperIndicatorSecondary)
                        ]),
                  ),
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(60)),
      body: pages[index],
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Container(
          height: 72,
          child: Row(
            children: [
              Expanded(
                  child: TextButton(onPressed: () {}, child: Text("Cancelar"))),
              Expanded(
                  child:
                      TextButton(onPressed: () {}, child: Text("Continuar"))),
            ],
          ),
        ),
      ),
    );
  }
}
