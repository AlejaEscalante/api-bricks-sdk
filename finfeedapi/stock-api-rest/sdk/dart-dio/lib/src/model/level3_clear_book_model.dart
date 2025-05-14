//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'level3_clear_book_model.g.dart';

/// Represents the response DTO for clear book information
///
/// Properties:
/// * [symbol] - The stock symbol
/// * [timestampNanos] - Original timestamp in nanoseconds since epoch
/// * [timestamp] - Time when the book was cleared as DateTime
@BuiltValue()
abstract class Level3ClearBookModel implements Built<Level3ClearBookModel, Level3ClearBookModelBuilder> {
  /// The stock symbol
  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  /// Original timestamp in nanoseconds since epoch
  @BuiltValueField(wireName: r'timestamp_nanos')
  int? get timestampNanos;

  /// Time when the book was cleared as DateTime
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  Level3ClearBookModel._();

  factory Level3ClearBookModel([void updates(Level3ClearBookModelBuilder b)]) = _$Level3ClearBookModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Level3ClearBookModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Level3ClearBookModel> get serializer => _$Level3ClearBookModelSerializer();
}

class _$Level3ClearBookModelSerializer implements PrimitiveSerializer<Level3ClearBookModel> {
  @override
  final Iterable<Type> types = const [Level3ClearBookModel, _$Level3ClearBookModel];

  @override
  final String wireName = r'Level3ClearBookModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Level3ClearBookModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.symbol != null) {
      yield r'symbol';
      yield serializers.serialize(
        object.symbol,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.timestampNanos != null) {
      yield r'timestamp_nanos';
      yield serializers.serialize(
        object.timestampNanos,
        specifiedType: const FullType(int),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Level3ClearBookModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Level3ClearBookModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'symbol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.symbol = valueDes;
          break;
        case r'timestamp_nanos':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.timestampNanos = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Level3ClearBookModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Level3ClearBookModelBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

