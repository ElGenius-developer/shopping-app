import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCounters extends StatefulWidget {
  @override
  _ItemCountersState createState() => _ItemCountersState();
}

class _ItemCountersState extends State<ItemCounters> {
  var _counter;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _counter = 1;
  }

  void _increment() {
    setState(() {
      _counter++;

      print(_counter);
    });
  }

  void _decrement() {
    if (_counter > 1)
      setState(() {
        _counter--;
      });
  }

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 40,
                height: 28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(
                    color: Colors.black26,
                  ),
                ),
                child: CupertinoButton(
                  child: Icon(
                    CupertinoIcons.minus,
                    color: Colors.black54,
                  ),
                  onPressed: () => _decrement(),
                  borderRadius: BorderRadius.circular(13),
                  padding: EdgeInsets.all(0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                (_counter < 10) ? "0$_counter" : "$_counter",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 40,
                height: 28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(
                    color: Colors.black26,
                  ),
                ),
                child: CupertinoButton(
                  child: Icon(
                    CupertinoIcons.add,
                    color: Colors.black54,
                  ),
                  onPressed: () => _increment(),
                  borderRadius: BorderRadius.circular(13),
                  padding: EdgeInsets.all(0),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child:  Container(

            child: CupertinoButton(
              child: Icon(
                CupertinoIcons.heart_circle_fill,
                color: Color(0xffE53944),
                size: 35,
              ),
              onPressed: () => print(""),
              borderRadius: BorderRadius.circular(13),
              padding: EdgeInsets.all(0),
            ),
          ),
        ),

      ],
    );
  }
}
