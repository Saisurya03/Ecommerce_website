package Product;
public class Product {
    
        private int Id, q;
        private double p;
        private String path;

        
    public double getPrice(){
        return p;
    }
    
    public void setPrice(double price){
        this.p = price;
    }
   
    public String getPath(){
        return path;
    }
    
    public void setPath(String pth){
        this.path = pth;
    }
    public int getQty(){
        return q;
    }
    
    public void setQty(int qty){
        this.q = qty;
    }
    
    public int getProductId(){
        return Id;
    }
    
    public void setProductId(int productId){
        this.Id = productId;
    }
    
}
