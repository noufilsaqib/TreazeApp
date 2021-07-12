import 'package:flutter/material.dart';
import 'package:treaze_app/constants.dart';
import 'package:treaze_app/size_config.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({ 
    Key key, 
    @required this.value, 
    this.showOnOff = false, 
    @required this.onToggle, 
    this.activeColor = kPrimaryColor, 
    this.inactiveColor = Colors.black12, 
    this.activeToggleColor = Colors.white, 
    this.inactiveToggleColor = Colors.white, 
    this.borderColor = Colors.transparent,
    this.width = 35.0, 
    this.height = 18.0, 
    this.toggleSize = 16.0, 
    this.borderRadius = 20.0, 
    this.padding = 1.0,
  }) : super(key: key);

  final bool value;
  final bool showOnOff;
  final ValueChanged<bool> onToggle;

  final Color activeColor;
  final Color inactiveColor;

  final Color activeToggleColor;
  final Color inactiveToggleColor;
  final Color borderColor;

  final double width;
  final double height;
  final double toggleSize;
  final double borderRadius;
  final double padding;

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> with SingleTickerProviderStateMixin{
  Animation _toggleAnimation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      value: widget.value ? 1.0 : 0.0,
      duration: Duration(milliseconds: 60),
    );
    _toggleAnimation = AlignmentTween(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).animate(CurvedAnimation(parent: _animationController, curve: Curves.linear));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant CustomSwitch oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(oldWidget.value == widget.value)return;
    if(widget.value)
      _animationController.forward();
    else
      _animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context,child){
        return GestureDetector(
          onTap: (){
            if(widget.value)
              _animationController.reverse();
            else 
              _animationController.forward();
            widget.onToggle(!widget.value);
          },
          child: Container(
            width: widget.width,
            height: widget.height,
            padding: EdgeInsets.all(widget.padding),
            decoration: BoxDecoration(
              border: Border.all(color: widget.borderColor),
              borderRadius: BorderRadius.circular(widget.borderRadius,),
              color: _toggleAnimation.value == Alignment.centerLeft
                ? widget.inactiveColor
                : widget.activeColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _toggleAnimation.value == Alignment.centerRight
                  ? Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(4),
                      ),
                    ),
                  )
                  : Container(),
                Align(
                  alignment: _toggleAnimation.value,
                  child: Container(
                    width: widget.toggleSize,
                    height: widget.toggleSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, 
                      color: _toggleAnimation.value == Alignment.centerLeft
                        ? widget.inactiveToggleColor
                        : widget.activeToggleColor,
                    ),
                  ),
                ),
                _toggleAnimation.value == Alignment.centerLeft
                  ? Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(4)), 
                      alignment: Alignment.centerRight,
                    ),
                  )
                  : Container(),
              ],
            ),
          ),
        );
      },
    );
  }
}