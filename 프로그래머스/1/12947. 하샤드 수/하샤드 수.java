class Solution {
    public boolean solution(int x) {
        boolean answer = true;
        int hap =0;
        hap += x/10000;
        hap += x%10000/1000;
        hap += x%1000/100;
        hap += x%100/10;
        hap += x%10;
        
        if(x%hap==0){
            answer=true;
        }else{
            answer=false;
        }
        return answer;
    }
}