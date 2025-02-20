import java.util.*;

class Solution {
    public int[] solution(int[] arr) {

        if(arr.length==1){
            int[] answer = {-1};
            return answer;
        }
        
        int min=arr[0];
        for(int i=1;i<arr.length;i++){
            if(arr[i]<min){
                min=arr[i];
            }
        }
        ArrayList<Integer> ansList = new ArrayList<>();
        
        for(int i=0;i<arr.length;i++){
            if(arr[i]!=min){
                ansList.add(arr[i]);
            }
        }
        int[] answer = ansList.stream().mapToInt(Integer::intValue).toArray();
        return answer;
    }
}