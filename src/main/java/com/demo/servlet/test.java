package com.demo.servlet;

public class test {
	
    public static int solution(int n) {
        int answer = 0;
        for(int i=1; i<=n; i++) {
        	int count = 0;
        	for(int j=1; j<=i; j++) {
        	if(i%j==0) {
        		count++;
        		}
        	}
        	if(count==2) {
        		answer++;
        	}
        }
        return answer;
    }
    
    public static int solution2(int n) {
    	int answer = 0;
    	int count = 0;
    	int[] arr = new int[n+1];
    	for(int i=1; i<=n; i++) {
    		arr[i] = i;
    	}
    	for(int i=1; i<=n; i++) {
    		if(arr[i]%i==0) {
    			count++;
    		}
    		if(count==2) {
    			answer++;
    			count = 0;
    		}
    	}
    	
    	return answer;
    }
    
    public static void main(String[] args) {
		
    	System.out.println(solution(5));
    	System.out.println(solution2(5));
	}

}
