import 'package:flutter/material.dart';

class AnimationUtils {
  bool isExpanded;
  AnimationController expandController;
  Animation<double> animation;
  TickerProvider parent;

  AnimationUtils({this.isExpanded, this.parent});

  void runExpandCheck() {
    if (isExpanded) {
      expandController.forward();
    }
    else {
      expandController.reverse();
    }
  }

  void prepareAnimations() {
    expandController = AnimationController(
        vsync: parent,
        duration: Duration(milliseconds: 500)
    );
    animation = CurvedAnimation(
      parent: expandController,
      curve: Curves.fastOutSlowIn,
    );
  }
}