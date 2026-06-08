:github_url: hide

.. _class_XRVRS:

XRVRS
=====

**Успадковує:** :ref:`Object<class_Object>`

Помічник класу для інтерфейсів XR, що генерує зображення VRS.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас використовується різними інтерфейсами XR, щоб генерувати текстури VRS, які можна використовувати для прискорення рендерингу.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------+------------------------+
   | :ref:`float<class_float>`   | :ref:`vrs_min_radius<class_XRVRS_property_vrs_min_radius>`       | ``20.0``               |
   +-----------------------------+------------------------------------------------------------------+------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`vrs_render_region<class_XRVRS_property_vrs_render_region>` | ``Rect2i(0, 0, 0, 0)`` |
   +-----------------------------+------------------------------------------------------------------+------------------------+
   | :ref:`float<class_float>`   | :ref:`vrs_strength<class_XRVRS_property_vrs_strength>`           | ``1.0``                |
   +-----------------------------+------------------------------------------------------------------+------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`make_vrs_texture<class_XRVRS_method_make_vrs_texture>`\ (\ target_size\: :ref:`Vector2<class_Vector2>`, eye_foci\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_XRVRS_property_vrs_min_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_min_radius** = ``20.0`` :ref:`🔗<class_XRVRS_property_vrs_min_radius>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_min_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_min_radius**\ (\ )

Мінімальний радіус навколо вогнища, де повна якість гарантована, якщо VRS використовується як відсоток розміру екрану.

.. rst-class:: classref-item-separator

----

.. _class_XRVRS_property_vrs_render_region:

.. rst-class:: classref-property

:ref:`Rect2i<class_Rect2i>` **vrs_render_region** = ``Rect2i(0, 0, 0, 0)`` :ref:`🔗<class_XRVRS_property_vrs_render_region>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_render_region**\ (\ value\: :ref:`Rect2i<class_Rect2i>`\ )
- :ref:`Rect2i<class_Rect2i>` **get_vrs_render_region**\ (\ )

Область візуалізації, до якої буде масштабовано текстуру VRS під час створення.

.. rst-class:: classref-item-separator

----

.. _class_XRVRS_property_vrs_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_strength** = ``1.0`` :ref:`🔗<class_XRVRS_property_vrs_strength>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_strength**\ (\ )

Потужність використовується для розрахунку карти щільності VRS. Чим більше це значення, тим більш помітні VRS.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_XRVRS_method_make_vrs_texture:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **make_vrs_texture**\ (\ target_size\: :ref:`Vector2<class_Vector2>`, eye_foci\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_XRVRS_method_make_vrs_texture>`

Генерує текстуру VRS на основі рендерингу ``target_size``, скоригованого розміром нашої плитки VRS. Для кожної фокальної точки ока, переданої в ``eye_foci``, створюється шар. Фокальна точка має бути в NDC.

Результат буде кешовано, запит текстури VRS з незмінними параметрами та налаштуваннями поверне кешований RID.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
