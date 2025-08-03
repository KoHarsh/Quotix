//region core
export 'package:get/get.dart';
export 'package:flutter/material.dart';
export 'dart:async';
export 'package:flutter/cupertino.dart' hide RefreshCallback;
export 'package:flutter_animate/flutter_animate.dart';
export 'package:flutter/services.dart';
export 'package:quotix/theme/theme.dart';
export 'package:quotix/utils/page_config.dart';
export '../../../utils/space_config.dart';
export 'package:quotix/utils/global_style.dart';
export 'package:flutter_spinkit/flutter_spinkit.dart';
//endregion

//region view
export 'package:quotix/modules/dashboard/view/about_screen.dart';
export 'package:quotix/modules/dashboard/view/dashboard_screen.dart';
export 'package:quotix/modules/splash/view/splash_screen.dart';
//endregion

//region controllers
export 'package:quotix/modules/products/controller/product_controller.dart';
export 'package:quotix/modules/quotation/controller/quotation_controller.dart';
//endregion

//region models
export 'package:quotix/modules/products/model/product_model.dart';
export 'package:quotix/modules/quotation/model/quotation_model/quotation_model.dart';
//endregion

//region Repositories
export 'package:quotix/modules/products/repo/product_repository.dart';
export 'package:quotix/modules/quotation/repo/quotation_repo.dart';
//endregion

//region bindings
export 'package:quotix/modules/quotation/bindings/quotation_binding.dart';
export 'package:quotix/modules/products/bindings/product_bindings.dart';
//endregion
