class complex{
  num real;
  num imaginary;
  
  complex(this.real,this.imaginary);

  complex.real(num real):this(real,0);
  complex.imaginary(num imaginary):this(0,imaginary);

  get realnumber=>real;
  set realnumber(num value)=> real=value;
  
  get imaginarynumber=>real;
  set imaginarynumber(num value)=> real=value;
  
  @override
  String toString() {
    // TODO: implement toString
    if(imaginary>=0){
      return '${real}+${imaginary}i';
    }
    return '${real}${imaginary}i';
  }
 
}

void main(){
  var c = complex(-4,-2);
  var r=complex.real(20);
  var i = complex.imaginary(-2);
  print(i);
  i.realnumber=50;
  print(i.realnumber);
  print(i);
  print(r);
  print(c.real);
  print(c.imaginary);
  print(c);
}