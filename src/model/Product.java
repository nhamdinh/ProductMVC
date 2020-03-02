package model;

public class Product {
    private int id;
    private String name;
    private float prime;
    private String description;
    private String company;

    public Product() {
    }

    public Product(int id, String name, float prime, String description,String company) {
        this.id = id;
        this.name = name;
        this.prime = prime;
        this.description = description;
        this.company = company;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrime() {
        return prime;
    }

    public void setPrime(float prime) {
        this.prime = prime;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }
}