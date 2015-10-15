
library application.literal;

import 'dart:core';
import 'block.dart';

class Integer extends Block {

  int _a;

  Integer(this._a) {}

  String toPython(int indentLevel) {
    return _a.toString();
  }
}

class StringLiteral extends Block {

  String _a;

  StringLiteral(this._a) {}

  String toPython(int indentLevel) {
    return "'${_a.toString()}'";
  }
}