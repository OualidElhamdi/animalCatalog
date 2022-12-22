import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../viewmodel/viewmodel.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<ViewModel>(context);
    return Scaffold(
      backgroundColor: const Color(0xfffefcff),
      appBar: AppBar(title: Text(model.animal)),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RotatedBox(
              quarterTurns: 2,
              child: clickButton(
                 Icon(
                  Icons.arrow_drop_down_circle_rounded,
                  size: 60,
                  color: model.upPressed ? Colors.grey : Colors.blue,
                ),
                context,
                true,
              ),
            ),
            SizedBox(
              height: 300,
              child: RotatedBox(
                quarterTurns: 1,
                child: Image.asset(
                  model.url.isNotEmpty
                      ? model.url
                      : "assets/images/${model.animal}.png",
                ),
              ),
            ),
            clickButton(
              Icon(
                Icons.arrow_drop_down_circle_rounded,
                size: 60,
                color: model.downPressed ? Colors.grey : Colors.blue,
              ),
              context,
              false,
            ),
          ],
        ),
      ),
    );
  }

  Widget clickButton(Widget widget, BuildContext context, bool up) {
    var model = Provider.of<ViewModel>(context);
    return GestureDetector(
      onTapUp: (_) {
        model.clearUrl();
        model.togglePressed(false,false);
      },
      onTapDown: (_) {
        if (up) {
          model.startUp();
          model.togglePressed(true,false);
        } else {
          model.startDown();
          model.togglePressed(false,true);
        }

      },
      child: widget,
    );
  }
}
