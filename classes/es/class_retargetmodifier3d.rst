:github_url: hide

.. _class_RetargetModifier3D:

RetargetModifier3D
==================

**Hereda:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un modificador para transferir poses de esqueletos padres (o poses globales) a esqueletos hijos en el espacio del modelo con diferentes rests.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Retrieves the pose (or global pose) relative to the parent Skeleton's rest in model space and transfers it to the child Skeleton.

This modifier rewrites the pose of the child skeleton directly in the parent skeleton's update process. This means that it overwrites the mapped bone pose set in the normal process on the target skeleton. If you want to set the target skeleton bone pose after retargeting, you will need to add a :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` child to the target skeleton and thereby modify the pose.

\ **Note:** When the :ref:`use_global_pose<class_RetargetModifier3D_property_use_global_pose>` is enabled, even if it is an unmapped bone, it can cause visual problems because the global pose is applied ignoring the parent bone's pose **if it has mapped bone children**. See also :ref:`use_global_pose<class_RetargetModifier3D_property_use_global_pose>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`copy_bone_skin_scale<class_RetargetModifier3D_property_copy_bone_skin_scale>` | ``true``  |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>`\] | :ref:`enable<class_RetargetModifier3D_property_enable>`                             | ``7``     |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`SkeletonProfile<class_SkeletonProfile>`                             | :ref:`profile<class_RetargetModifier3D_property_profile>`                           |           |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`use_global_pose<class_RetargetModifier3D_property_use_global_pose>`           | ``false`` |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_position_enabled<class_RetargetModifier3D_method_is_position_enabled>`\ (\ ) |const|                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_rotation_enabled<class_RetargetModifier3D_method_is_rotation_enabled>`\ (\ ) |const|                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_scale_enabled<class_RetargetModifier3D_method_is_scale_enabled>`\ (\ ) |const|                                    |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_position_enabled<class_RetargetModifier3D_method_set_position_enabled>`\ (\ enabled\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_rotation_enabled<class_RetargetModifier3D_method_set_rotation_enabled>`\ (\ enabled\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_scale_enabled<class_RetargetModifier3D_method_set_scale_enabled>`\ (\ enabled\: :ref:`bool<class_bool>`\ )       |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_RetargetModifier3D_TransformFlag:

.. rst-class:: classref-enumeration

flags **TransformFlag**: :ref:`🔗<enum_RetargetModifier3D_TransformFlag>`

.. _class_RetargetModifier3D_constant_TRANSFORM_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>` **TRANSFORM_FLAG_POSITION** = ``1``

Si se establece, permite reasignar la posición.

.. _class_RetargetModifier3D_constant_TRANSFORM_FLAG_ROTATION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>` **TRANSFORM_FLAG_ROTATION** = ``2``

Si se establece, permite reasignar la rotación.

.. _class_RetargetModifier3D_constant_TRANSFORM_FLAG_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>` **TRANSFORM_FLAG_SCALE** = ``4``

Si se establece, permite reasignar la escala.

.. _class_RetargetModifier3D_constant_TRANSFORM_FLAG_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>` **TRANSFORM_FLAG_ALL** = ``7``

Si se establece, permite reasignar la posición/rotación/escala.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RetargetModifier3D_property_copy_bone_skin_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **copy_bone_skin_scale** = ``true`` :ref:`🔗<class_RetargetModifier3D_property_copy_bone_skin_scale>`

.. rst-class:: classref-property-setget

- |void| **set_copy_bone_skin_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_copying_bone_skin_scale**\ (\ )

If ``true``, copies :ref:`Skeleton3D.get_bone_skin_scale()<class_Skeleton3D_method_get_bone_skin_scale>` of the source skeleton's bones to the child skeletons' mapped bones.

If ``false``, the skin scale of the child skeletons' mapped bones are reset to ``Vector3(1, 1, 1)`` once and will not be overwritten after that.

\ **Note:** If you want to use :ref:`Skeleton3D.set_bone_skin_scale()<class_Skeleton3D_method_set_bone_skin_scale>` on a child skeleton's mapped bone, set this to ``false``. Even if you are not using :ref:`Skeleton3D.set_bone_skin_scale()<class_Skeleton3D_method_set_bone_skin_scale>` with parent skeleton, ``Vector3(1, 1, 1)`` will always be set for the child skeletons' mapped bones.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_property_enable:

.. rst-class:: classref-property

