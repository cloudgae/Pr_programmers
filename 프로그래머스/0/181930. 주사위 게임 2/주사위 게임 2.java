class Solution {
    public int solution(int a, int b, int c) {
        int answer = 0;
        if(a == b && b == c){
            //세 숫자가 모두 같음
            answer = (int)((a+b+c)
                *(Math.pow(a,2)+Math.pow(b,2)+Math.pow(c,2))
                *(Math.pow(a,3)+Math.pow(b,3)+Math.pow(c,3)));
        }else if(a!=b && b!=c && a!=c){
            //세 숫자가 모두 다름
            answer = a+b+c;
        }else{
            answer = (a+b+c)
                *(int)(Math.pow(a,2)+Math.pow(b,2)+Math.pow(c,2));
        }
        return answer;
    }
}