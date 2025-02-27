class Solution {
    public int solution(int left, int right) {
        int answer = 0;
        int yak=0;
        for(int i=left;i<=right;i++){
            yak=0;
            for(int j=1;j<=i;j++){
                if(i%j==0){
                    yak++;
                }
            }
            if(yak%2==0){
                answer+=i;
            }else{
                answer-=i;
            }
        }
        return answer;
    }
}