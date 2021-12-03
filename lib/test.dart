

void main ()
{
    String componentToHex(int c) {
      String hex = c.toRadixString(16);
      return hex.length == 1 ? "0" + hex : hex;
    }
    //
    // String rgbToHex(r, g, b) {
    //   return componentToHex(r) + componentToHex(g).toUpperCase() + componentToHex(b).padLeft(2,'0').toUpperCase();
    // }
  String hexOfRGBA(int r,int g,int b,)
  {

    return componentToHex(r) + componentToHex(g) +  componentToHex(b);
  }
    print(hexOfRGBA(0, 255,300,));
  // if(n % x == 0 && n % y == 0 ) {
  //   print('true because  $n is divisible by $x and $y');
  // }else if(n/x==false || n/y==false){
  //   print('false because  $n is not divisible by $x or $y');
  // }else{
  //   print('false because  $n is not divisible by $x or $y');
  // }
  // var res = Fun.numbersPhone([1,2,3,4,5,6,7,8,9,0]);

}
class Fun
{
  static String numbersPhone (List numbers)
  {
    // var firstPart = "";
    // var secondPart = "";
    // var thirdPart = "";
    // for(var i=0; i < numbers.length;i++){
    //   if(i<3){
    //    numbers.join(firstPart += numbers[i].toString());
    //   }else if (i>=3 && i<=5){
    //     numbers.join(secondPart += numbers[i].toString());
    //   }else {
    //     numbers.join(thirdPart += numbers[i].toString());
    //   }
    // }
    // return '($firstPart) $secondPart-$thirdPart';
    // var n = numbers.join('');
    // return '(${n.substring(0, 3)}) ${n.substring(3, 6)}-${n.substring(6)}';
    var range = numbers.length;
    numbers.remove(0);
    var listAfterJoin = numbers.join('+');
    var firstPart = numbers.fold(range, (a, b) => b + a);
    return '$listAfterJoin = $firstPart ';
  }
  bool? isDivisible(int n, int x, int y) {
    return n % x == 0 && n % y == 0;
  }

  static String showSequence(num n) {
    if (n<0) {return "$n<0";}
    if (n==0) {return "0=0";}
    var total = 0;
    // String message = "0";
    for (var i=1; i<=n; i++)
    {
      total += i;
      // message += "+$i";
    }
    return "$total";
  }

  static double showSequence2 (int n) {
    return n*(n+1) /2;
  }
}
