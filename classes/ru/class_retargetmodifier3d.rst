:github_url: hide

.. _class_RetargetModifier3D:

RetargetModifier3D
==================

**Наследует:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Модификатор для переноса поз родительского скелета (или глобальных поз) на дочерние скелеты в пространстве модели с различными опорами.

.. rst-class:: classref-introduction-group

Описание
----------------

Извлекает позу (или глобальную позу) относительно покоя родительского скелета в пространстве модели и переносит ее в дочерний скелет.

Этот модификатор переписывает позу дочернего скелета непосредственно в процессе обновления родительского скелета. Это означает, что он перезаписывает сопоставленную позу кости, установленную в обычном процессе на целевом скелете. Если вы хотите установить позу кости целевого скелета после перенацеливания, вам нужно будет добавить дочерний элемент :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` к целевому скелету и тем самым изменить позу.

\ **Примечание:** Когда включен :ref:`use_global_pose<class_RetargetModifier3D_property_use_global_pose>`, даже если это не сопоставленная кость, это может вызвать визуальные проблемы, поскольку глобальная поза применяется, игнорируя позу родительской кости **, если у нее есть сопоставленные дочерние кости**. См. также :ref:`use_global_pose<class_RetargetModifier3D_property_use_global_pose>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
------------

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

Перечисления
------------------------

.. _enum_RetargetModifier3D_TransformFlag:

.. rst-class:: classref-enumeration

flags **TransformFlag**: :ref:`🔗<enum_RetargetModifier3D_TransformFlag>`

.. _class_RetargetModifier3D_constant_TRANSFORM_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>` **TRANSFORM_FLAG_POSITION** = ``1``

Если установлено, позволяет перенацелить позицию.

.. _class_RetargetModifier3D_constant_TRANSFORM_FLAG_ROTATION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>` **TRANSFORM_FLAG_ROTATION** = ``2``

Если установлено, позволяет перенацелить ротацию.

.. _class_RetargetModifier3D_constant_TRANSFORM_FLAG_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>` **TRANSFORM_FLAG_SCALE** = ``4``

Если установлено, позволяет перенаправить масштаб.

.. _class_RetargetModifier3D_constant_TRANSFORM_FLAG_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_RetargetModifier3D_TransformFlag>` **TRANSFORM_FLAG_ALL** = ``7``

Если установлено, позволяет перенацелить положение/поворот/масштаб.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

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

Флаги для индивидуального управления процессом преобразования элементов, когда :ref:`use_global_pose<class_RetargetModifier3D_property_use_global_pose>` отключен.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_property_profile:

.. rst-class:: classref-property

:ref:`SkeletonProfile<class_SkeletonProfile>` **profile** :ref:`🔗<class_RetargetModifier3D_property_profile>`

.. rst-class:: classref-property-setget

- |void| **set_profile**\ (\ value\: :ref:`SkeletonProfile<class_SkeletonProfile>`\ )
- :ref:`SkeletonProfile<class_SkeletonProfile>` **get_profile**\ (\ )

:ref:`SkeletonProfile<class_SkeletonProfile>` для перенацеливания костей с названиями, соответствующими списку костей.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_property_use_global_pose:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_global_pose** = ``false`` :ref:`🔗<class_RetargetModifier3D_property_use_global_pose>`

.. rst-class:: classref-property-setget

- |void| **set_use_global_pose**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_global_pose**\ (\ )

Если ``false``, в случае, если целевой скелет имеет меньше костей, чем исходный скелет, преобразование исходной кости-родителя будет проигнорировано.

Вместо этого можно перенацеливаться между моделями с разными формами тела, а положение, поворот и масштаб могут перенацеливаться отдельно.

Если ``true``, перенацеливание выполняется с учетом глобальной позы.

В случае, если целевой скелет имеет меньше костей, чем исходный скелет, учитывается преобразование исходной кости-родителя. Однако длина костей между скелетами должна точно совпадать, в противном случае кости будут вынуждены расширяться или сжиматься.

Это полезно для использования фиктивной кости с длиной ``0`` для сопоставления поз при перенацеливании между моделями с разным количеством костей.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_RetargetModifier3D_method_is_position_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_position_enabled**\ (\ ) |const| :ref:`🔗<class_RetargetModifier3D_method_is_position_enabled>`

Возвращает ``истина``, если :ref:`enable имеет [constant TRANSFORM_FLAG_POSITION<class_RetargetModifier3D_property_enable имеет [constant TRANSFORM_FLAG_POSITION>`.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_is_rotation_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_rotation_enabled**\ (\ ) |const| :ref:`🔗<class_RetargetModifier3D_method_is_rotation_enabled>`

Возвращает ``true``, если :ref:`Enable<class_RetargetModifier3D_property_Enable>` имеет :ref:`TRANSFORM_FLAG_ROTATION<class_RetargetModifier3D_constant_TRANSFORM_FLAG_ROTATION>`.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_is_scale_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_scale_enabled**\ (\ ) |const| :ref:`🔗<class_RetargetModifier3D_method_is_scale_enabled>`

Возвращает ``true``, если :ref:`Enable<class_RetargetModifier3D_property_Enable>` имеет :ref:`TRANSFORM_FLAG_SCALE<class_RetargetModifier3D_constant_TRANSFORM_FLAG_SCALE>`.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_set_position_enabled:

.. rst-class:: classref-method

|void| **set_position_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RetargetModifier3D_method_set_position_enabled>`

Устанавливает :ref:`TRANSFORM_FLAG_POSITION<class_RetargetModifier3D_constant_TRANSFORM_FLAG_POSITION>` в :ref:`enable<class_RetargetModifier3D_property_enable>`.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_set_rotation_enabled:

.. rst-class:: classref-method

|void| **set_rotation_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RetargetModifier3D_method_set_rotation_enabled>`

Устанавливает :ref:`TRANSFORM_FLAG_ROTATION<class_RetargetModifier3D_constant_TRANSFORM_FLAG_ROTATION>` в :ref:`enable<class_RetargetModifier3D_property_enable>`.

.. rst-class:: classref-item-separator

----

.. _class_RetargetModifier3D_method_set_scale_enabled:

.. rst-class:: classref-method

|void| **set_scale_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RetargetModifier3D_method_set_scale_enabled>`

Устанавливает :ref:`TRANSFORM_FLAG_SCALE<class_RetargetModifier3D_constant_TRANSFORM_FLAG_SCALE>` в :ref:`enable<class_RetargetModifier3D_property_enable>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
