class ProductModel {
  int? productId;
  String productName;
  double productPrice;
  double productDiscount;
  double productTax;
  String? productImage;
  int productQty;

  ProductModel({
    this.productId,
    required this.productName,
    required this.productPrice,
    required this.productDiscount,
    required this.productTax,
    required this.productQty,
    this.productImage,
  });

  factory ProductModel.fromJson(Map<String, dynamic> product) {
    return ProductModel(
      productId: product['id'],
      productName: product['name'],
      productPrice: (product['price'] as num).toDouble(),
      productDiscount: (product['discount'] as num).toDouble(),
      productTax: (product['tax'] as num).toDouble(),
      productQty: (product['qty'] as num).toInt(),
      productImage: product['image']
    );
  }

  Map<String,dynamic> toJson(){
    return {
      'id' : productId,
      'name' : productName,
      'price' : productPrice,
      'discount' : productDiscount,
      'tax' : productTax,
      'qty' : productQty,
      'image' : productImage
    };
  }
}