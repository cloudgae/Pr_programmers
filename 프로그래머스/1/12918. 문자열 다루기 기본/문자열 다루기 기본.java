class Solution {
    public boolean solution(String s) {
        boolean answer = true;
        //길이가 4 또는 6
        if(s.length()==4){
            for(int i=0;i<4;i++){
                if(Character.isDigit(s.charAt(i))==false){
                    answer=false;
                    break;
                }
            }    
        }else if(s.length()==6){
            for(int i=0;i<6;i++){
                if(Character.isDigit(s.charAt(i))==false){
                    answer=false;
                    break;
                }
            }
        }else{
            answer = false;
        }
        
        return answer;
    }
}