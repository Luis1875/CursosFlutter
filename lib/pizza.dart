// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

class DevelpsPizza extends StatelessWidget {
  const DevelpsPizza({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          //color: Color.fromARGB(255, 237, 4, 4),
          child: Column(
        children: [PizzaBuild(), PizzaOptions()],
      )),
    ));
  }
}

class PizzaOptions extends StatelessWidget {
  const PizzaOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 0),

        //  height: 10,
        //color: Colors.black,
        child: Column(
          children: [
            PizzaButtons(
              children: [TextB("S"), TextB("M"), TextB("L"), TextB("XL")],
              color: Colors.amber,
              index: 1,
              text: 'Sizes',
            ),
            SizedBox(
              height: 10,
            ),
            PizzaButtons(
              children: [
                Image(image: AssetImage('lib/assets/images/ingredient1.png')),
                Image(image: AssetImage('lib/assets/images/ingredient2.png')),
                Image(image: AssetImage('lib/assets/images/ingredient3.png')),
                Image(image: AssetImage('lib/assets/images/ingredient4.png')),
              ],
              color: Colors.amber,
              index: 2,
              text: 'Ingredientes',
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(231, 241, 236, 1),
                  foregroundColor: Colors.grey.shade800),
              onPressed: () {},
              child: Text("Buy now"),
            )
          ],
        ),
      ),
    );
  }
}

class TextB extends StatelessWidget {
  String txt;
  TextB(
    this.txt, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      style: TextStyle(fontWeight: FontWeight.bold),
      txt,
      textAlign: TextAlign.center,
      textScaleFactor: 1.8,
    );
  }
}

class PizzaButtons extends StatelessWidget {
  List<Widget> children;
  Color? color;
  int? index;
  String text;
  PizzaButtons({
    Key? key,
    required this.children,
    this.color,
    this.index,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // verticalDirection: VerticalDirection.up,
            children: [
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (var i = 0; i < children.length; i++)
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: index != null && index == i ? color : null,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      width: media.width * .1,
                      height: media.width * .1,
                      //  color: Colors.amber,
                      child: children[i],
                    )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class PizzaBuild extends StatelessWidget {
  const PizzaBuild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 5),
        child: Material(
          elevation: 2,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromRGBO(231, 241, 236, 1),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text ("Pepperoni Pizza"),
                        Text("Hot pizza with peper")
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Container(
                    child:
                        Image(image: AssetImage('lib/assets/images/pizza.png')),
                    //color: Colors.blue,
                  )),
              Expanded(
                  child: Container(
                // color: Colors.deepPurple,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Made by"),
                        Text("Gregorio Rubio Chávez")
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}