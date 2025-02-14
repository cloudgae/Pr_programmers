class Solution {
    public long solution(int a, int b) {
        long answer = 0;
        if(a == b){
            answer = Long.valueOf(a);
        }else if(a < b){
            for(int i=a;i<=b;i++){
                answer += Long.valueOf(i);
            }
        }else{
            for(int i=a;i>=b;i--){
                answer += Long.valueOf(i);
            }
        }
        return answer;
    }
    //int를 long으로 변환 => Long.valueOf()
}