import 'package:quotix/import_export.dart';
import 'package:webview_flutter/webview_flutter.dart';

class QuotationWebView extends StatefulWidget {
  QuotationModel quote;
  QuotationWebView({super.key,required this.quote});

  @override
  State<QuotationWebView> createState() => _QuotationWebViewState();
}

class _QuotationWebViewState extends State<QuotationWebView> {

  WebViewController _controller = WebViewController();


  String generateProductRows(List<ProductModel> products) {
    int i = 1;
    return products.map((product) {
      final total = product.productQty * product.productPrice;
      return '''
      <tr>
        <td>${i++}</td>
        <td>${product.productName}</td>
        <td>${product.productQty}</td>
        <td>${product.productPrice}</td>
        <td>${total.toStringAsFixed(2)}</td>
      </tr>
    ''';
    }).join();
  }
  @override
  void initState() {

    String initialHtml = ''' 
      <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Quotation</title>
  <style>
    :root {
      --primary-color: #0d6efd;
      --text-color: #333;
      --border-color: #ccc;
      --bg-light: #f9f9f9;
    }

    * {
      box-sizing: border-box;
    }

    body {
      font-family: 'Segoe UI', sans-serif;
      margin: 0;
      padding: 0;
      background: var(--bg-light);
      color: var(--text-color);
    }

    .container {
      max-width: 900px;
      margin: 20px auto;
      background: #fff;
      padding: 30px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
      border-radius: 8px;
    }

    .header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      border-bottom: 2px solid var(--primary-color);
      padding-bottom: 15px;
      flex-wrap: wrap;
    }

    .header img {
      height: 50px;
      margin-bottom: 10px;
    }

    .header h1 {
      color: var(--primary-color);
      font-size: 24px;
      margin: 0;
    }

    .section {
      margin-top: 25px;
    }

    .section-title {
      font-weight: bold;
      font-size: 16px;
      color: var(--primary-color);
      margin-bottom: 10px;
    }

    .info-box {
      display: flex;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 20px;
    }

    .info {
      flex: 1 1 45%;
      font-size: 14px;
      line-height: 1.6;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 25px;
      font-size: 13px;
    }

    th, td {
      border: 1px solid var(--border-color);
      padding: 10px;
      text-align: left;
    }

    th {
      background: #e9f2ff;
      font-weight: 600;
    }

    .totals {
      margin-top: 25px;
      float: right;
      width: 100%;
      max-width: 400px;
    }

    .totals table {
      width: 100%;
      border: none;
    }

    .totals td {
      border: none;
      padding: 6px 8px;
    }

    .totals td.label {
      text-align: left;
      font-weight: 500;
    }

    .totals td.value {
      text-align: right;
    }

    .footer-note {
      clear: both;
      margin-top: 40px;
      font-size: 12px;
      color: #777;
    }

    .footer-note strong {
      color: var(--primary-color);
    }

    .thank-you {
      text-align: center;
      margin-top: 50px;
      font-size: 15px;
      font-weight: 600;
      color: var(--primary-color);
    }

    @media only screen and (max-width: 600px) {
      .header {
        flex-direction: column;
        text-align: center;
      }

      .info-box {
        flex-direction: column;
      }

      .info {
        width: 100%;
      }

      .totals {
        float: none;
        width: 100%;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="header">
      <img src="{COMPANY_LOGO_URL}" alt="Company Logo" />
      <h1>QUOTATION</h1>
    </div>

    <div class="section info-box">
      <div class="info">
        <div class="section-title">From:</div>
        <strong>{COMPANY_NAME}</strong><br/>
        {COMPANY_ADDRESS}<br/>
        GST: {COMPANY_GST}<br/>
        Phone: {COMPANY_PHONE}<br/>
        Email: {COMPANY_EMAIL}
      </div>

      <div class="info">
        <div class="section-title">To:</div>
        <strong>{CLIENT_NAME}</strong><br/>
        {CLIENT_ADDRESS}<br/>
        Phone: {CLIENT_PHONE}<br/>
        Email: {CLIENT_EMAIL}
      </div>
    </div>

    <div class="section">
      <table>
        <thead>
          <tr>
            <th>#</th>
            <th>Item Description</th>
            <th>Qty</th>
            <th>Unit Price</th>
            <th>Total</th>
          </tr>
        </thead>
        <tbody>
          {PRODUCT_ROWS}
        </tbody>
      </table>
    </div>

    <div class="totals">
      <table>
        <tr>
          <td class="label">Subtotal:</td>
          <td class="value">{SUBTOTAL}</td>
        </tr>
        <tr>
          <td class="label">Discount ({DISCOUNT_RATE}%):</td>
          <td class="value">-{DISCOUNT_AMOUNT}</td>
        </tr>
        <tr>
          <td class="label">Tax ({TAX_RATE}%):</td>
          <td class="value">{TAX_AMOUNT}</td>
        </tr>
        <tr>
          <td class="label"><strong>Grand Total:</strong></td>
          <td class="value"><strong>{GRAND_TOTAL}</strong></td>
        </tr>
      </table>
    </div>

    <div class="footer-note">
      <p><strong>Terms & Conditions:</strong></p>
      <p>{TERMS_AND_CONDITIONS}</p>
    </div>

    <div class="thank-you">
      Thank you for your business!
    </div>
  </div>
</body>
</html>

    ''';
    String dynamicHtml = initialHtml
        .replaceAll('{CLIENT_NAME}', widget.quote.quotationReceiverName)
        .replaceAll('{GRAND_TOTAL}', 250.toString())
        .replaceAll('{PRODUCT_ROWS}', generateProductRows(widget.quote.products))
        .replaceAll('{SUBTOTAL}', 100.toString());

    setState(() {
      _controller = WebViewController()
        ..loadHtmlString(dynamicHtml);
    });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: _controller),
    );
  }
}