import 'package:flutter/material.dart';

class DonationRequest {
  final String name;
  final String address;
  final String contact;

  DonationRequest({
    required this.name,
    required this.address,
    required this.contact,
  });
}

class ReceiveRequest {
  final String name;
  final String address;
  final String contact;

  ReceiveRequest({
    required this.name,
    required this.address,
    required this.contact,
  });
}

class NGOPage extends StatelessWidget {
  final List<DonationRequest> donationRequests = [
    DonationRequest(
      name: 'Jayesh',
      address: 'Kothrud',
      contact: '9876543210',
    ),
    DonationRequest(
      name: 'Ramesh',
      address: 'Warje',
      contact: '9874563210',
    ),
    DonationRequest(
      name: 'Deepak',
      address: 'Wakad',
      contact: '9876541230',
    ),
  ];

  final List<ReceiveRequest> receiveRequests = [
    ReceiveRequest(
      name: 'Aakash',
      address: 'Pashan',
      contact: '9087654321',
    ),
    ReceiveRequest(
      name: 'Ajay',
      address: 'Aundh',
      contact: '9087561234',
    ),
    ReceiveRequest(
      name: 'Sophia',
      address: 'Kondhwa',
      contact: '9078564321',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NGO Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Food Donation Requests',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: donationRequests.length,
              itemBuilder: (context, index) {
                final donationRequest = donationRequests[index];
                return ListTile(
                  title: Text(donationRequest.name),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(donationRequest.address),
                      Text(donationRequest.contact),
                    ],
                  ),
                  trailing: ButtonBar(
                    children: [
                      TextButton(
                        child: Text('Approve'),
                        onPressed: () {
                          // Add your approve logic here
                        },
                      ),
                      TextButton(
                        child: Text('Delete'),
                        onPressed: () {
                          // Add your delete logic here
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Food Receive Requests',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: receiveRequests.length,
              itemBuilder: (context, index) {
                final receiveRequest = receiveRequests[index];
                return ListTile(
                  title: Text(receiveRequest.name),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(receiveRequest.address),
                      Text(receiveRequest.contact),
                    ],
                  ),
                  trailing: ButtonBar(
                    children: [
                      TextButton(
                        child: Text('Approve'),
                        onPressed: () {
                          // Add your approve logic here
                        },
                      ),
                      TextButton(
                        child: Text('Delete'),
                        onPressed: () {
                          // Add your delete logic here
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: NGOPage(),
  ));
}
