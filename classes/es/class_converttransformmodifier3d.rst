:github_url: hide

.. _class_ConvertTransformModifier3D:

ConvertTransformModifier3D
==========================

**Hereda:** :ref:`BoneConstraint3D<class_BoneConstraint3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` que aplica transformación al hueso que se convirtió a partir de la referencia.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Aplica la transformación copiada del hueso establecido por :ref:`BoneConstraint3D.set_reference_bone()<class_BoneConstraint3D_method_set_reference_bone>` al hueso establecido por :ref:`BoneConstraint3D.set_apply_bone()<class_BoneConstraint3D_method_set_apply_bone>` sobre el eje específico, remapeándola con algunas opciones.

Hay 4 formas de aplicar la transformación, dependiendo de la combinación de :ref:`set_relative()<class_ConvertTransformModifier3D_method_set_relative>` y :ref:`set_additive()<class_ConvertTransformModifier3D_method_set_additive>`.

\ **Relativo + Aditivo:**\ 

- Extrae la pose de referencia relativa al reposo y la añade a la pose del hueso de aplicación.

\ **Relativo + No aditivo:**\ 

- Extrae la pose de referencia relativa al reposo y la añade al reposo del hueso de aplicación.

\ **No relativo + Aditivo:**\ 

- Extrae la pose de referencia absolutamente y la añade a la pose del hueso de aplicación.

\ **No relativo + No aditivo:**\ 

- Extrae la pose de referencia absolutamente y la pose del hueso de aplicación se reemplaza con ella.

