package eud.sm.service;

import eud.sm.dto.Cust;
import eud.sm.dto.Product;
import eud.sm.frame.SmService;
import eud.sm.repository.ProductRepository;
import eud.sm.util.FileUploadUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService implements SmService<Product, Integer> {

    final ProductRepository  productRepository;

    @Value("${app.dir.uploadimgsdir}")
    String imgDir;

    @Override
    public void register(Product product) throws Exception {
        if(product.getProductImgFile() != null){
            product.setProductImg(product.getProductImgFile().getOriginalFilename());
            FileUploadUtil.saveFile(product.getProductImgFile(), imgDir);
        }
        productRepository.insert(product);
    }

    @Override
    public void modify(Product product) throws Exception {
        productRepository.update(product);
    }

    @Override
    public void remove(Integer s) throws Exception {
        productRepository.delete(s);
    }

    @Override
    public List<Product> get() throws Exception {
        return productRepository.selectAll();
    }

    @Override
    public Product get(Integer s) throws Exception {
        return productRepository.select(s);
    }
}