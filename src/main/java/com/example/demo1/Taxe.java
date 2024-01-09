package com.example.demo1;

public enum Taxe {
    TPS(0.05) , TVQ(0.09975);
    public final double taux;

    Taxe(double taux) {
        this.taux = taux;
    }
}
