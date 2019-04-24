import 'dart:math';

abstract class Shape{
  String get name;
  double get perimeter;
  double get area;
}

class circle extends Shape{
  double radius;
  circle(this.radius);
  @override
  // TODO: implement area
  double get area => radius*radius * pi;

  @override
  // TODO: implement name
  String get name => 'I am a big circle with raius of ${radius}';

  @override
  // TODO: implement perimeter
  double get perimeter => pi*radius;
  
}

class Rectangle extends Shape{
  double length,width;

  Rectangle(this.length,this.width);

  @override
  // TODO: implement area
  double get area => length*width;

  @override
  // TODO: implement name
  String get name => 'I am a rectangle of length ${length} and width ${width}';

  @override
  // TODO: implement perimeter
  double get perimeter => 2*(length+width);

}
class Square extends Rectangle{
  Square(double side):super(side,side);
  @override
  String get name=> "I am a square with side: ${length}";
}



void main() {
 /* circle c = circle(21.0);
  Rectangle r = Rectangle(24.2, 13.2);
  Square s = Square(19.0);

  print(c.name);
  print(r.name);
  print(s.name); */
  Shape randShape;
  Random random =Random();
  int choice =random.nextInt(3);
  switch(choice){
    case 0:
    randShape=circle(random.nextInt(10)+1.0);
    break;
    case 1:
    randShape=Rectangle(
      random.nextInt(15)+1.0, random.nextInt(6)+1.0);
      break;
    case 2:
    randShape=Square(random.nextInt(20)+1.0);
    break;
    default:
    print("I will never run");
  }  
  print(randShape.name);
  print(randShape.perimeter);
  print(randShape.area);
  
}