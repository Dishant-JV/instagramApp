import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirebaseOtp extends StatefulWidget {
  const FirebaseOtp({Key? key}) : super(key: key);

  @override
  _FirebaseOtpState createState() => _FirebaseOtpState();
}

class _FirebaseOtpState extends State<FirebaseOtp> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController number = TextEditingController();
  TextEditingController otpField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: number,
              decoration: InputDecoration(
                  hintText: "Enter Number", border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: otpField,
              decoration: InputDecoration(
                  hintText: "Enter Otp", border: OutlineInputBorder()),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    phoneSignIn(int.parse(number.text));
                  },
                  child: Text("send")),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(onPressed: () {}, child: Text("verify")),
            ],
          )
        ],
      ),
    );
  }

  void phoneSignIn(int phone) async {
    await _auth.verifyPhoneNumber(phoneNumber: "+91{$phone}",
        verificationCompleted: _onVerificationCompleted,
        verificationFailed: _onVerificationFailed,
        codeSent: _onCodeSent,
        codeAutoRetrievalTimeout: _onCodeTimeout);
  }

   _onVerificationCompleted(PhoneAuthCredential phoneAuthCredential) {
  }

   _onVerificationFailed(FirebaseAuthException error) {
  }

   _onCodeSent(String verificationId, int? forceResendingToken ) {
  }

  void _onCodeTimeout(String verificationId) {
  }
}
