import 'package:flutter/material.dart';
import 'package:homee/theme/colors.dart';
import 'package:homee/theme/theme_constants.dart';


class CategoryButton extends StatefulWidget {
  const CategoryButton({
    super.key,
    required this.icon,
    required this.color,
    required this.onPressed,
    this.checked = false
  });

  final IconData icon;
  final Color color;
  final Function onPressed;
  final bool checked;

  @override
  State<CategoryButton> createState() => CategoryButtonState();
}

class CategoryButtonState extends State<CategoryButton> {
  bool checked = false;

  @override
  void initState() {
    super.initState();
    checked = widget.checked;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => checked = !checked);
        widget.onPressed();
      },
      child: CircleAvatar(
        radius: 30,
        backgroundColor: widget.color,
        child: CircleAvatar(
          radius: 27,
          backgroundColor: checked ? widget.color : getBackgroundColor(),
          child: Icon(widget.icon,
            color: checked ? Colors.black : getTextColor(),
          ),
        )
      ),
    );
  }
}