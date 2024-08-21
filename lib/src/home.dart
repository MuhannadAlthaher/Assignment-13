import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  Home({super.key});
  TextEditingController cardNumber = TextEditingController();
  TextEditingController expaier = TextEditingController();
  TextEditingController cvt = TextEditingController();
  TextEditingController cardHolder = TextEditingController();

  // دالة لتنسيق رقم البطاقة
  String formatCardNumber(String cardNumber) {
    return cardNumber.replaceAllMapped(
        RegExp(r".{4}"), (match) => "${match.group(0)} ");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCBD0DC),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 297.78,
              margin: const EdgeInsets.only(left: 37, right: 37),
              width: 315.48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffFFFFFF),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 40,
                    left: 31,
                    right: 31,
                    child: SizedBox(
                      height: 75, // Fixed height for consistency
                      child: TextFormField(
                        controller: cardNumber,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          hintText: 'Card number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                            borderSide: BorderSide(color: Color(0xff2A90F5)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                            borderSide: BorderSide(
                                color:
                                    Color(0xff2A90F5)), // Normal border color
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                            borderSide: BorderSide(
                                color:
                                    Color(0xff1B5E20)), // Focused border color
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                            borderSide: BorderSide(
                                color: Colors.red), // Error border color
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                            borderSide: BorderSide(
                                color:
                                    Colors.red), // Focused error border color
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.length != 16) {
                            return "It needs to be 16 digits";
                          }
                          return null; // Valid input
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    top: 119,
                    left: 31,
                    right: 31,
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 75, // Consistent height
                            child: TextFormField(
                              controller: expaier,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              decoration: InputDecoration(
                                hintText: 'Expiry Date',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide:
                                      BorderSide(color: Color(0xff2A90F5)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide: BorderSide(
                                      color: Color(
                                          0xff2A90F5)), // Normal border color
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide: BorderSide(
                                      color: Color(
                                          0xff1B5E20)), // Focused border color
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide: BorderSide(
                                      color: Colors.red), // Error border color
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide: BorderSide(
                                      color: Colors
                                          .red), // Focused error border color
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.length != 5) {
                                  return "Invalid date";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: SizedBox(
                            height: 75, // Consistent height
                            child: TextFormField(
                              controller: cvt,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              decoration: InputDecoration(
                                hintText: 'CVV',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide:
                                      BorderSide(color: Color(0xff2A90F5)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide: BorderSide(
                                      color: Color(
                                          0xff2A90F5)), // Normal border color
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide: BorderSide(
                                      color: Color(
                                          0xff1B5E20)), // Focused border color
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide: BorderSide(
                                      color: Colors.red), // Error border color
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide: BorderSide(
                                      color: Colors
                                          .red), // Focused error border color
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.length != 3) {
                                  return "Invalid CVV";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 197,
                    left: 31,
                    right: 31,
                    child: SizedBox(
                      height: 75, // Fixed height for consistency
                      child: TextFormField(
                        controller: cardHolder,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(
                              r'[a-zA-Z\s]')), // Allows only letters and spaces
                        ],
                        decoration: InputDecoration(
                          hintText: 'Card Holder',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                            borderSide: BorderSide(color: Color(0xff2A90F5)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                            borderSide: BorderSide(
                                color:
                                    Color(0xff2A90F5)), // Normal border color
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                            borderSide: BorderSide(
                                color:
                                    Color(0xff1B5E20)), // Focused border color
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                            borderSide: BorderSide(
                                color: Colors.red), // Error border color
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter the value";
                          }
                          // Valid input
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 137,
            ),
            ElevatedButton(
              onPressed: () {
                if (cardNumber.text.length != 16 ||
                    expaier.text.length != 5 ||
                    cardHolder.text.isEmpty) {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          backgroundColor: Colors.white,
                          child: Container(
                            height: 183,
                            width: 350,
                            child: Center(child: Text('Wrong input')),
                          ),
                        );
                      });
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          height: 183,
                          width: 350,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff2B2222).withOpacity(0.5),
                                Color(0xff6E6565).withOpacity(1)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 160,
                                left: 230,
                                child: Text(
                                  expaier.text,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 146,
                                left: 190,
                                child: Text(
                                  "exp\ndate",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 143,
                                left: 18,
                                right: 148,
                                child: Text(
                                  cardHolder.text,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 60,
                                left: 31,
                                right: 31,
                                child: Text(
                                  formatCardNumber(cardNumber.text),
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Positioned(
                                  right: 282,
                                  bottom: 120,
                                  child: Image.asset('assets/Vector 2.png'))
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets
                    .zero, // Remove padding for proper gradient display
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      8), // Optional: Adds rounded corners
                ),
              ),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 22, 92, 197),
                      Color.fromARGB(255, 22, 106, 175)
                    ], // Gradient colors
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  width: 269,
                  height: 50,
                  alignment: Alignment.center,
                  child: const Text(
                    'show card data',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
