package in.javahome.myweb.controller;

import junit.framework.Assert;
import junit.framework.TestCase;

public class CalculatorTest extends TestCase {
	Calculator cal = new Calculator();
	
   public void testAdd1() {
	   Assert.assertEquals("Add is Success!",110, cal.add(100, 10));
	 //  assertEquals("Add is Success!",10101010, cal.add(10, 100));
    }
  public void testAdd2() {
	   Assert.assertEquals("Add is Success!",120, cal.add(100, 20));
    }

  public void testAdd3() {
	   try{
	   Assert.assertEquals("Add is Success!",220, cal.add(120, 100));
	   }catch(Exception e){
		System.out.println("Test Failed" + e.getMessage());
	   }
   }

   public void testSub1() {
	   Assert.assertEquals("Substraction is Success!", 90, cal.sub(100, 10)); 	  
   }
 
   
   public void testSub2() {
	   Assert.assertEquals("Substraction is Success!", 95, cal.sub(100, 5)); 	  
   }
  
   
   public void testSub3() {
	   Assert.assertEquals("Substraction is Success!", 85, cal.sub(100, 15)); 	  
   }

   
   public void testMul() {
	   Assert.assertEquals("Multiplication is Success!", 1000, cal.mul(100, 10)); 	  
   }
   
   
   public void testDiv() {
	   Assert.assertEquals("Division is Success!", 10, cal.div(100, 10)); 	  
   }
}
