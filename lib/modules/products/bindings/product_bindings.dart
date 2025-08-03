import 'package:quotix/import_export.dart';
import 'package:quotix/modules/products/controller/product_controller.dart';

class ProductBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ProductController(),);
  }

}