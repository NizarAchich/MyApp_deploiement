package com.example.demo1.JavaClasses;

import java.util.List;

public class Amount {
    private double totalAmountHT;
    private double amountTPS;
    private double amountTVQ;
    private double totalAmountTTC;

    public Amount(List<Produit> produitList) {
        calculateCommandeAmmount(produitList);
    }

    public void calculateCommandeAmmount (List<Produit> produitList){
        totalAmountHT = 0;
        amountTPS = 0;
        amountTVQ = 0;
        totalAmountTTC = 0;
        for (Produit produit: produitList) {
            totalAmountHT = totalAmountHT + produit.getPrix()* produit.getQuantite();
        }
        amountTPS = Taxe.TPS.taux * totalAmountHT;
        amountTVQ = Taxe.TVQ.taux * totalAmountHT;
        totalAmountTTC = totalAmountHT + amountTPS + amountTVQ;
    }

    @Override
    public String toString() {
        return "Amount{" +
                "totalAmountHT=" + totalAmountHT +
                ", amountTPS=" + amountTPS +
                ", amountTVQ=" + amountTVQ +
                ", totalAmountTTC=" + totalAmountTTC +
                '}';
    }

    public double getTotalAmountHT() {
        return totalAmountHT;
    }

    public void setTotalAmountHT(double totalAmountHT) {
        this.totalAmountHT = totalAmountHT;
    }

    public double getAmountTPS() {
        return amountTPS;
    }

    public void setAmountTPS(double amountTPS) {
        this.amountTPS = amountTPS;
    }

    public double getAmountTVQ() {
        return amountTVQ;
    }

    public void setAmountTVQ(double amountTVQ) {
        this.amountTVQ = amountTVQ;
    }

    public double getTotalAmountTTC() {
        return totalAmountTTC;
    }

    public void setTotalAmountTTC(double totalAmountTTC) {
        this.totalAmountTTC = totalAmountTTC;
    }
}

