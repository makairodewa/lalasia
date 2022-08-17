import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;
import 'package:lalasia/constants/style.dart';

class InteractiveNavItem extends MouseRegion {
  static final appContainer =
      html.window.document.querySelectorAll('flt-glass-pane')[0];

  InteractiveNavItem(
      {Key? key,
      Widget? child,
      String? text,
      String? routeName,
      bool? selected})
      : super(
          key: key,
          onHover: (PointerHoverEvent evt) {
            appContainer.style.cursor = 'pointer';
          },
          onExit: (PointerExitEvent evt) {
            appContainer.style.cursor = 'default';
          },
          child: InteractiveText(
            text: text!,
            routeName: routeName,
            selected: selected,
          ),
        );
}

class InteractiveText extends StatefulWidget {
  final String text;
  final String? routeName;
  final bool? selected;

  const InteractiveText({
    Key? key,
    required this.text,
    this.routeName,
    this.selected,
  }) : super(key: key);

  @override
  InteractiveTextState createState() => InteractiveTextState();
}

class InteractiveTextState extends State<InteractiveText> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (_) => _hovered(true),
      onExit: (_) => _hovered(false),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Text(widget.text,
              style: _hovering
                  ? kPageTitleStyle.copyWith(
                      color: primary,
                    )
                  : (widget.selected!)
                      ? kPageTitleStyle.copyWith(color: primary)
                      : kPageTitleStyle),
          Positioned(
            bottom: -50,
            child: Visibility(
              visible: _hovering || widget.selected!,
              child: Container(
                height: 3,
                width: 76,
                color: primary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _hovered(bool hovered) {
    setState(() {
      _hovering = hovered;
    });
  }
}

const TextStyle kPageTitleStyle =
    TextStyle(color: tile, fontWeight: FontWeight.w500, fontSize: 18);
