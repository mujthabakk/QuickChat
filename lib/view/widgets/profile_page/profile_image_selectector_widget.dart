
import 'package:chat__app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileImageSelectorWidget extends ConsumerWidget {
  const ProfileImageSelectorWidget({
    super.key,
    required this.imageDbRef,
  });

  final String imageDbRef;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      borderRadius: BorderRadius.circular(
        context.spaces.space_300 * 6,
      ),
      onTap: () {
        // pick image from gallery
      },
      child: Stack(
        children: [
          CircleAvatar(
              radius: context.spaces.space_300 * 3.6,
              backgroundImage: NetworkImage(imageDbRef)),
          Positioned(
            left: context.spaces.space_900 * 1.8,
            bottom: context.spaces.space_100 * 2,
            child: CircleAvatar(
              backgroundColor: context.colors.primary,
              child: const Icon(Icons.add),
            ),
          )
        ],
      ),
    );
  }
}
