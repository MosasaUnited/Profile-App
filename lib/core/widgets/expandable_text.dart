import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpandableText extends StatefulWidget {
  final String text;

  const ExpandableText({super.key, required this.text});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText>
    with SingleTickerProviderStateMixin {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: isExpanded ? 1.0 : 0.8,
            child: Text(
              isExpanded ? widget.text : widget.text.substring(0, 100),
              style: GoogleFonts.acme().copyWith(
                fontSize: 14.sp,
              ),
              maxLines: isExpanded ? null : 3,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Text(
            textAlign: TextAlign.end,
            isExpanded ? '... Show less' : '... Show more',
            style: TextStyle(
              fontSize: 5.sp,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w900,
              color: Colors.amberAccent,
            ),
          ),
        ),
      ],
    );
  }
}
