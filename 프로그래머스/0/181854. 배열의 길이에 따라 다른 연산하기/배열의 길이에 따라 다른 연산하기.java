class Solution {
    public int[] solution(int[] arr, int n) {
        int[] answer = arr;
        if(arr.length % 2 ==1){
            //홀수라면
            for(int i=0;i<arr.length;i=i+2){
                answer[i] = arr[i] + n;
            }
        }else{
            for(int i=1;i<arr.length;i=i+2){
                answer[i] = arr[i] + n;
            }
        }
        return answer;
    }
}