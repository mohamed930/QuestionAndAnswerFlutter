import 'package:flutter/material.dart';

import '../Customs + Extensions/Font.dart';

class Mainbuttoncomponets extends StatefulWidget {
  final String? answer;
  final ValueChanged<bool>? onChecked;

  const Mainbuttoncomponets({super.key, this.answer, this.onChecked});

  @override
  State<Mainbuttoncomponets> createState() => _MainbuttoncomponetsState();
}

class _MainbuttoncomponetsState extends State<Mainbuttoncomponets> {
  bool? _status;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: .infinity,
      height: 50,
      child: TextButton(
        onPressed: () {
          _checkAnswer();
        },
        style: TextButton.styleFrom(
          backgroundColor: _setBackGround(),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(
          'Confirm Answer',
          style: Font.bold.style.copyWith(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }

  void _checkAnswer() {
    setState(() {
      _status = widget.answer ==  "The first element of an array has an index of 1." ? true : false;
    });

    widget.onChecked?.call(_status ?? false);
  }

  Color _setBackGround() {
    if (_status != null) {
      return _status == true ? Colors.green : Colors.red;
    } else {
      return Theme.of(context).colorScheme.primary;
    }
  }
}
