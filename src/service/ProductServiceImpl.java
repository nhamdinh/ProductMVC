package service;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {

    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "Spectre x360", 20000f, "big refresh","HP"));
        products.put(2, new Product(2, "XPS 13", 30000f, "powerful","Dell"));
        products.put(3, new Product(3, "Elite Dragonfly", 40000f, "business","HP"));
        products.put(4, new Product(4, "MateBook 13", 50000f, "latest","Huawei"));
        products.put(5, new Product(5, "MacBook Pro", 60000f, "amazing","Apple"));
        products.put(6, new Product(6, "Area-51m", 70000f, "deserves","Alienware"));
        products.put(7, new Product(7, "Pixelbook Go", 80000f, "performance","Google"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}