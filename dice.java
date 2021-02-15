//Elif Gökpınar - Grade 1
import java.util.Scanner;
public class dice {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//Create a scanner object
		Scanner input = new Scanner(System.in);
		//Prompt the user  to enter a value
		System.out.print("Welcome to dice simulator program.\nEnter a value: ");
		int value=input.nextInt();
		//Create an array 
		int[] array = new int[value];
		//Create an array2 for sums.The sum should be 10<=sum<=60.So,array2 should be 51 value
		int[] array2=new int[51];
			for(int k=0; k<51 ; k++) {
				array2[k]=k;
				}
			//compose all values for array.
			for(int i=0; i<value ; i++) {
				int sum = 0;
					for(int j=1; j<=10 ; j++) {
						sum=sum +(int)(Math.random()*6)+1;
						array[i] =sum;
					}
					}
			//Find how many times occurred the same sum, and print "*"
			for(int m =0; m<51 ; m++) {
				System.out.print(array2[m]+10+": ");
					for(int n = 0; n<value; n++) {
						if(array[n]==array2[m]+10) {
							System.out.print("*");
						}
					}
					System.out.println();
				}
	}
}
