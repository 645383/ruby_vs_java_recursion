package com.example;

public class Hanoi {
    public static void main(String[] args) {
        int [] plates = {25, 26, 27, 28, 29, 30, 31, 32};
        for (int i = 0; i < plates.length; i++) {
            long start = System.currentTimeMillis();
            doTowers(plates[i], 'A', 'B', 'C');
            System.out.println((System.currentTimeMillis() - start));
        }
    }

    public static void doTowers(int topN, char from, char inter, char to) {
        if (topN == 1) {
//            System.out.println("Disk 1 from " + from + " to " + to);
        } else {

            doTowers(topN - 1, from, to, inter);
//            System.out.println("Disk " + topN + " from " + from + " to " + to);
            doTowers(topN - 1, inter, from, to);
        }
    }
}
