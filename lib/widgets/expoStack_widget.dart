import 'package:adityagurjar/models/expoStack_model.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class ExpoStackWidget extends StatelessWidget {
  final ExpoStack _expoStack;
  final double _bottomPadding;
  ExpoStackWidget(this._expoStack, this._bottomPadding);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, _bottomPadding),
      child: InkWell(
        onTap: onExpoStackClick,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                flex: 40,
                child: Image.asset(
                  _expoStack.image,
                  width: width * .25,
                  height: height * .25,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(),
              ),
              Expanded(
                flex: 60,
                child: Container(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Text(
                        '\n\n\n'+_expoStack.name+'\n',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onExpoStackClick() {
    if (_expoStack.link != null) html.window.open(_expoStack.link, 'grant.verheul');
  }
}
