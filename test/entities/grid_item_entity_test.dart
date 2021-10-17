import 'package:flutter/cupertino.dart';
import 'package:flutter_reorderable_grid_view/entities/grid_item_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
      'GIVEN values '
      'WHEN instantiating [GridItemEntity] '
      'THEN should have given values', () {
    // given
    const givenLocalPosition = Offset(0, 0);
    const givenGlobalPosition = Offset(1, 1);
    const givenSize = Size(100, 100);
    const givenOrderId = 0;
    const givenId = 100;

    // when
    const actual = GridItemEntity(
      localPosition: givenLocalPosition,
      globalPosition: givenGlobalPosition,
      size: givenSize,
      orderId: givenOrderId,
      id: givenId,
    );

    // then
    expect(actual.localPosition, equals(givenLocalPosition));
    expect(actual.globalPosition, equals(givenGlobalPosition));
    expect(actual.size, equals(givenSize));
    expect(actual.orderId, equals(givenOrderId));
    expect(actual.id, equals(givenId));
  });

  test(
      'GIVEN [GridItemEntity] '
      'WHEN calling #copyWith without values '
      'THEN should have copy entity with same values', () {
    // given
    const givenSize = Size(100, 100);
    const givenLocalPosition = Offset(0, 0);
    const givenGlobalPosition = Offset(1, 1);
    const givenOrderId = 0;
    const givenId = 100;

    const givenGridItemEntity = GridItemEntity(
      localPosition: givenLocalPosition,
      globalPosition: givenGlobalPosition,
      size: givenSize,
      orderId: givenOrderId,
      id: givenId,
    );

    // when
    final actual = givenGridItemEntity.copyWith();

    // then
    expect(actual.localPosition, equals(givenLocalPosition));
    expect(actual.globalPosition, equals(givenGlobalPosition));
    expect(actual.size, equals(givenSize));
    expect(actual.orderId, equals(givenOrderId));
    expect(actual.id, equals(givenId));
  });

  test(
      'GIVEN [GridItemEntity] '
      'WHEN calling #copyWith with all values '
      'THEN should have updated values', () {
    // given
    const givenSize = Size(100, 100);

    const givenGridItemEntity = GridItemEntity(
      localPosition: Offset(0, 0),
      globalPosition: Offset(1, 1),
      size: givenSize,
      orderId: 0,
      id: 1,
    );

    const givenUpdatedGlobalPosition = Offset(2, 2);
    const givenUpdatedLocalPosition = Offset(3, 3);
    const givenUpdatedOrderId = 1;

    // when
    final actual = givenGridItemEntity.copyWith(
      localPosition: givenUpdatedLocalPosition,
      globalPosition: givenUpdatedGlobalPosition,
      orderId: givenUpdatedOrderId,
    );

    // then
    expect(actual.localPosition, equals(givenUpdatedLocalPosition));
    expect(actual.globalPosition, equals(givenUpdatedGlobalPosition));
    expect(actual.size, equals(givenSize));
    expect(actual.orderId, equals(givenUpdatedOrderId));
  });
}
