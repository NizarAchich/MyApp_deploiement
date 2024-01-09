package com.example.demo1.JavaClasses;

import java.util.List;

public class Receipt {
    private Amount amount;
    private String currentStringDateAndTime;
    private Fournisseur fournisseur;
    private Client client;
    private List<Produit> produitList;

    public Receipt(Fournisseur fournisseur, Client client, List<Produit> produitList) {
        this.client = client;
        this.fournisseur = fournisseur;
        this.produitList =produitList;
        generateReceipt();
    }

    private void  generateReceipt(){
        amount = new Amount(produitList);
        DateAndTime dateAndTime = new DateAndTime();
        currentStringDateAndTime = dateAndTime.getDateFormatted();
    }

    @Override
    public String toString() {
        return "Rceipt{" +
                "amount=" + amount +
                ", dateAndTime=" + currentStringDateAndTime +
                ", fournisseur=" + fournisseur +
                ", client=" + client +
                ", produitList=" + produitList +
                '}';
    }
}

