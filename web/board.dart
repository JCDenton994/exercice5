part of sierpinski_triangle;

class Board {
  CanvasRenderingContext2D context;

  Board(CanvasElement canvas) {
    context = canvas.getContext("2d");
  }

  void triangle(x, y, dx, dy) {
    context.beginPath();
    context.fillStyle = "#000000";
    context.moveTo(x,y);
    context.lineTo(x+dx,y-dy);
    context.lineTo(x+2*dx,y);
    context.closePath();
    context.fill();
    context.stroke();
  }
void triangleblanc(x, y, dx, dy){
    context.beginPath();
    context.fillStyle = "#FFFFFF";
    context.moveTo(x+dx/2,y-dy/2);
    context.lineTo(x+1.5*dx,y-dy/2);
    context.lineTo(x+dx,y);
    context.closePath();
    context.fill();
    context.stroke();
}
  
}
