import 'package:flutter/material.dart';

class SelectAmount {
  final String amount;
  final String offer;
  final Color color;

  SelectAmount({
    required this.amount, 
    required this.offer, 
    this.color = Colors.blue
  });
}

List <SelectAmount> amountSelect = [

  SelectAmount(
    amount: '₹ 50', 
    offer: '100% Extra', 
    color: Colors.green,
  ),

  SelectAmount(
    amount: '₹ 100', 
    offer: '100% Extra', 
    color: Colors.green,
  ),

  SelectAmount(
    amount: '₹ 200', 
    offer: '50% Extra', 
    color: Colors.green,
  ),

  SelectAmount(
    amount: '₹ 500', 
    offer: '50% Extra', 
    color: Colors.green,
  ),

  SelectAmount(
    amount: '₹ 1000', 
    offer: '10% Extra', 
    color: Colors.green,
  ),

  SelectAmount(
    amount: '₹ 2000', 
    offer: '10% Extra', 
    color: Colors.green,
  ),

  SelectAmount(
    amount: '₹ 4000', 
    offer: '12% Extra', 
    color: Colors.green,
  ),

  SelectAmount(
    amount: '₹ 8000', 
    offer: '12% Extra', 
    color: Colors.green,
  ),

  SelectAmount(
    amount: '₹ 15000', 
    offer: '20% Extra', 
    color: Colors.green,
  ),
];

class AmountSelect extends StatefulWidget {
  const AmountSelect({super.key, required this.amount, required this.offer, required this.color});

  final String amount;
  final String offer;
  final Color color;

  @override
  State<AmountSelect> createState() => _AmountSelectState();
}

class _AmountSelectState extends State<AmountSelect> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 20,),
          child: Column(
            children: [       
              Text(
                widget.amount,
                style: const TextStyle(
                  fontSize: 13,
                 // fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
                textAlign: TextAlign.center,
              ),
            
              const SizedBox(
                height: 10,
              ),
            
              Text(widget.offer,
                style: const TextStyle(
                  fontSize: 13,
                 // fontWeight: FontWeight.bold,
                  color: Colors.green
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}