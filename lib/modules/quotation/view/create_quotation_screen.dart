import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotix/import_export.dart';

class CreateQuotationScreen extends StatefulWidget {
  const CreateQuotationScreen({super.key});

  @override
  State<CreateQuotationScreen> createState() => _CreateQuotationScreenState();
}

class _CreateQuotationScreenState extends State<CreateQuotationScreen> {
  int _currentStep = 0;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BACKGROUND_COLOR,
      appBar: AppBar(
        title: const Text('Create Quotation', style: GlobalStyle.appBarTitle),
        backgroundColor: PRIMARY_COLOR,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: EasyStepper(
              activeStep: _currentStep,
              lineStyle: LineStyle(
                lineSpace: 0,
                lineType: LineType.dashed,
                defaultLineColor: SOFT_GREY,
                finishedLineColor: PRIMARY_COLOR,
              ),
              stepShape: StepShape.circle,
              stepBorderRadius: 0,
              activeStepBorderColor: PRIMARY_COLOR,
              activeStepTextColor: PRIMARY_COLOR,
              finishedStepTextColor: PRIMARY_COLOR,
              showLoadingAnimation: false,
              steps: const [
                EasyStep(icon: Icon(Icons.person), title: 'Details'),
                EasyStep(icon: Icon(CupertinoIcons.cube_box), title: 'Products'),
                EasyStep(icon: Icon(Icons.percent), title: 'Tax & Discount'),
                EasyStep(icon: Icon(Icons.receipt_long), title: 'Summary'),
              ],
              onStepReached: (index) => setState(() => _currentStep = index),
            ),
          ),
          Expanded(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: _buildStepContent(),
              ),
            ),
          ),
          _buildNavigationButtons(),
        ],
      ),
    );
  }

  Widget _buildStepContent() {
    switch (_currentStep) {
      case 0:
        return _buildBasicDetails();
      case 1:
        return _buildProductSelection();
      case 2:
        return _buildTaxAndDiscount();
      case 3:
        return _buildSummary();
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildBasicDetails() {
    return ListView(
      children: [
        _buildTextField(label: "Client Name"),
        _buildTextField(label: "Business Name"),
        _buildTextField(label: "Phone Number", keyboardType: TextInputType.phone),
        _buildTextField(label: "Email", keyboardType: TextInputType.emailAddress),
        _buildTextField(label: "Address", maxLines: 3),
        _buildTextField(label: "City"),
      ],
    );
  }

  Widget _buildProductSelection() {
    return Column(
      children: [
        const Text("Select Products (Coming Soon)", style: GlobalStyle.sectionTitle),
        const SizedBox(height: 20),
        Expanded(
          child: Center(
            child: Icon(CupertinoIcons.cube_box, color: SOFT_GREY, size: 60),
          ),
        )
      ],
    );
  }

  Widget _buildTaxAndDiscount() {
    return ListView(
      children: [
        _buildTextField(label: "Discount %", keyboardType: TextInputType.number),
        _buildTextField(label: "GST %", keyboardType: TextInputType.number),
        _buildTextField(label: "Shipping Charges", keyboardType: TextInputType.number),
        _buildTextField(label: "Other Notes", maxLines: 3),
      ],
    );
  }

  Widget _buildSummary() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Quotation Summary", style: GlobalStyle.sectionTitle),
        const Divider(height: 20, thickness: 1),
        _buildSummaryItem("Client", "Harsh Enterprises"),
        _buildSummaryItem("Products", "3 items selected"),
        _buildSummaryItem("Discount", "10%"),
        _buildSummaryItem("GST", "18%"),
        _buildSummaryItem("Total", "₹12,500"),
        const Spacer(),
        Center(
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: PRIMARY_COLOR,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onPressed: () {
              
            },
            icon: Icon(Icons.check_circle,color: Colors.white,),
            label: Text("Generate Quotation",style: GlobalStyle.productName.copyWith(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildTextField({required String label, TextInputType keyboardType = TextInputType.text, int maxLines = 1,}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        maxLines: maxLines,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: PRIMARY_TEXT_COLOR),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: PRIMARY_COLOR),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        validator: (val) => val == null || val.isEmpty ? "Required" : null,
      ),
    );
  }

  Widget _buildSummaryItem(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: GlobalStyle.accountInformationLabel),
          Text(value, style: GlobalStyle.accountInformationValue),
        ],
      ),
    );
  }

  Widget _buildNavigationButtons() {
    return Container(
      color: CARD_COLOR,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (_currentStep > 0)
            OutlinedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              onPressed: () => setState(() => _currentStep--),
              child: const Text("Back", style: TextStyle(color: PRIMARY_COLOR)),
            ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: PRIMARY_COLOR,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            onPressed: () {
              if (_currentStep < 3) {
                setState(() => _currentStep++);
              } else {
                // Final step submission logic here
              }
            },
            child: Text(_currentStep < 3 ? "Next" : "Finish"),
          ),
        ],
      ),
    );
  }
}