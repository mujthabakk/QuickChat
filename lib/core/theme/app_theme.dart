import 'package:chat__app/core/theme/extensions/app_color_extension.dart';
import 'package:chat__app/core/theme/extensions/app_shadow_extension.dart';
import 'package:chat__app/core/theme/extensions/app_typography_extension.dart';
import 'package:chat__app/core/theme/extensions/space_extension.dart';
import 'package:flutter/material.dart';


extension AppThemes on BuildContext {
  AppColorExtension get colors {
    return Theme.of(this).extension<AppColorExtension>()!;
  }

  AppSpaceExtension get spaces {
    return Theme.of(this).extension<AppSpaceExtension>()!;
  }

  AppTypographyExtension get typography {
    return Theme.of(this).extension<AppTypographyExtension>()!;
  }

  ShadowExtension get shadows {
    return Theme.of(this).extension<ShadowExtension>()!;
  }
}
