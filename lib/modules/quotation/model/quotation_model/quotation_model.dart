import 'package:quotix/import_export.dart';

class QuotationModel {
  int? quotationId;
  String quotationName;
  String quotationSenderName;
  String quotationReceiverName;
  List<ProductModel> products;

  QuotationModel({
    this.quotationId,
    required this.quotationName,
    required this.quotationSenderName,
    required this.quotationReceiverName,
    required this.products,
  });

  factory QuotationModel.fromJson(Map<String, dynamic> quote) {
    return QuotationModel(
      quotationId: quote['id'],
      quotationName: quote['name'],
      quotationSenderName: quote['quotationSender'],
      quotationReceiverName: quote['quotationReceiver'],
      products: quote['products'],
    );
  }

  Map<String,dynamic> toJson(){
    return {
      'id' : quotationId,
      'name' : quotationName,
      'quotationSender' : quotationSenderName,
      'quotationReceiver' : quotationReceiverName,
      'products' : products
    };
  }
}
