import 'package:quotix/import_export.dart';

abstract class QuotationRepository{
  Future<void> getAllQuote({required BuildContext context});

  Future<void> addQuote({required BuildContext context,required QuotationModel newQuote});

  Future<void> editQuote({required BuildContext context,required int quoteId,required QuotationModel updatedQuote});

  Future<void> deleteQuote({required BuildContext context,required int quoteId});
}