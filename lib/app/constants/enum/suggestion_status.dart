import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'type')
enum SuggestionStatusX {
  requests('requests'),
  inProgress('inProgress'),
  completed('completed'),
  declined('declined'),
  duplicated('duplicated'),
  unknown('unknown');

  const SuggestionStatusX(this.type);
  final String type;
}
