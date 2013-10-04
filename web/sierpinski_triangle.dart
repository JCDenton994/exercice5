library sierpinski_triangle;

import 'dart:html';

part 'board.dart';

int t = 1;

void main() {
  var x = 10;
  var y = 300;
  var dx = 300;
  var dy = 300;
  CanvasElement canvas = document.query('#canvas');
  Board board = new Board(canvas);
  board.triangle(x, y, dx, dy);
  document.query('#play').onClick.listen((e){
    for (var i=1; i<=t; i++){
    board.triangleblanc(x+dx*(t-1), y, dx/t, dy/t);
    }
    document.query('#iterations').text = (t).toString();
    t = t+1;
  });
}

