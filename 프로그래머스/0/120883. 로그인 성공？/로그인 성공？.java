class Solution {
    public String solution(String[] id_pw, String[][] db) {
        String result = "";

        for(int i = 0; i < db.length; i++) {
            if(db[i][0].equals(id_pw[0])) {
                if(db[i][1].equals(id_pw[1])) {
                    result = "login";
                    break;
                } else {
                    result = "wrong pw";
                    break;
                }
            } else {
                result = "fail";
            }
        }

        return result;
    }
}