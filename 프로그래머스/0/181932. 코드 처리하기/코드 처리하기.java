import java.util.*;

class Solution {
    public String solution(String code) {
        String answer = "";
        String[] codeArr = code.split("");
        int mode = 0;
        for(int i=0;i<code.length();i++){
            if(mode == 0){
                if(!codeArr[i].equals("1")){
                    if(i%2==0){
                        answer += codeArr[i];
                    }
                }else{
                    mode = 1;
                }
            }else if(mode == 1){
                if(!codeArr[i].equals("1")){
                    if(i%2==1){
                        answer += codeArr[i];
                    }
                }else{
                    mode = 0;
                }
            }
            
        }
        if(answer.isEmpty()){
            return "EMPTY";
        }
        else return answer;
    }
}