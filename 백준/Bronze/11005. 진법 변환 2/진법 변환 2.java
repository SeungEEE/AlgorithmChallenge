import java.util.Scanner;

class Main {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int N = sc.nextInt();
		int B = sc.nextInt();
		
		String answer = "";
		while(N > 0) {
			int digit = N % B;
			if (digit < 10) answer += digit;
			else answer += (char)('A' + digit - 10);
			N /= B;
		}
		System.out.println(new StringBuilder(answer).reverse());
	}
}