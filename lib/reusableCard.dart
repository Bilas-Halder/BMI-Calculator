import 'package:flutter/material.dart';
class ReusableCard extends StatefulWidget {
  final Color color;
  final Widget child;
  final VoidCallback onPressed;
  //constructor
  ReusableCard({@required this.color, this.child, this.onPressed});

  @override
  State<ReusableCard> createState() => _ReusableCardState();
}

class _ReusableCardState extends State<ReusableCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
          if(widget.onPressed!=null)widget.onPressed();
        },
        child: Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: this.widget.child,
        ),
      ),
    );
  }
}
