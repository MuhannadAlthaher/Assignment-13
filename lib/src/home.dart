import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCBD0DC),
      body: Center(
        child: Container(
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
                            color: Color(0xff2A90F5)), // Normal border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: BorderSide(
                            color: Color(0xff1B5E20)), // Focused border color
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide:
                            BorderSide(color: Colors.red), // Error border color
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: BorderSide(
                            color: Colors.red), // Focused error border color
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
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                            hintText: 'Expiry Date',
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
                                  color:
                                      Colors.red), // Focused error border color
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
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                            hintText: 'CVV',
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
                                  color:
                                      Colors.red), // Focused error border color
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
                            color: Color(0xff2A90F5)), // Normal border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: BorderSide(
                            color: Color(0xff1B5E20)), // Focused border color
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide:
                            BorderSide(color: Colors.red), // Error border color
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: BorderSide(
                            color: Colors.red), // Focused error border color
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter the value";
                      }
                      return null; // Valid input
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
