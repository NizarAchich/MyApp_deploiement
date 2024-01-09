package com.example.demo1.JavaClasses;

public class Produit {
    private String code;
    private String nom;
    private int quantite;
    private double prix;

    public Produit(String code, String nom, int quantité, double prix) {
        this.code = code;
        this.nom = nom;
        this.quantite = quantité;
        this.prix = prix;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getQuantite() {
        return quantite;
    }

    public void setQuantite(int quantite) {
        this.quantite = quantite;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

    @Override
    public String toString() {
        return "Produit{" +
                "code='" + code + '\'' +
                ", nom='" + nom + '\'' +
                ", quantité=" + quantite +
                ", prix=" + prix +
                '}';
    }
}

