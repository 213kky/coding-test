import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.Stack;

public class Main {

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int T = Integer.parseInt(br.readLine());

        for (int i = 0; i < T; i++) {
            Stack<Character> stack = new Stack<>();
            char[] chars = br.readLine().toCharArray();

            int k = 0;
            for (int j = 0; j < chars.length; j++, k++) {
                if (chars[j] == '(') {
                    stack.push('(');
                } else {
                    if (stack.isEmpty()) {
                        bw.write("NO\n");
                        break;
                    } else {
                        stack.pop();
                    }
                }
            }
            if (!stack.isEmpty()) {
                bw.write("NO\n");
            } else if(k == chars.length) {
                bw.write("YES\n");
            }
        }

        bw.flush();
    }

}