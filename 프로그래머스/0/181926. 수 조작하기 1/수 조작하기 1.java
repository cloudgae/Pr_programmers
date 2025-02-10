class Solution {
    public int solution(int n, String control) {
        String[] controlArr = control.split("");
        for(int i=0;i<controlArr.length;i++){
            if(controlArr[i].equals("w")){
                n++;
            }else if(controlArr[i].equals("s")){
                n--;
            }else if(controlArr[i].equals("d")){
                n = n+10;
            }else if(controlArr[i].equals("a")){
                n = n-10;
            }
        }
        return n;
    }
}