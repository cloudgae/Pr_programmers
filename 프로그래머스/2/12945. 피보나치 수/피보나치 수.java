class Solution {
    public int solution(int n) {
        int answer = 0;
        if(n==0){
            return 0;
        }else if(n==1){
            return 1;
        }
        int funa=0, funb=1;
        for(int i=2;i<=n;i++){
            answer = (funa+funb)%1234567;;
            funa=funb;
            funb=answer;
        }
        return answer;
    }
    
    public int func(int n){
        if(n==0){
            return 0;
        }else if(n==1){
            return 1;
        }else{
            return func(n-1)+func(n-2);
        }
    }
}