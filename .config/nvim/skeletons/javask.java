import java.io.*;
import java.util.*;

public{
	public static void main(String [] args) throws IOException{
		InputOutput.inout();
		int t=1;
		Scanner sc = new Scanner(System.in);
		t = sc.nextInt();
		sc.nextLine();
		while(t>0){
			Solve.solve(sc);
			t--;
		}
		sc.close();
	}
}

class  InputOutput { 
	public static void inout() throws IOException { 
		if (System.getProperty("ONLINE_JUDGE") == null) { 
			PrintStream ps 
				= new PrintStream(new File("output.txt")); 
			InputStream is 
				= new FileInputStream("input.txt"); 

			System.setIn(is); 
			System.setOut(ps); 
		} 
	} 
}

class Solve{
	public static void solve(Scanner sc) throws IOException{
			
	}
}


