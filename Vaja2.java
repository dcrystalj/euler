public class Vaja2 {
    public static void main(String[] args) {
        int[][] grid = {{-1,2,3},{3,7,5},{-4,-5,-5}};
        //System.out.print(grid.length);
        System.out.println(algorithm(grid));
    }

    public static int algorithm(int[][] grid) {
        int n = grid.length;
        int[][] c = new int[n+2][n+2];
        for (int i = 1; i < n+1; i++)
            for (int j = 1; j < n+1; j++)
             c[i][j] = grid[i-1][j-1] + c[i][j-1] + c[i-1][j] - c[i-1][j-1];

        int best = 0;//c[1][1];

        for (int i1 = 0; i1 < n; i1++)
            for (int j1 = 0; j1 < n; j1++)
                for(int i2 = i1+1; i2 < n+1; i2++)
                    for (int j2 = j1+1; j2 < n+1; j2++) {
                        int current = c[i2][j2] - c[i2][j1] - c[i1][j2] +c[i1][j1];
                        best = Math.max(current, best);
                    }
        return best;
    }
}