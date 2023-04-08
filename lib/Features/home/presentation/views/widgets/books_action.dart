import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: const [
          Expanded(
            child: CustomButton(
              fontSize: 19,
              text: '19.99€',
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
              textColor: Colors.black,
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              fontSize: 16,
              backgroundColor: Color(0xffef8262),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
