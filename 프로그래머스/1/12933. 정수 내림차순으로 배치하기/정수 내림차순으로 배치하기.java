import java.util.*;
class Solution {
    public long solution(long n) {
        long answer = 0;
        //정수 String으로 변환, 쪼개서 String[]만들기
        String[] arr = Long.toString(n).split("");
        //Collections사용 내림차순 정렬
        Arrays.sort(arr, Collections.reverseOrder());
        
        String str = "";
        //arr길이만큼 반복
        for(String s : arr){
            str += s;
        }
        //long으로 변환
        answer = Long.parseLong(str);
        return answer;
    }
}