|bitfield|\[:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>`\] **enable** = ``7`` :ref:`🔗<class_RetargetModifier3D_property_enable>`

.. rst-class:: classref-property-setget

- |void| **set_enable_flags**\ (\ value\: |bitfield|\[:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>`\]\ )
- |bitfield|\[:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>`\] **get_enable_flags**\ (\ )

Banderas para controlar el proceso de los elementos de transformación individualmente cuando :ref:`use_global_pose<class_RetargetModifier3D_property_use_global_pose>` está desactivado.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_property_profile:

.. rst-class:: classref-property

:ref:`SkeletonProfile<class_SkeletonProfile>` **profile** :ref:`🔗<class_RetargetModifier3D_property_profile>`

.. rst-class:: classref-property-setget

- |void| **set_profile**\ (\ value\: :ref:`SkeletonProfile<class_SkeletonProfile>`\ )
- :ref:`SkeletonProfile<class_SkeletonProfile>` **get_profile**\ (\ )

:ref:`SkeletonProfile<class_SkeletonProfile>` para reasignar huesos con nombres que coincidan con la lista de huesos.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_property_use_global_pose:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_global_pose** = ``false`` :ref:`🔗<class_RetargetModifier3D_property_use_global_pose>`

.. rst-class:: classref-property-setget

- |void| **set_use_global_pose**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_global_pose**\ (\ )

Si es ``false``, en caso de que el esqueleto de destino tenga menos huesos que el esqueleto de origen, la transformación del padre del hueso de origen se ignorará.

En su lugar, es posible reasignar entre modelos con diferentes formas de cuerpo, y la posición, la rotación y la escala se pueden reasignar por separado.

Si es ``true``, la reasignación se realiza teniendo en cuenta la pose global.

En caso de que el esqueleto de destino tenga menos huesos que el esqueleto de origen, el transformación del padre del hueso de origen se tiene en cuenta. Sin embargo, la longitud del hueso entre esqueletos debe coincidir exactamente, si no, los huesos se verán obligados a expandirse o encogerse.

Esto es útil para usar hueso falso con longitud ``0`` para que coincida con posturas al reasignar entre modelos con diferente número de huesos.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_RetargetModifier3D_method_is_position_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_position_enabled**\ (\ ) |const| :ref:`🔗<class_RetargetModifier3D_method_is_position_enabled>`

Devuelve ``true`` si :ref:`enable<class_RetargetModifier3D_property_enable>` tiene :ref:`TRANSFORM_FLAG_POSITION<class_RetargetModifier3D_constant_TRANSFORM_FLAG_POSITION>`.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_is_rotation_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_rotation_enabled**\ (\ ) |const| :ref:`🔗<class_RetargetModifier3D_method_is_rotation_enabled>`

Devuelve ``true`` si :ref:`enable<class_RetargetModifier3D_property_enable>` tiene :ref:`TRANSFORM_FLAG_ROTATION<class_RetargetModifier3D_constant_TRANSFORM_FLAG_ROTATION>`.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_is_scale_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_scale_enabled**\ (\ ) |const| :ref:`🔗<class_RetargetModifier3D_method_is_scale_enabled>`

Devuelve ``true`` si :ref:`enable<class_RetargetModifier3D_property_enable>` tiene :ref:`TRANSFORM_FLAG_SCALE<class_RetargetModifier3D_constant_TRANSFORM_FLAG_SCALE>`.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_set_position_enabled:

.. rst-class:: classref-method

|void| **set_position_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RetargetModifier3D_method_set_position_enabled>`

Establece :ref:`TRANSFORM_FLAG_POSITION<class_RetargetModifier3D_constant_TRANSFORM_FLAG_POSITION>` en :ref:`enable<class_RetargetModifier3D_property_enable>`.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_set_rotation_enabled:

.. rst-class:: classref-method

|void| **set_rotation_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RetargetModifier3D_method_set_rotation_enabled>`

Establece :ref:`TRANSFORM_FLAG_ROTATION<class_RetargetModifier3D_constant_TRANSFORM_FLAG_ROTATION>` en :ref:`enable<class_RetargetModifier3D_property_enable>`.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_set_scale_enabled:

.. rst-class:: classref-method

|void| **set_scale_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RetargetModifier3D_method_set_scale_enabled>`

Establece :ref:`TRANSFORM_FLAG_SCALE<class_RetargetModifier3D_constant_TRANSFORM_FLAG_SCALE>` en :ref:`enable<class_RetargetModifier3D_property_enable>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
