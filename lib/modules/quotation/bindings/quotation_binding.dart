import 'package:quotix/import_export.dart';
import 'package:quotix/modules/quotation/controller/quotation_controller.dart';

class QuotationBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => QuotationController());
  }

}