import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetCounter extends StatelessWidget {
  const GetCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterInc counterInc = Get.put(CounterInc());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(118.0),
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Obx(() => Container(
                  child: Text(
                    counterInc.counter.value.toString(),
                    style: TextStyle(fontSize: 25),
                  ),
                )),
            SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                counterInc.increment();
              },
              child: Icon(
                Icons.plus_one,
                size: 30,
              ),
            ),
            InkWell(
                onTap: () {
                  counterInc.re();
                },
                child: Text("Reset")),
            SizedBox(
              height: 50,
            ),
            InkWell(
                onTap: () {
                  counterInc.counter.value = RxInt(12);
                },
                child: Text("Set"))
          ],
        ),
      ),
    );
  }
}

class CounterInc extends GetxController {
  var counter = RxInt(0).obs;

  increment() => counter.value++;

  re() {
    counter.value = RxInt(0);
  }
}
