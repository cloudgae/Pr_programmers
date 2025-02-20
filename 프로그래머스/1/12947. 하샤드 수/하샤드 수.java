class Solution {
    public boolean solution(int x) {
        String[] s = String.valueOf(x).split("");
        int sum = 0;
        for(String str : s){
            sum += Integer.parseInt(str);
        }
        return (x%sum==0)?true:false;
    }
}