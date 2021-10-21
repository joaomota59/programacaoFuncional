import java.util.Scanner; //leitura dos dados

interface multiply{  
    float mult(float m,float n);  
}  
  
public class Main{  
    public static void main(String[] args) {  
    	float a,b;
    	Scanner myObj = new Scanner(System.in);
    	System.out.print("Valor do 1° Fator:");
    	a = myObj.nextFloat();
    	System.out.print("Valor do 2° Fator:");
    	b = myObj.nextFloat();
    	System.out.println("");
    	
        // Multiple parameters in lambda expression  
    	multiply ad1=(m,n)->(m*n);  
        System.out.println(Float. toString(a)+" * "+Float. toString(b)+" = "+Float. toString(ad1.mult(a,b)));  
        
    }  
}  