\ **Nota:** La opción Relativo solo está disponible en el caso de que :ref:`BoneConstraint3D.get_reference_type()<class_BoneConstraint3D_method_get_reference_type>` sea :ref:`BoneConstraint3D.REFERENCE_TYPE_BONE<class_BoneConstraint3D_constant_REFERENCE_TYPE_BONE>`. Véase también :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>`.

\ **Nota:** Si hay una rotación mayor a ``180`` grados con ejes restringidos, puede producirse un volteo (flipping).

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`setting_count<class_ConvertTransformModifier3D_property_setting_count>` | ``0`` |
   +-----------------------+-------------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Axis<enum_Vector3_Axis>`                                      | :ref:`get_apply_axis<class_ConvertTransformModifier3D_method_get_apply_axis>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                           |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`get_apply_range_max<class_ConvertTransformModifier3D_method_get_apply_range_max>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                 |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`get_apply_range_min<class_ConvertTransformModifier3D_method_get_apply_range_min>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                 |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` | :ref:`get_apply_transform_mode<class_ConvertTransformModifier3D_method_get_apply_transform_mode>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                       |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Axis<enum_Vector3_Axis>`                                      | :ref:`get_reference_axis<class_ConvertTransformModifier3D_method_get_reference_axis>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                   |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`get_reference_range_max<class_ConvertTransformModifier3D_method_get_reference_range_max>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`get_reference_range_min<class_ConvertTransformModifier3D_method_get_reference_range_min>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` | :ref:`get_reference_transform_mode<class_ConvertTransformModifier3D_method_get_reference_transform_mode>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`is_additive<class_ConvertTransformModifier3D_method_is_additive>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                 |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`is_relative<class_ConvertTransformModifier3D_method_is_relative>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                 |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_additive<class_ConvertTransformModifier3D_method_set_additive>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                                                    |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_apply_axis<class_ConvertTransformModifier3D_method_set_apply_axis>`\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ )                                                                            |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_apply_range_max<class_ConvertTransformModifier3D_method_set_apply_range_max>`\ (\ index\: :ref:`int<class_int>`, range_max\: :ref:`float<class_float>`\ )                                                                  |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_apply_range_min<class_ConvertTransformModifier3D_method_set_apply_range_min>`\ (\ index\: :ref:`int<class_int>`, range_min\: :ref:`float<class_float>`\ )                                                                  |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_apply_transform_mode<class_ConvertTransformModifier3D_method_set_apply_transform_mode>`\ (\ index\: :ref:`int<class_int>`, transform_mode\: :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>`\ )         |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_reference_axis<class_ConvertTransformModifier3D_method_set_reference_axis>`\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ )                                                                    |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_reference_range_max<class_ConvertTransformModifier3D_method_set_reference_range_max>`\ (\ index\: :ref:`int<class_int>`, range_max\: :ref:`float<class_float>`\ )                                                          |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_reference_range_min<class_ConvertTransformModifier3D_method_set_reference_range_min>`\ (\ index\: :ref:`int<class_int>`, range_min\: :ref:`float<class_float>`\ )                                                          |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_reference_transform_mode<class_ConvertTransformModifier3D_method_set_reference_transform_mode>`\ (\ index\: :ref:`int<class_int>`, transform_mode\: :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>`\ ) |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_relative<class_ConvertTransformModifier3D_method_set_relative>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                                                    |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_ConvertTransformModifier3D_TransformMode:

.. rst-class:: classref-enumeration

enum **TransformMode**: :ref:`🔗<enum_ConvertTransformModifier3D_TransformMode>`

.. _class_ConvertTransformModifier3D_constant_TRANSFORM_MODE_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` **TRANSFORM_MODE_POSITION** = ``0``

Convierte con la posición. Transfiere la diferencia.

.. _class_ConvertTransformModifier3D_constant_TRANSFORM_MODE_ROTATION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` **TRANSFORM_MODE_ROTATION** = ``1``

Convertir con rotación. El ángulo es el balanceo del eje especificado.

.. _class_ConvertTransformModifier3D_constant_TRANSFORM_MODE_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` **TRANSFORM_MODE_SCALE** = ``2``

Convertir con escala. Transfiere la proporción, no la diferencia.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ConvertTransformModifier3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_ConvertTransformModifier3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

El número de configuraciones en el modificador.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ConvertTransformModifier3D_method_get_apply_axis:

.. rst-class:: classref-method

:ref:`Axis<enum_Vector3_Axis>` **get_apply_axis**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_apply_axis>`

Devuelve el eje de la transformación de destino de reasignación.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_apply_range_max:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_apply_range_max**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_apply_range_max>`

Devuelve el valor máximo del rango de destino de reasignación.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_apply_range_min:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_apply_range_min**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_apply_range_min>`

Devuelve el valor mínimo del rango de destino de reasignación.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_apply_transform_mode:

.. rst-class:: classref-method

:ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` **get_apply_transform_mode**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_apply_transform_mode>`

Devuelve la operación de transformación de destino de reasignación.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_reference_axis:

.. rst-class:: classref-method

:ref:`Axis<enum_Vector3_Axis>` **get_reference_axis**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_reference_axis>`

Devuelve el eje de la transformación de la fuente de reasignación.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_reference_range_max:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_reference_range_max**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_reference_range_max>`

Devuelve el valor máximo del rango de origen de reasignación.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_reference_range_min:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_reference_range_min**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_reference_range_min>`

Devuelve el valor mínimo del rango de origen de reasignación.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_reference_transform_mode:

.. rst-class:: classref-method

:ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` **get_reference_transform_mode**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_reference_transform_mode>`

Devuelve la operación de transformación de la fuente de reasignación.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_is_additive:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_additive**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_is_additive>`

Devuelve ``true`` si la opción aditiva está habilitada en la configuración en ``index``.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_is_relative:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_relative**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_is_relative>`

Devuelve ``true`` si la opción relativa está habilitada en la configuración en ``index``.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_additive:

.. rst-class:: classref-method

|void| **set_additive**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_additive>`

Establece la opción aditiva en el ajuste en ``index`` a ``enabled``. Esto afecta principalmente al proceso de aplicación de la transformación al :ref:`BoneConstraint3D.set_apply_bone()<class_BoneConstraint3D_method_set_apply_bone>`.

Si estableces ``enabled`` a ``true``, la transformación procesada se añade a la pose del hueso de aplicación actual.

Si estableces ``enabled`` a ``false``, la pose del hueso de aplicación actual se reemplaza con la transformación procesada. Sin embargo, si estableces :ref:`set_relative()<class_ConvertTransformModifier3D_method_set_relative>` a ``true``, la transformación es relativa al reposo.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_apply_axis:

.. rst-class:: classref-method

|void| **set_apply_axis**\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_apply_axis>`

Establece el eje de la transformación de destino de reasignación.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_apply_range_max:

.. rst-class:: classref-method

|void| **set_apply_range_max**\ (\ index\: :ref:`int<class_int>`, range_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_apply_range_max>`

Establece el valor máximo del rango de destino de reasignación.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_apply_range_min:

.. rst-class:: classref-method

|void| **set_apply_range_min**\ (\ index\: :ref:`int<class_int>`, range_min\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_apply_range_min>`

Establece el valor mínimo del rango de destino de reasignación.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_apply_transform_mode:

.. rst-class:: classref-method

|void| **set_apply_transform_mode**\ (\ index\: :ref:`int<class_int>`, transform_mode\: :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_apply_transform_mode>`

Establece la operación de la transformación de destino de reasignación.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_reference_axis:

.. rst-class:: classref-method

|void| **set_reference_axis**\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_reference_axis>`

Establece el eje de la transformación de la fuente de reasignación.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_reference_range_max:

.. rst-class:: classref-method

|void| **set_reference_range_max**\ (\ index\: :ref:`int<class_int>`, range_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_reference_range_max>`

Establece el valor máximo del rango de origen de reasignación.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_reference_range_min:

.. rst-class:: classref-method

|void| **set_reference_range_min**\ (\ index\: :ref:`int<class_int>`, range_min\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_reference_range_min>`

Establece el valor mínimo del rango de origen de reasignación.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_reference_transform_mode:

.. rst-class:: classref-method

|void| **set_reference_transform_mode**\ (\ index\: :ref:`int<class_int>`, transform_mode\: :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_reference_transform_mode>`

Establece la operación de transformación de la fuente de reasignación.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_relative:

.. rst-class:: classref-method

|void| **set_relative**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_relative>`

Establece la opción relativa en el ajuste en ``index`` a ``enabled``.

Si estableces ``enabled`` a ``true``, la transformación extraída y aplicada es relativa al resto.

Si estableces ``enabled`` a ``false``, la transformación extraída es absoluta.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
