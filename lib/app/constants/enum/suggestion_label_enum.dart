import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'type')
enum SuggestionLabelX {
  feature('feature'),
  bug('bug'),
  unknown('unKnown');

  const SuggestionLabelX(this.type);
  final String type;
}
