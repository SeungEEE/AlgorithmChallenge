import java.util.Scanner;

class Main {
	static boolean [] nums = new boolean[1001];
	
	public static void calculator() {
		int [] triangleNums = new int[50];
		int triangleNumCount = 0;
		
		for(int i = 1; ; i++) {
			int triangleNum = i * (i + 1) / 2;
			if(triangleNum > 1000) break;
			triangleNums[triangleNumCount++] = triangleNum;
		}
		
		for(int i = 0; i < triangleNumCount; i++)
			for(int j = i; j < triangleNumCount; j++)
				for(int k = j; k < triangleNumCount; k++) {
					int num = triangleNums[i] + triangleNums[j] + triangleNums[k];
					if(num > 1000) break;
					nums[num] = true;
				}
	}
	
	public static void main(String[] args) {
		calculator();
		
		Scanner sc = new Scanner(System.in);
		int T = sc.nextInt();
		while (T-- > 0) {
			int k = sc.nextInt();
			System.out.println(nums[k] ? "1" : "0");
		}
	}
}