import 'package:adityagurjar/config/assets.dart';
import 'package:adityagurjar/config/education.dart';
import 'package:adityagurjar/config/expStack.dart';
import 'package:adityagurjar/config/expoStack.dart';
import 'package:adityagurjar/config/work.dart';
import 'package:adityagurjar/widgets/education_widget.dart';
import 'package:adityagurjar/widgets/expStack_widget.dart';
import 'package:adityagurjar/widgets/expoStack_widget.dart';
import 'package:adityagurjar/widgets/responsive_widget.dart';
import 'package:adityagurjar/widgets/work_widget.dart';
import 'package:flutter/material.dart';

class MeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: Image.asset(Assets.avatar).image,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.headline,
                            children: <TextSpan>[
                              new TextSpan(
                                  text:
                                      'Keen and driven software developer whose ambition is to grow my skillset and tackle projects to completion and above expectation.\n\n'),
                              new TextSpan(
                                  text:
                                      'I am eager to relocate. I’m ready to be fully involved with the company and completely dedicated to whatever task/tasks assigned to me.\n'),
                            ]),
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                    ),
                  ),
                ],
              ),
          ResponsiveWidget(
            largeScreen:
              Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  //Expanded(
                    //flex: 1,
                    //child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Experience',
                          textScaleFactor: 2.1,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Container(
                          width: width * .25,
                          height: height * 2.4,
                          child: ResponsiveWidget(
                            largeScreen: GridView.count(
                              padding:
                                  EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
                              crossAxisCount: 1,
                              childAspectRatio: MediaQuery.of(context)
                                      .size
                                      .width /
                                  (MediaQuery.of(context).size.height / 1.3),
                              children: List.generate(work.length,
                                  (index) => WorkWidget(work[index], 0)),
                            ),
                            smallScreen: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: work.length,
                                itemBuilder: (context, index) => WorkWidget(
                                    work[index],
                                    (index == work.length - 1 ? 16.0 : 0))),
                          ),
                        ),
                      ],
                    ),
                  //),
                  //Expanded(
                    //flex: 2,
                    //child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Education',
                          textScaleFactor: 2.1,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Container(
                          width: width * .25,
                          height: height * 6,
                          child: ResponsiveWidget(
                            largeScreen: GridView.count(
                              padding:
                                  EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
                              crossAxisCount: 1,
                              childAspectRatio: MediaQuery.of(context)
                                      .size
                                      .width /
                                  (MediaQuery.of(context).size.height / 1.3),
                              children: List.generate(
                                  education.length,
                                  (index) =>
                                      EducationWidget(education[index], 0)),
                            ),
                            smallScreen: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: education.length,
                                itemBuilder: (context, index) =>
                                    EducationWidget(
                                        education[index],
                                        (index == education.length - 1
                                            ? 16.0
                                            : 0))),
                          ),
                        ),
                      ],
                    ),
                  //),
                  Container(
                    width: width * .25,
                    height: height * 4.3,
                    //child: Expanded(
                      //flex: 3,
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Tech Stack',
                            textScaleFactor: 2.1,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Container(
                            width: width * .25,
                            height: height * 2.4,
                            child: ResponsiveWidget(
                              largeScreen: GridView.count(
                                padding:
                                    EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
                                crossAxisCount: 1,
                                childAspectRatio: MediaQuery.of(context)
                                        .size
                                        .width /
                                    (MediaQuery.of(context).size.height / 1.3),
                                children: List.generate(
                                    expStack.length,
                                    (index) =>
                                        ExpStackWidget(expStack[index], 0)),
                              ),
                              smallScreen: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: expStack.length,
                                  itemBuilder: (context, index) =>
                                      ExpStackWidget(
                                          expStack[index],
                                          (index == expStack.length - 1
                                              ? 16.0
                                              : 0))),
                            ),
                          ),
                          Text(
                            'Exposure',
                            textScaleFactor: 2.1,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Container(
                            width: width * .25,
                            height: height * 1.6,
                            child: ResponsiveWidget(
                              largeScreen: GridView.count(
                                padding:
                                    EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
                                crossAxisCount: 1,
                                childAspectRatio: MediaQuery.of(context)
                                        .size
                                        .width /
                                    (MediaQuery.of(context).size.height / 1.3),
                                children: List.generate(
                                    expoStack.length,
                                    (index) =>
                                        ExpoStackWidget(expoStack[index], 0)),
                              ),
                              smallScreen: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: expoStack.length,
                                  itemBuilder: (context, index) =>
                                      ExpoStackWidget(
                                          expoStack[index],
                                          (index == expoStack.length - 1
                                              ? 16.0
                                              : 0))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  //),
                ],
              ),
            smallScreen:Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
               // Center(
                  // width: width * .35,
                  // height: height * 16.3,
                    //child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Experience',
                          textScaleFactor: 1.5,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Container(
                          width: width * .95,
                          height: height * 2.5,
                          child: ResponsiveWidget(
                            largeScreen: GridView.count(
                              padding:
                              EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
                              crossAxisCount: 1,
                              childAspectRatio: MediaQuery.of(context)
                                  .size
                                  .width /
                                  (MediaQuery.of(context).size.height / 1.3),
                              children: List.generate(work.length,
                                      (index) {
                                        return WorkWidget(work[index], 0);
                                      }),
                            ),
                            smallScreen: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: work.length,
                                itemBuilder: (context, index) => WorkWidget(
                                    work[index],
                                    (index == work.length - 1 ? 16.0 : 0))),
                          ),
                        ),
                        Text(
                          'Education',
                          textScaleFactor: 1.5,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Container(
                          width: width * .95,
                          height: height * 2.3,
                          child: ResponsiveWidget(
                            largeScreen: GridView.count(
                              padding:
                              EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
                              crossAxisCount: 1,
                              childAspectRatio: MediaQuery.of(context)
                                  .size
                                  .width /
                                  (MediaQuery.of(context).size.height / 1.3),
                              children: List.generate(
                                  education.length,
                                      (index) =>
                                      EducationWidget(education[index], 0)),
                            ),
                            smallScreen: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: education.length,
                                itemBuilder: (context, index) =>
                                    EducationWidget(
                                        education[index],
                                        (index == education.length - 1
                                            ? 16.0
                                            : 0))),
                          ),
                        ),
                        Text(
                          'Tech Stack',
                          textScaleFactor: 1.5,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Container(
                          width: width * .95,
                          height: height * 2.5,
                          child: ResponsiveWidget(
                            largeScreen: GridView.count(
                              padding:
                              EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
                              crossAxisCount: 1,
                              childAspectRatio: MediaQuery.of(context)
                                  .size
                                  .width /
                                  (MediaQuery.of(context).size.height / 1.3),
                              children: List.generate(
                                  expStack.length,
                                      (index) =>
                                      ExpStackWidget(expStack[index], 0)),
                            ),
                            smallScreen: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: expStack.length,
                                itemBuilder: (context, index) =>
                                    ExpStackWidget(
                                        expStack[index],
                                        (index == expStack.length - 1
                                            ? 16.0
                                            : 0))),
                          ),
                        ),
                        Text(
                          'Exposure',
                          textScaleFactor: 1.5,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Container(
                          width: width * .75,
                          height: height * 1.6,
                          child: ResponsiveWidget(
                            largeScreen: GridView.count(
                              padding:
                              EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
                              crossAxisCount: 1,
                              childAspectRatio: MediaQuery.of(context)
                                  .size
                                  .width /
                                  (MediaQuery.of(context).size.height / 1.3),
                              children: List.generate(
                                  expoStack.length,
                                      (index) =>
                                      ExpoStackWidget(expoStack[index], 0)),
                            ),
                            smallScreen: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: expoStack.length,
                                itemBuilder: (context, index) =>
                                    ExpoStackWidget(
                                        expoStack[index],
                                        (index == expoStack.length - 1
                                            ? 16.0
                                            : 0))),
                          ),
                        ),
                      ],
                    ),
                  //),
              ],
            ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}
