import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

/// @Author: gstory
/// @CreateDate: 2022/6/9 15:58
/// @Email gstory0404@gmail.com
/// @Description: dart类作用描述 

abstract class BaseWidget<S extends GetLifeCycleBase> extends GetWidget<S>{

  const BaseWidget({Key? key}) : super(key: key);

  PreferredSizeWidget appBar();

  Widget phoneBody();

  Widget desktopBody();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Platform.isFuchsia || Platform.isLinux || Platform.isMacOS || Platform.isWindows ? desktopBody() : phoneBody(),
    );
  }
}

