import '../../../import_export.dart';

abstract class ProductRepository{
  Future<void> getAllProduct({required BuildContext context});
  Future<void> addProduct({required BuildContext context,required ProductModel newProduct});
  Future<void> editProduct({required BuildContext context,required int productId,required ProductModel updatedProduct});
  Future<void> deleteProduct({required BuildContext context,required int productId});
}