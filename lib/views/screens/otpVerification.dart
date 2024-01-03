import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpVerify extends StatefulWidget {
  OtpVerify({Key? key}) : super(key: key);

  @override
  _OtpVerifyState createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    _focusNodes = List.generate(4, (index) => FocusNode());
    _controllers = List.generate(4, (index) => TextEditingController());
  }

  @override
  void dispose() {
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _requestFocus(int index) {
    if (index < _focusNodes.length - 1) {
      _focusNodes[index + 1].requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue, leading: Icon(Icons.arrow_back, color: Colors.white,),),
        body: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'OTP Verification',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
              ),
              SizedBox(height: 8),
              Text(
                'Please enter the confirmation code that has been sent to your mobile number.',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 18),
              Row(
                children: List.generate(
                  _focusNodes.length,
                  (index) => Flexible(
                    child: TextField(
                      controller: _controllers[index],
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: '',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                      ),
                      focusNode: _focusNodes[index],
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          _requestFocus(index);
                        }
                      },
                    ),
                  ),
                ).expand((widget) => [widget, SizedBox(width: 8)]).toList(),
              ),
              SizedBox(height: 18),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white),
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
