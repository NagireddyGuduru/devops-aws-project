package in.javahome.myweb.controller;

/*
 * 
 */
public class Calculator {
	   public int add(int number1, int number2) 
   {
     if (number1> number2)
	   return number1 + number2;
	   else 
		   return 10101010;
   }
   
   public int sub(int number1, int number2) {
      return number1 - number2;
   }
   
   public int mul(int number1, int number2) {
      return number1 * number2;
   }
   
   public int div(int number1, int number2) {
      return number1 / number2;
   }
   
}
