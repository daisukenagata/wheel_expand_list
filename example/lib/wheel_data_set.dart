import 'package:flutter/cupertino.dart' show Cubic, FixedExtentScrollController;
import 'package:wheel_expand_list/wheel_data_model.dart';
import 'package:wheel_expand_list/wheel_logic.dart';
import 'package:wheel_expand_list/wheel_swipe_type.dart';

class WheelDataSet implements WheelPrimitiveModel {
  WheelDataSet({
    required this.logic,
  });
  final WheelLogic logic;
  @override
  double get diameterRatio {
    return logic.slideActionFlg ? 2 : 200;
  }

  @override
  set diameterRatio(double diameterRatio) {
    diameterRatio = diameterRatio;
  }

  @override
  int get generate {
    return logic.pageList.length - 1;
  }

  @override
  set generate(int generate) {
    generate = generate;
  }

  @override
  int get itemCount {
    return logic.pageList[logic.pageCount];
  }

  @override
  set itemCount(int itemCount) {
    itemCount = itemCount;
  }

  @override
  double get margin {
    return logic.margin;
  }

  @override
  set margin(double margin) {
    margin = margin;
  }

  @override
  double get padding {
    return logic.margin / 2;
  }

  @override
  set padding(double padding) {
    padding = padding;
  }

  @override
  void startController(
    int index,
    int value,
    FixedExtentScrollController controller,
    Cubic cubic,
  ) {
    controller.animateToItem(index,
        duration: Duration(milliseconds: value), curve: cubic);
  }

  @override
  WheelSwipeType get swipeType {
    return logic.swipeType;
  }

  @override
  set swipeType(WheelSwipeType swipeType) {
    swipeType = swipeType;
  }
}
