public class Vaja {
	public static void main(String[] args) {
		System.out.println(algorithm(args[0], 0, (args[0]).length()-1));
		System.out.println(args[0].length());
	}
	private static int algorithm(String s, int i, int j) {
	if (i > j) return 0;
	if (i == j) return 1;
	else if (s.charAt(i) == s.charAt(j))
		return algorithm(s, i+1, j-1) + 2;
	return Math.max(algorithm(s, i+1,j), algorithm(s, i,j-1));
	}
}
