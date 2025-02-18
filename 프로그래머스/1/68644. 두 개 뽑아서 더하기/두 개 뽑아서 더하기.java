import java.util.HashSet;

class Solution {
    public int[] solution(int[] numbers) {
        int[] answer = {};
        //중복값 제거를 위해 해시셋 사용
        HashSet<Integer> set = new HashSet<>();
        //두 수를 선택하는 모든 경우의 수
        for(int i = 0; i < numbers.length - 1; i++){
            for(int j = i + 1; j < numbers.length; j++){
                set.add(numbers[i] + numbers[j]);
            }
        }
        //정렬, 배열 반환
        return set.stream().sorted().mapToInt(Integer::intValue).toArray();
    }
}