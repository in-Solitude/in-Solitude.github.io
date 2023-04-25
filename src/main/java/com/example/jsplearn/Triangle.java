package com.example.jsplearn;

public class Triangle {
    private int  a,b,c;
    double area, round;
     boolean is_tri;

    public void makeTriangle(){
        is_tri = a + b >= c && a + c >= b && b + c >= a;
        if (is_tri){
            double s=(a+b+c)/2.0;
          area =Math.sqrt(s*(s-a)*(s-b)*(s-c));
          round =a+b+c;
        }
    }

    public boolean get_is_tri() {
        return is_tri;
    }

    public double getArea() {
        return area;
    }
    public void setA(int a){
        this.a=a;
    }

    public void setB(int b) {
        this.b = b;
    }
    public void setC(int c){
        this.c=c;
    }
}
