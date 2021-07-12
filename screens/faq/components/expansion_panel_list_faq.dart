import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class MyQuestions {
  MyQuestions({this.isExpanded: false, this.question, this.answer});

  final String question;
  final String answer;
  bool isExpanded;
}

class ExpansionPanelListFAQ extends StatefulWidget {
  const ExpansionPanelListFAQ({
    Key key,
  }) : super(key: key);

  @override
  _ExpansionPanelListFAQState createState() => _ExpansionPanelListFAQState();
}

class _ExpansionPanelListFAQState extends State<ExpansionPanelListFAQ> {
  List<MyQuestions> _items = <MyQuestions> [
    MyQuestions(
      question: "What is Treaźe?", 
      answer: "Lorem ipsum dolor sit amet, elit. Sed purus ac sapien, vitae. Massa enim eget sed ac, massa risus ut. Ut sed at aenean tincidunt.\n",
    ),
    MyQuestions(
      question: "How do I purchase a treasure map?", 
      answer: "Lorem ipsum dolor sit amet, elit. Sed purus ac sapien, vitae. Massa enim eget sed ac, massa risus ut. Ut sed at aenean tincidunt.\n",
    ),
    MyQuestions(
      question: "Where will the cards be located?", 
      answer: "Lorem ipsum dolor sit amet, elit. Sed purus ac sapien, vitae. Massa enim eget sed ac, massa risus ut. Ut sed at aenean tincidunt.\n",
    ),
    MyQuestions(
      question: "What is the Treaźe refund policy?", 
      answer: "Lorem ipsum dolor sit amet, elit. Sed purus ac sapien, vitae. Massa enim eget sed ac, massa risus ut. Ut sed at aenean tincidunt.\n",
    ),
    MyQuestions(
      question: "Do I need a mobile phone?", 
      answer: "Lorem ipsum dolor sit amet, elit. Sed purus ac sapien, vitae. Massa enim eget sed ac, massa risus ut. Ut sed at aenean tincidunt.\n",
    ),
    MyQuestions(
      question: "Can I participate with a group?", 
      answer: "Lorem ipsum dolor sit amet, elit. Sed purus ac sapien, vitae. Massa enim eget sed ac, massa risus ut. Ut sed at aenean tincidunt.\n",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExpansionPanelList(
        elevation: 0,
        dividerColor: Colors.white,
        children: _items.map((MyQuestions item) {
          return ExpansionPanel(
            backgroundColor: Color(0xFFF5F6F9),
            headerBuilder: (BuildContext context, bool isExpanded) {
              return Padding(
                padding: EdgeInsets.only(left: getProportionateScreenWidth(5)),
                child: ListTile(
                  title: Text(
                    item.question,
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              );
            },
            isExpanded: item.isExpanded,
            body: Container(
              child: Padding(
                padding: EdgeInsets.only(left: getProportionateScreenWidth(5)),
                child: ListTile(
                  title: Text(
                    item.answer,
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: getProportionateScreenWidth(14),
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ),
            )
          );
        }).toList(),
        expansionCallback: (int index, bool expanded) {
          if (expanded == false) {
            for (final subop in _items) {
              if (_items[index] == subop) {
                setState(() {
                  _items[index].isExpanded = true;
                });
              }
              setState(() {
                subop.isExpanded = false;
              });
            }
          }
          setState(() {
            _items[index].isExpanded = !expanded;
          });
        },
      ),
    );
  }
}