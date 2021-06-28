import 'package:flutter/material.dart';

class ListTitleRow extends StatelessWidget {
  final String title;
  final String suffix;

  const ListTitleRow({
    required this.title,
    required this.suffix,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 15,vertical: 20
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
          InkWell(
            child: Text(
              suffix,
              style: TextStyle(
                fontSize: 18.5,
                color: Colors.purple.shade400,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
