:github_url: hide

.. _class_SkeletonProfile:

SkeletonProfile
===============

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>`

Base class for a profile of a virtual skeleton used as a target for retargeting.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este recurso se utiliza en :ref:`EditorScenePostImport<class_EditorScenePostImport>`. Algunos parámetros se refieren a huesos en :ref:`Skeleton3D<class_Skeleton3D>`, :ref:`Skin<class_Skin>`, :ref:`Animation<class_Animation>`, y algunos otros nodos se reescriben basándose en los parámetros de **SkeletonProfile**.

\ **Nota:** Estos parámetros solo deben establecerse al crear un perfil personalizado. En :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>`, se definen internamente como valores de solo lectura.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Reorientación de esqueletos 3D <../tutorials/assets_pipeline/retargeting_3d_skeletons>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`               | :ref:`bone_size<class_SkeletonProfile_property_bone_size>`             | ``0``   |
   +-------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`               | :ref:`group_size<class_SkeletonProfile_property_group_size>`           | ``0``   |
   +-------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`StringName<class_StringName>` | :ref:`root_bone<class_SkeletonProfile_property_root_bone>`             | ``&""`` |
   +-------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`StringName<class_StringName>` | :ref:`scale_base_bone<class_SkeletonProfile_property_scale_base_bone>` | ``&""`` |
   +-------------------------------------+------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`find_bone<class_SkeletonProfile_method_find_bone>`\ (\ bone_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                       |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_bone_name<class_SkeletonProfile_method_get_bone_name>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_bone_parent<class_SkeletonProfile_method_get_bone_parent>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                          |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_bone_tail<class_SkeletonProfile_method_get_bone_tail>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_group<class_SkeletonProfile_method_get_group>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                      | :ref:`get_group_name<class_SkeletonProfile_method_get_group_name>`\ (\ group_idx\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                            | :ref:`get_handle_offset<class_SkeletonProfile_method_get_handle_offset>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                      |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                    | :ref:`get_reference_pose<class_SkeletonProfile_method_get_reference_pose>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                    |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TailDirection<enum_SkeletonProfile_TailDirection>` | :ref:`get_tail_direction<class_SkeletonProfile_method_get_tail_direction>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                    |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                        | :ref:`get_texture<class_SkeletonProfile_method_get_texture>`\ (\ group_idx\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`is_required<class_SkeletonProfile_method_is_required>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                  |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_bone_name<class_SkeletonProfile_method_set_bone_name>`\ (\ bone_idx\: :ref:`int<class_int>`, bone_name\: :ref:`StringName<class_StringName>`\ )                                     |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_bone_parent<class_SkeletonProfile_method_set_bone_parent>`\ (\ bone_idx\: :ref:`int<class_int>`, bone_parent\: :ref:`StringName<class_StringName>`\ )                               |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_bone_tail<class_SkeletonProfile_method_set_bone_tail>`\ (\ bone_idx\: :ref:`int<class_int>`, bone_tail\: :ref:`StringName<class_StringName>`\ )                                     |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_group<class_SkeletonProfile_method_set_group>`\ (\ bone_idx\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`\ )                                                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_group_name<class_SkeletonProfile_method_set_group_name>`\ (\ group_idx\: :ref:`int<class_int>`, group_name\: :ref:`StringName<class_StringName>`\ )                                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_handle_offset<class_SkeletonProfile_method_set_handle_offset>`\ (\ bone_idx\: :ref:`int<class_int>`, handle_offset\: :ref:`Vector2<class_Vector2>`\ )                               |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_reference_pose<class_SkeletonProfile_method_set_reference_pose>`\ (\ bone_idx\: :ref:`int<class_int>`, bone_name\: :ref:`Transform3D<class_Transform3D>`\ )                         |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_required<class_SkeletonProfile_method_set_required>`\ (\ bone_idx\: :ref:`int<class_int>`, required\: :ref:`bool<class_bool>`\ )                                                    |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_tail_direction<class_SkeletonProfile_method_set_tail_direction>`\ (\ bone_idx\: :ref:`int<class_int>`, tail_direction\: :ref:`TailDirection<enum_SkeletonProfile_TailDirection>`\ ) |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_texture<class_SkeletonProfile_method_set_texture>`\ (\ group_idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )                                            |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_SkeletonProfile_signal_profile_updated:

.. rst-class:: classref-signal

**profile_updated**\ (\ ) :ref:`🔗<class_SkeletonProfile_signal_profile_updated>`

Esta señal se emite cuando se cambia el valor en el perfil. Esto se utiliza para actualizar el nombre de la clave en el :ref:`BoneMap<class_BoneMap>` y para volver a dibujar el editor de :ref:`BoneMap<class_BoneMap>`\ s.

\ **Nota:** Esta señal no está conectada directamente al editor para simplificar la referencia, sino que se pasa al editor a través del :ref:`BoneMap<class_BoneMap>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_SkeletonProfile_TailDirection:

.. rst-class:: classref-enumeration

enum **TailDirection**: :ref:`🔗<enum_SkeletonProfile_TailDirection>`

.. _class_SkeletonProfile_constant_TAIL_DIRECTION_AVERAGE_CHILDREN:

.. rst-class:: classref-enumeration-constant

:ref:`TailDirection<enum_SkeletonProfile_TailDirection>` **TAIL_DIRECTION_AVERAGE_CHILDREN** = ``0``

Dirección a las coordenadas promedio de los hijos del hueso.

.. _class_SkeletonProfile_constant_TAIL_DIRECTION_SPECIFIC_CHILD:

.. rst-class:: classref-enumeration-constant

:ref:`TailDirection<enum_SkeletonProfile_TailDirection>` **TAIL_DIRECTION_SPECIFIC_CHILD** = ``1``

Direction to the coordinates of specified bone child.

.. _class_SkeletonProfile_constant_TAIL_DIRECTION_END:

.. rst-class:: classref-enumeration-constant

:ref:`TailDirection<enum_SkeletonProfile_TailDirection>` **TAIL_DIRECTION_END** = ``2``

La dirección no se calcula.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_SkeletonProfile_property_bone_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone_size** = ``0`` :ref:`🔗<class_SkeletonProfile_property_bone_size>`

.. rst-class:: classref-property-setget

- |void| **set_bone_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone_size**\ (\ )

The amount of bones in retargeting section's :ref:`BoneMap<class_BoneMap>` editor. For example, :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>` has 56 bones.

The size of elements in :ref:`BoneMap<class_BoneMap>` updates when changing this property in it's assigned **SkeletonProfile**.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_property_group_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **group_size** = ``0`` :ref:`🔗<class_SkeletonProfile_property_group_size>`

.. rst-class:: classref-property-setget

- |void| **set_group_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_group_size**\ (\ )

The amount of groups of bones in retargeting section's :ref:`BoneMap<class_BoneMap>` editor. For example, :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>` has 4 groups.

This property exists to separate the bone list into several sections in the editor.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_property_root_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **root_bone** = ``&""`` :ref:`🔗<class_SkeletonProfile_property_root_bone>`

.. rst-class:: classref-property-setget

- |void| **set_root_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_root_bone**\ (\ )

Un nombre de hueso que se utilizará como hueso raíz en :ref:`AnimationTree<class_AnimationTree>`. Este debería ser el hueso del padre de las caderas que existe en el origen del mundo.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_property_scale_base_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **scale_base_bone** = ``&""`` :ref:`🔗<class_SkeletonProfile_property_scale_base_bone>`

.. rst-class:: classref-property-setget

- |void| **set_scale_base_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_scale_base_bone**\ (\ )

Un nombre de hueso que utilizará la altura del modelo como coeficiente para la normalización. Por ejemplo, :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>` lo define como ``Hips``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_SkeletonProfile_method_find_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_bone**\ (\ bone_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_find_bone>`

Devuelve el índice del hueso que coincide con ``bone_name`` como su nombre.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_bone_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bone_name**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_bone_name>`

Returns the name of the bone at ``bone_idx`` that will be the key name in the :ref:`BoneMap<class_BoneMap>`.

In the retargeting process, the returned bone name is the bone name of the target skeleton.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_bone_parent:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bone_parent**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_bone_parent>`

Devuelve el nombre del hueso que es el padre del hueso en ``bone_idx``. El resultado está vacío si el hueso no tiene padre.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_bone_tail:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bone_tail**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_bone_tail>`

Devuelve el nombre del hueso que es la cola del hueso en ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_group:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_group**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_group>`

Devuelve el grupo del hueso en ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_group_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_group_name**\ (\ group_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_group_name>`

Devuelve el nombre del grupo en ``group_idx`` que será el grupo de dibujo en el editor de :ref:`BoneMap<class_BoneMap>`\ s.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_handle_offset:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_handle_offset**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_handle_offset>`

Devuelve el desplazamiento del hueso en ``bone_idx`` que será la posición del botón en el editor de :ref:`BoneMap<class_BoneMap>`\ s.

Este es el desplazamiento con origen en la esquina superior izquierda del cuadrado.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_reference_pose:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_reference_pose**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_reference_pose>`

Devuelve la transformación de pose de referencia para el hueso ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_tail_direction:

.. rst-class:: classref-method

:ref:`TailDirection<enum_SkeletonProfile_TailDirection>` **get_tail_direction**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_tail_direction>`

Devuelve la dirección de la cola del hueso en ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_get_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ group_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_get_texture>`

Devuelve la textura del grupo en ``group_idx`` que será la imagen de fondo del grupo de dibujo en el editor de :ref:`BoneMap<class_BoneMap>`\ s.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_is_required:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_required**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonProfile_method_is_required>`

Returns whether the bone at ``bone_idx`` is required for retargeting.

This value is used by the bone map editor. If this method returns ``true``, and no bone is assigned, the handle color will be red on the bone map editor.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_bone_name:

.. rst-class:: classref-method

|void| **set_bone_name**\ (\ bone_idx\: :ref:`int<class_int>`, bone_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_bone_name>`

Establece el nombre del hueso en ``bone_idx`` que será el nombre clave en el :ref:`BoneMap<class_BoneMap>`.

En el proceso de retargeting, el nombre del hueso de ajuste es el nombre del hueso del esqueleto objetivo.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_bone_parent:

.. rst-class:: classref-method

|void| **set_bone_parent**\ (\ bone_idx\: :ref:`int<class_int>`, bone_parent\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_bone_parent>`

Establece el hueso con el nombre ``bone_parent`` como el padre del hueso en ``bone_idx``. Si se pasa una string vacía, entonces el hueso no tiene padre.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_bone_tail:

.. rst-class:: classref-method

|void| **set_bone_tail**\ (\ bone_idx\: :ref:`int<class_int>`, bone_tail\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_bone_tail>`

Establece el hueso con el nombre ``bone_tail`` como la cola del hueso en ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_group:

.. rst-class:: classref-method

|void| **set_group**\ (\ bone_idx\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_group>`

Establece el grupo del hueso en ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_group_name:

.. rst-class:: classref-method

|void| **set_group_name**\ (\ group_idx\: :ref:`int<class_int>`, group_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_group_name>`

Establece el nombre del grupo en ``group_idx`` que será el grupo de dibujo en el editor de :ref:`BoneMap<class_BoneMap>`\ s.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_handle_offset:

.. rst-class:: classref-method

|void| **set_handle_offset**\ (\ bone_idx\: :ref:`int<class_int>`, handle_offset\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_handle_offset>`

Establece el desplazamiento del hueso en ``bone_idx`` que será la posición del botón en el editor de :ref:`BoneMap<class_BoneMap>`\ s.

Este es el desplazamiento con origen en la esquina superior izquierda del cuadrado.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_reference_pose:

.. rst-class:: classref-method

|void| **set_reference_pose**\ (\ bone_idx\: :ref:`int<class_int>`, bone_name\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_reference_pose>`

Establece la transformación de pose de referencia para el hueso ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_required:

.. rst-class:: classref-method

|void| **set_required**\ (\ bone_idx\: :ref:`int<class_int>`, required\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_required>`

Establece el estado requerido para el hueso ``bone_idx`` a ``required``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_tail_direction:

.. rst-class:: classref-method

|void| **set_tail_direction**\ (\ bone_idx\: :ref:`int<class_int>`, tail_direction\: :ref:`TailDirection<enum_SkeletonProfile_TailDirection>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_tail_direction>`

Establece la dirección de la cola del hueso en ``bone_idx``.

\ **Nota:** Esto solo especifica el método de cálculo. Las coordenadas reales requeridas deben almacenarse en un esqueleto externo, por lo que el cálculo en sí debe realizarse externamente.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonProfile_method_set_texture:

.. rst-class:: classref-method

|void| **set_texture**\ (\ group_idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_SkeletonProfile_method_set_texture>`

Establece la textura del grupo en ``group_idx`` que será la imagen de fondo del grupo de dibujo en el editor de :ref:`BoneMap<class_BoneMap>`\ s.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
