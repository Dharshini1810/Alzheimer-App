import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:Demen_Buster/screens/diagnose/games/celebrity5.dart';

bool userAnswered = false;
bool correctAnswer = false;
bool answer1 = false;
bool answer2 = false;
bool answer3 = false;
bool answer4 = false;

class CelebrityFourth extends StatefulWidget {
  final int simonLevel;
  final int celebrityPoints;
  final bool fromChooseGame;
  CelebrityFourth(
      {this.fromChooseGame = false,
      this.simonLevel = 0,
      this.celebrityPoints = 0});
  @override
  _CelebrityFourthState createState() => _CelebrityFourthState();
}

class _CelebrityFourthState extends State<CelebrityFourth> {
  handleAnswers(bool e, int ansnum) {
    userAnswered = true;
    if (ansnum == 1) {
      answer1 = true;
    }
    if (ansnum == 2) {
      answer2 = true;
    }
    if (ansnum == 3) {
      answer3 = true;
    }
    if (ansnum == 4) {
      answer4 = true;
    }
    setState(() {});
  }

  @override
  void initState() {
    userAnswered = false;
    answer1 = false;
    answer2 = false;
    answer3 = false;
    answer4 = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            MediaQuery.of(context).size.height * 0.06,
            MediaQuery.of(context).size.height * 0.06,
            MediaQuery.of(context).size.height * 0.06,
            MediaQuery.of(context).size.height * 0.005),
        child: Column(
          children: <Widget>[
            Text(
              'Celebrity Quiz',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontSize: 30, fontFamily: 'Quicksand'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.22,
              width: MediaQuery.of(context).size.width * 0.45,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                image: DecorationImage(
                    image: AssetImage('assets/images/amit.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              'Q4. Which famous actor is this?',
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(fontSize: 22, fontFamily: 'Quicksand'),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.014),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    if (!userAnswered) {
                      handleAnswers(false, 1);
                    }
                  },
                  child: Card(
                    color: (answer1) ? Colors.green : Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27.0),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    child: ListTile(
                      title: Text(
                        "1. Amitabh Bachchan",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (!userAnswered) {
                      handleAnswers(false, 2);
                    }
                  },
                  child: Card(
                    color: (answer2) ? Colors.red : Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27.0),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    child: ListTile(
                      title: Text(
                        "2. Dilip Kumar",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (!userAnswered) {
                      handleAnswers(true, 3);
                    }
                  },
                  child: Card(
                    color: (answer3) ? Colors.red : Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27.0),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    child: ListTile(
                      title: Text(
                        "3. Rishi Kapoor",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (!userAnswered) {
                      handleAnswers(true, 4);
                    }
                  },
                  child: Card(
                    color: (answer4) ? Colors.red : Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27.0),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    child: ListTile(
                      title: Text(
                        "4. Dev Anand",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                    ),
                    (userAnswered)
                        ? RawMaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CelebrityFifth(
                                      fromChooseGame: true,
                                      simonLevel: widget.simonLevel,
                                      celebrityPoints: (answer1)
                                          ? widget.celebrityPoints + 1
                                          : widget.celebrityPoints),
                                ),
                              );
                            },
                            //RawMaterialButton widget class is used for building buttons from scratch
                            child: Icon(
                              FontAwesomeIcons.arrowRight,
                              color: Colors.white,
                            ), //Icon widget requires an either Icons.someicon or FontAwesomeIcons.someicon value
                            constraints:
                                BoxConstraints.tightFor(width: 56, height: 56),
                            shape: CircleBorder(),
                            fillColor: Color(0xFF4C4F5E),
                            elevation: 0.0,
                          )
                        : Text(''),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
