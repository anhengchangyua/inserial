package com.zhy.cloud.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Tool {

    /**驼峰转下划线 */
    private static Pattern humpPattern = Pattern.compile("[A-Z]");
    public static String humpToLine2(String str){
        Matcher matcher = humpPattern.matcher(str);
        StringBuffer sb = new StringBuffer();
        while(matcher.find()){
            matcher.appendReplacement(sb, "_"+matcher.group(0).toLowerCase());
        }
        matcher.appendTail(sb);
        return sb.toString();
    }
}
