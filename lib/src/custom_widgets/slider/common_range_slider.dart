import 'package:flutter/material.dart';

class CommonRangeSlider extends StatefulWidget {
  final double min;
  final double max;
  final double initialValue;
  final Color primaryColor;
  final Function(RangeValues) onChange;
  final bool? isNumVisible;
  final int? divisions;
  final String? label;
  const CommonRangeSlider({
    Key? key,
    required this.min,
    required this.max,
    this.initialValue = 0.0,
    this.primaryColor = Colors.indigo,
    required this.onChange,
    this.isNumVisible,
    this.divisions,
    this.label,
  }) : super(key: key);

  @override
  _CommonRangeSliderState createState() => _CommonRangeSliderState();
}

class _CommonRangeSliderState extends State<CommonRangeSlider> {
  ValueNotifier<RangeValues> _values =
      ValueNotifier<RangeValues>(RangeValues(1, 100));

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: widget.primaryColor,
        inactiveTrackColor: widget.primaryColor.withAlpha(35),
        trackShape: const RoundedRectSliderTrackShape(),
        trackHeight: 4.0,
        thumbShape: widget.isNumVisible == true
            ? CustomSliderThumbCircle(
                thumbRadius: 20,
                min: widget.min,
                max: widget.max,
              )
            : null,
        thumbColor: widget.primaryColor,
        overlayColor: widget.primaryColor.withAlpha(35),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
        tickMarkShape: RoundSliderTickMarkShape(),
        activeTickMarkColor: widget.primaryColor,
        inactiveTickMarkColor: widget.primaryColor.withAlpha(35),
        valueIndicatorShape: PaddleSliderValueIndicatorShape(),
        valueIndicatorColor: widget.primaryColor,
        valueIndicatorTextStyle: TextStyle(
          color: Colors.white,
        ),
        showValueIndicator: ShowValueIndicator.always,
      ),
      child: ValueListenableBuilder(
        valueListenable: _values,
        builder: (BuildContext context, dynamic value, Widget? child) {
          return RangeSlider(
            min: widget.min,
            max: widget.max,
            activeColor: widget.primaryColor,
            labels: RangeLabels('${_values.value.start.round()}',
                '${_values.value.end.round()}'),
            inactiveColor: widget.primaryColor.withAlpha(35),
            divisions: widget.divisions,
            values: _values.value,
            onChanged: (value) {
              _values.value = value;
              widget.onChange(value);
            },
          );
        },
      ),
    );
  }
}

class CustomSliderThumbCircle extends SliderComponentShape {
  final double thumbRadius;
  final double min;
  final double max;

  const CustomSliderThumbCircle({
    required this.thumbRadius,
    this.min = 0.0,
    this.max = 100.0,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final paint = Paint()
      ..color = Colors.white //Thumb Background Color
      ..style = PaintingStyle.fill;

    TextSpan span = TextSpan(
      style: TextStyle(
        fontSize: thumbRadius * .8,
        fontWeight: FontWeight.w700,
        color: sliderTheme.thumbColor, //Text Color of Value on Thumb
      ),
      text: getValue(value),
    );

    TextPainter tp = TextPainter(
        text: span,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);
    tp.layout();
    Offset textCenter =
        Offset(center.dx - (tp.width / 2), center.dy - (tp.height / 2));

    canvas.drawCircle(center, thumbRadius * .9, paint);
    tp.paint(canvas, textCenter);
  }

  String getValue(double value) {
    return (min + (max - min) * value).round().toString();
  }
}
