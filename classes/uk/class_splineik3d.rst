:github_url: hide

.. _class_SplineIK3D:

SplineIK3D
==========

**Успадковує:** :ref:`ChainIK3D<class_ChainIK3D>` **<** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

:ref:`SkeletonModifier3D<class_SkeletonModifier3D>` для вирівнювання кісток вздовж :ref:`Path3D<class_Path3D>`.

.. rst-class:: classref-introduction-group

Опис
--------

:ref:`SkeletonModifier3D<class_SkeletonModifier3D>` для вирівнювання кісток вздовж :ref:`Path3D<class_Path3D>`. Плавність прилягання залежить від :ref:`Curve3D.bake_interval<class_Curve3D_property_bake_interval>`.

Якщо ви хочете, щоб :ref:`Path3D<class_Path3D>` приєднувався до певної кістки, рекомендується розмістити :ref:`ModifierBoneTarget3D<class_ModifierBoneTarget3D>` перед **SplineIK3D** у списку :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` (дочірні елементи :ref:`Skeleton3D<class_Skeleton3D>`), а потім розмістити :ref:`Path3D<class_Path3D>` як дочірній елемент :ref:`ModifierBoneTarget3D<class_ModifierBoneTarget3D>`.

Кручення кістки визначається на основі методу ``Curve3D.get_point_tilt``.

Якщо суглоб кореневої кістки та початкова точка :ref:`Curve3D<class_Curve3D>` розділені, передбачається, що між ними є лінійний відрізок. Це означає, що вектор, що вказує на початкову точку :ref:`Curve3D<class_Curve3D>`, має пріоритет над найкоротшою точкою перетину вздовж :ref:`Curve3D<class_Curve3D>`.

Якщо кінцеве з'єднання кістки перевищує довжину шляху, його згинають якомога ближче до кінцевої точки :ref:`Curve3D<class_Curve3D>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`setting_count<class_SplineIK3D_property_setting_count>` | ``0`` |
   +-----------------------+---------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Методи
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

Описи властивостей
------------------------------------

.. _class_SplineIK3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_SplineIK3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

Кількість налаштувань.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_SplineIK3D_method_get_path_3d:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_path_3d**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_get_path_3d>`

Повертає шлях вузла :ref:`Path3D<class_Path3D>`, який описує шлях.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_get_tilt_fade_in:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tilt_fade_in**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_get_tilt_fade_in>`

Повертає метод інтерполяції нахилу, що використовується між кореневою кісткою та початковою точкою :ref:`Curve3D<class_Curve3D>`, коли вони розташовані окремо. Див. також :ref:`set_tilt_fade_in()<class_SplineIK3D_method_set_tilt_fade_in>`.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_get_tilt_fade_out:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tilt_fade_out**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_get_tilt_fade_out>`

Повертає метод інтерполяції нахилу, що використовується між кінцевою кісткою та кінцевою точкою :ref:`Curve3D<class_Curve3D>`, коли вони розташовані окремо. Див. також :ref:`set_tilt_fade_out()<class_SplineIK3D_method_set_tilt_fade_out>`.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_is_tilt_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tilt_enabled**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SplineIK3D_method_is_tilt_enabled>`

Повертає значення, якщо властивість нахилу :ref:`Curve3D<class_Curve3D>` впливає на скручування кістки.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_path_3d:

.. rst-class:: classref-method

|void| **set_path_3d**\ (\ index\: :ref:`int<class_int>`, path_3d\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SplineIK3D_method_set_path_3d>`

Встановлює шлях вузла :ref:`Path3D<class_Path3D>`, який описує шлях.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_tilt_enabled:

.. rst-class:: classref-method

|void| **set_tilt_enabled**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SplineIK3D_method_set_tilt_enabled>`

Встановлює, чи має властивість нахилу :ref:`Curve3D<class_Curve3D>` впливати на скручування кістки.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_tilt_fade_in:

.. rst-class:: classref-method

|void| **set_tilt_fade_in**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SplineIK3D_method_set_tilt_fade_in>`

Якщо ``size`` більше за ``0``, нахил інтерполюється між початковими кістками ``size`` від початкової точки :ref:`Curve3D<class_Curve3D>`, коли вони розташовані окремо.

Якщо ``size`` дорівнює ``0``, нахили між головкою кореневої кістки та початковою точкою :ref:`Curve3D<class_Curve3D>` уніфікуються з нахилом початкової точки :ref:`Curve3D<class_Curve3D>`.

Якщо ``size`` менше за ``0``, нахили між кореневою кісткою та початковою точкою :ref:`Curve3D<class_Curve3D>` становлять ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_SplineIK3D_method_set_tilt_fade_out:

.. rst-class:: classref-method

|void| **set_tilt_fade_out**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SplineIK3D_method_set_tilt_fade_out>`

Якщо ``size`` більше за ``0``, нахил інтерполюється між кінцевими кістками ``size`` від кінцевої точки :ref:`Curve3D<class_Curve3D>`, коли вони розташовані окремо.

Якщо ``size`` дорівнює ``0``, нахили між хвостом кінцевої кістки та кінцевою точкою :ref:`Curve3D<class_Curve3D>` уніфікуються з нахилом кінцевої точки :ref:`Curve3D<class_Curve3D>`.

Якщо ``size`` менше за ``0``, нахили між кінцевою кісткою та кінцевою точкою :ref:`Curve3D<class_Curve3D>` становлять ``0.0``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
