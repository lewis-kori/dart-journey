int a=10;

reduce(int number){
  for(number; number> 1; number--){
    print("the number is $number");
  }
}

add(int numeral){
  while(numeral<=50){
    print("we are at ${numeral}");
    numeral++;
  }
}
Function placeholder;

void main(){
  placeholder=reduce;
  placeholder(a);
  print("*"*50);
  placeholder=add;
  placeholder(a);
}