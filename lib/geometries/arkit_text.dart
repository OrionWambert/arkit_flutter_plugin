import 'package:arkit_plugin/geometries/arkit_geometry.dart';
import 'package:arkit_plugin/geometries/arkit_material.dart';
import 'package:arkit_plugin/geometries/arkit_vector3.dart';
import 'package:arkit_plugin/geometries/arkit_vector4.dart';
import 'package:meta/meta.dart';

/// Represents a block of text that has been extruded.
class ARKitText extends ARKitGeometry {
  ARKitText({
    @required ARKitVector3 position,
    @required this.text,
    @required this.extrusionDepth,
    ARKitVector3 scale,
    ARKitVector4 rotation,
    List<ARKitMaterial> materials,
    String name,
  }) : super(
          position,
          materials: materials,
          scale: scale,
          rotation: rotation,
          name: name,
        );

  /// The text to be represented.
  final String text;

  /// The extrusion depth.
  /// If the value is 0, we get a mono-sided, 2D version of the text.
  final double extrusionDepth;

  @override
  Map<String, dynamic> toMap() => <String, dynamic>{
        'text': text,
        'extrusionDepth': extrusionDepth,
      }..addAll(super.toMap());
}
