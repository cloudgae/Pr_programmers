class Solution {
    public long solution(long price, long money, long count) {
        long answer = 0;
        if(money < price*(count*(count+1)/2)){
            answer = price*(count*(count+1)/2) - money;
        }
        return answer;
    }
}