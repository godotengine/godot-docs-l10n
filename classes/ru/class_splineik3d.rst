:github_url: hide

.. _class_SplineIK3D:

SplineIK3D
==========

**Наследует:** :ref:`ChainIK3D<class_ChainIK3D>` **<** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Модификатор :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` для выравнивания костей вдоль пути :ref:`Path3D<class_Path3D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

:ref:`SkeletonModifier3D<class_SkeletonModifier3D>` используется для выравнивания костей вдоль :ref:`Path3D<class_Path3D>`. Плавность подгонки зависит от :ref:`Curve3D.bake_interval<class_Curve3D_property_bake_interval>`.

Если вы хотите, чтобы :ref:`Path3D<class_Path3D>` прикреплялся к определенной кости, рекомендуется разместить :ref:`ModifierBoneTarget3D<class_ModifierBoneTarget3D>` перед **SplineIK3D** в списке :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` (дочерние элементы :ref:`Skeleton3D<class_Skeleton3D>`), а затем разместить :ref:`Path3D<class_Path3D>` в качестве дочернего элемента :ref:`ModifierBoneTarget3D<class_ModifierBoneTarget3D>`.

Скручивание кости определяется на основе :ref:`Curve3D.get_point_tilt()<class_Curve3D_method_get_point_tilt>`.

Если корневой сустав кости и начальная точка :ref:`Curve3D<class_Curve3D>` разделены, предполагается, что между ними существует линейный отрезок. Это означает, что вектор, направленный к начальной точке :ref:`Curve3D<class_Curve3D>`, имеет приоритет над кратчайшей точкой пересечения вдоль :ref:`Curve3D<class_Curve3D>`.

Если длина конечного костного сустава превышает длину пути, он изгибается как можно ближе к конечной точке :ref:`Curve3D<class_Curve3D>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`setting_count<class_SplineIK3D_property_setting_count>` | ``0`` |
   +-----------------------+---------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_path_3d<class_SplineIK3D_method_get_path_3d>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                      |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_tilt_fade_in<class_SplineIK3D_method_get_tilt_fade_in>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                            |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_tilt_fade_out<class_SplineIK3D_method_get_tilt_fade_out>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                          |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`is_tilt_enabled<class_SplineIK3D_method_is_tilt_enabled>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                              |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_path_3d<class_SplineIK3D_method_set_path_3d>`\ (\ index\: :ref:`int<class_int>`, path_3d\: :ref:`NodePath<class_NodePath>`\ )   |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_tilt_enabled<class_SplineIK3D_method_set_tilt_enabled>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_tilt_fade_in<class_SplineIK3D_method_set_tilt_fade_in>`\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ )      |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_tilt_fade_out<class_SplineIK3D_method_set_tilt_fade_out>`\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ )    |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_SplineIK3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_SplineIK3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

Количество настроек.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_SplineIK3D_method_get_path_3d:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_path_3d**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_get_path_3d>`

Возвращает путь узла объекта :ref:`Path3D<class_Path3D>`, описывающего путь.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_get_tilt_fade_in:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tilt_fade_in**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_get_tilt_fade_in>`

Возвращает метод интерполяции наклона, используемый между корневой костью и начальной точкой :ref:`Curve3D<class_Curve3D>`, когда они находятся на некотором расстоянии друг от друга. См. также :ref:`set_tilt_fade_in()<class_SplineIK3D_method_set_tilt_fade_in>`.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_get_tilt_fade_out:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tilt_fade_out**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_get_tilt_fade_out>`

Возвращает метод интерполяции наклона, используемый между конечной костью и конечной точкой :ref:`Curve3D<class_Curve3D>`, когда они находятся на некотором расстоянии друг от друга. См. также :ref:`set_tilt_fade_out()<class_SplineIK3D_method_set_tilt_fade_out>`.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_is_tilt_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tilt_enabled**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_is_tilt_enabled>`

Возвращает значение, если свойство наклона объекта :ref:`Curve3D<class_Curve3D>` влияет на скручивание кости.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_path_3d:

.. rst-class:: classref-method

|void| **set_path_3d**\ (\ index\: :ref:`int<class_int>`, path_3d\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SplineIK3D_method_set_path_3d>`

Задает путь к узлу :ref:`Path3D<class_Path3D>`, описывающему путь.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_tilt_enabled:

.. rst-class:: classref-method

|void| **set_tilt_enabled**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SplineIK3D_method_set_tilt_enabled>`

Определяет, должно ли свойство наклона объекта :ref:`Curve3D<class_Curve3D>` влиять на скручивание кости.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_tilt_fade_in:

.. rst-class:: classref-method

|void| **set_tilt_fade_in**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SplineIK3D_method_set_tilt_fade_in>`

Если ``size`` больше ``0``, наклон интерполируется между ``size`` начальными костями от начальной точки :ref:`Curve3D<class_Curve3D>`, когда они находятся на расстоянии друг от друга.

Если ``size`` равно ``0``, наклоны между головкой корневой кости и начальной точкой :ref:`Curve3D<class_Curve3D>` объединяются с наклоном начальной точки :ref:`Curve3D<class_Curve3D>`.

Если ``size`` меньше ``0``, наклоны между корневой костью и начальной точкой :ref:`Curve3D<class_Curve3D>` равны ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_tilt_fade_out:

.. rst-class:: classref-method

|void| **set_tilt_fade_out**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SplineIK3D_method_set_tilt_fade_out>`

Если ``size`` больше ``0``, наклон интерполируется между ``size`` конечными костями от конечной точки :ref:`Curve3D<class_Curve3D>`, когда они находятся на расстоянии друг от друга.

Если ``size`` равно ``0``, наклоны между хвостовой частью конечной кости и конечной точкой :ref:`Curve3D<class_Curve3D>` объединяются с наклоном конечной точки :ref:`Curve3D<class_Curve3D>`.

Если ``size`` меньше ``0``, наклоны между конечной костью и конечной точкой :ref:`Curve3D<class_Curve3D>` равны ``0.0``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
