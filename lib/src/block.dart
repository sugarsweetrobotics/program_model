
library application.block;

import 'dart:core';
import 'dart:collection';

abstract class Block {

  Statement() {

  }

  String toPython(int indentLevel);
}



class BlockList extends ListMixin<Block> {

  List<Block> list = [];

  BlockList() {
  }

  void set length(int newLength) {list.length = newLength;}

  int get length => list.length;

  Block operator[](int index) => list[index];

  void operator[]=(int index, Block value) {list[index] = value;}

  void add(Block child) {list.add(child);}
}