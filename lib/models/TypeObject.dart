/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the TypeObject type in your schema. */
@immutable
class TypeObject extends Model {
  static const classType = const _TypeObjectModelType();
  final String id;
  final String? _value;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  String? get value {
    return _value;
  }

  const TypeObject._internal({required this.id, value}) : _value = value;

  factory TypeObject({String? id, String? value}) {
    return TypeObject._internal(
        id: id == null ? UUID.getUUID() : id, value: value);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TypeObject && id == other.id && _value == other._value;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("TypeObject {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("value=" + "$_value");
    buffer.write("}");

    return buffer.toString();
  }

  TypeObject copyWith({String? id, String? value}) {
    return TypeObject(id: id ?? this.id, value: value ?? this.value);
  }

  TypeObject.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _value = json['value'];

  Map<String, dynamic> toJson() => {'id': id, 'value': _value};

  static final QueryField ID = QueryField(fieldName: "typeObject.id");
  static final QueryField VALUE = QueryField(fieldName: "value");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "TypeObject";
    modelSchemaDefinition.pluralName = "TypeObjects";

    modelSchemaDefinition.authRules = [
      AuthRule(authStrategy: AuthStrategy.PUBLIC, operations: [
        ModelOperation.CREATE,
        ModelOperation.UPDATE,
        ModelOperation.DELETE,
        ModelOperation.READ
      ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TypeObject.VALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _TypeObjectModelType extends ModelType<TypeObject> {
  const _TypeObjectModelType();

  @override
  TypeObject fromJson(Map<String, dynamic> jsonData) {
    return TypeObject.fromJson(jsonData);
  }
}
