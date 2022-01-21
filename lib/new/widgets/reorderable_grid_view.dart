import 'package:flutter/cupertino.dart';
import 'package:flutter_reorderable_grid_view/new/widgets/reorderable_builder.dart';

/// Todo: Hier müssen GridViews/Wrap benutzt werden, die die children animieren, wenn eines dazu kommt oder verschwindet
class ReorderableGridView2 extends StatelessWidget {
  final List<Widget> children;
  final ReorderCallback onReorder;
  final List<int> lockedIndices;

  final EdgeInsets? padding;
  final Clip? clipBehavior;

  const ReorderableGridView2({
    required this.children,
    required this.onReorder,
    this.lockedIndices = const [],
    this.padding,
    this.clipBehavior,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final clipBehavior = this.clipBehavior ?? Clip.hardEdge;

    return ReorderableBuilder(
      children: children,
      onReorder: onReorder,
      lockedIndices: lockedIndices,
      builder: (draggableChildren, scrollController) {
        /* return GridView(
          // shrinkWrap: true,
          controller: scrollController,
          padding: padding,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 8,
          ),
          clipBehavior: clipBehavior,
          children: draggableChildren,
        );*/
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index) => draggableChildren[index],
          itemCount: draggableChildren.length,
          controller: scrollController,
          padding: padding,
          clipBehavior: clipBehavior,
        );
      },
    );
  }
}
