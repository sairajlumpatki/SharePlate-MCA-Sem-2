import 'package:flutter/material.dart';

class NeedyRequestPage extends StatelessWidget {
  NeedyRequestPage();

  get _options => null;

  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = TextEditingController();
    TextEditingController _phoneController = TextEditingController();
    TextEditingController _addressController = TextEditingController();
    TextEditingController _quantityController = TextEditingController();
    TextEditingController _descriptionController = TextEditingController();
    var _selectedOption;
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Request Page'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              labelText: 'Name',
              hintText: 'Enter your name',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          TextField(
            controller: _phoneController,
            decoration: const InputDecoration(
              labelText: 'Phone',
              hintText: 'Enter your phone number',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          TextField(
            controller: _addressController,
            decoration: const InputDecoration(
              labelText: 'Address',
              hintText: 'Enter your address',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          TextField(
            controller: _quantityController,
            decoration: const InputDecoration(
              labelText: 'Number of persons',
              hintText: 'Enter Number of persons',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          DropdownButton<String>(
            hint: Text("Select Food Type"),
            items: <String>['Veg', 'Non-Veg'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (_) {},
          ),
          const SizedBox(height: 20.0),
          MaterialButton(
              child: const Text(
                'Request',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Colors.blue,
              onPressed: () => requestFood(context)),
        ]),
      ),
    );
  }
}

void requestFood(BuildContext context) {
  var alertDialog = const AlertDialog(
    title: Text("Your request submitted successfully"),
    content: Text("Please be patient while we arrange food for you"),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
