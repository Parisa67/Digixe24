library carousel_indicator;

import 'package:flutter/material.dart';

import 'basep_ainter.dart';

class CarouselIndicator extends StatefulWidget {
  /// width of the indicator
  final double width;

  /// height of the indicator
  final double height;

  /// space between indicators.
  final double space;

  /// count of indicator
  final int? count;

  /// active color
  final Color activeColor;

  /// normal color
  final Color color;

  /// use this to give some radius to the corner indicator
  final double cornerRadius;

  /// duration for slide animation
  final int animationDuration;

  final int? index;

  final bool rtl;

  const CarouselIndicator({
    Key? key,
    this.width= 15.0,
    this.height= 2,
    this.space= 5.0,
    this.count,
    this.cornerRadius= 6,
    this.animationDuration= 300,
    this.color= Colors.white30,
    this.index,
    this.rtl = false,
    this.activeColor= Colors.white,
  })  : assert(count != null && count != 0),
        assert(index != null && index >= 0),
        super(key: key);

  @override
  State<StatefulWidget> createState() {
    return  _CarouselIndicatorState();
  }
}

class _CarouselIndicatorState extends State<CarouselIndicator>
    with TickerProviderStateMixin {
  /// [Tween] object of type double
  late Tween<double> _tween;

  /// [AnimationController] object
  late AnimationController _animationController;

  /// [Aniamtion] object
  late Animation _animation;

  /// [Paint] object to paint our indicator
  Paint paint =  Paint();

  /// Method to initilize [BasePainter] to paint indicators.
  BasePainter _createPainer() {
    return SlidePainter(widget, _animation.value, paint);
  }

  @override
  Widget build(BuildContext context) {
    Widget child =  SizedBox(
      width: widget.count! * widget.width + (widget.count! - 1) * widget.space,
      height: widget.height,
      child: CustomPaint(
        painter: _createPainer(),
      ),
    );

    return  IgnorePointer(
      child: child,
    );
  }

  @override
  void initState() {
    if(widget.rtl) {
      var init = (widget.count != null && widget.count! > 1
          ? widget.count! - 1
          : 0).toDouble();

      /// for initial index=0 we do not want to change any value so setting [_tween] to (0.0,0.0),
      createAnimation(init, init);
    }
    else {
      createAnimation(0, 0);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(CarouselIndicator oldWidget) {
    if (widget.index != oldWidget.index) {
      if ((!widget.rtl && widget.index != 0) || (widget.rtl && widget.index! != widget.count!)) {
        _animationController.reset();

        /// for each new index we want to change value so setting [_tween] to (oldWidget.index,widget.index) so animation tween from old position to new position rather not start from 0.0 again and again.
        if(widget.rtl) {
          createAnimation(((widget.count! - 1) - oldWidget.index!).toDouble(),
              ((widget.count! - 1) - widget.index!).toDouble());
        }
        else {
          createAnimation(
              oldWidget.index!.toDouble(), widget.index!.toDouble());
        }
        _animationController.forward();
      } else {
        _animationController.reset();
        if(widget.rtl) {
          createAnimation((widget.count! - 1 - oldWidget.index!).toDouble(), (widget.count! - 1).toDouble());
        }
        else{
          createAnimation(oldWidget.index!.toDouble(), 0.0);
        }
        _animationController.forward();
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void createAnimation(double begin, double end) {
    _tween = Tween(begin: begin, end: end);
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: widget.animationDuration));
    _animation = _tween.animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
  }
}
