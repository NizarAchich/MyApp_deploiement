package com.example.demo1;

import java.util.List;

public class Amount {
    private double Total_Amount_HT;
    private double TPS_Amount;
    private double TVQ_Amount;
    private double Total_Amount_TTC;

    public Amount(List<Produit> produitList) {
        calculateCommandeAmmount(produitList);
    }

    public void calculateCommandeAmmount (List<Produit> produitList){
        Total_Amount_HT = 0;
        TPS_Amount = 0;
        TVQ_Amount = 0;
        Total_Amount_TTC = 0;
        for (Produit produit: produitList) {
            Total_Amount_HT = Total_Amount_HT + produit.getPrix()* produit.getQuantite();
        }
        TPS_Amount = Taxe.TPS.taux * Total_Amount_HT;
        TVQ_Amount = Taxe.TVQ.taux * Total_Amount_HT;
        Total_Amount_TTC = Total_Amount_HT + TPS_Amount + TVQ_Amount;
    }

    @Override
    public String toString() {
        return "Amount{" +
                "Total_Amount_HT=" + Total_Amount_HT +
                ", TPS_Amount=" + TPS_Amount +
                ", TVQ_Amount=" + TVQ_Amount +
                ", Total_Amount_TTC=" + Total_Amount_TTC +
                '}';
    }
}

