import java.util.*;

public class Solution {
    public int[] solution(int []arr) {
        int[] answer = {};
        //리스트로 조작
        ArrayList<Integer> answerList = new ArrayList<>();
        
        answerList.add(arr[0]);
        
        for(int i=1;i<arr.length;i++){
            if(arr[i-1]!=arr[i]){
                answerList.add(arr[i]);
            }
        }
        
        answer = answerList.stream().mapToInt(Integer::intValue).toArray();

        return answer;
    }
}