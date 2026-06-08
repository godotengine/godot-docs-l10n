:github_url: hide

.. _class_RDUniform:

RDUniform
=========

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Уніформа шейдера (використовується :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Опис
--------

Цей об'єкт використовується :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------+------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                                | :ref:`binding<class_RDUniform_property_binding>`           | ``0`` |
   +------------------------------------------------------+------------------------------------------------------------+-------+
   | :ref:`UniformType<enum_RenderingDevice_UniformType>` | :ref:`uniform_type<class_RDUniform_property_uniform_type>` | ``3`` |
   +------------------------------------------------------+------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +----------------------------------------------------+--------------------------------------------------------------------------------+
   | |void|                                             | :ref:`add_id<class_RDUniform_method_add_id>`\ (\ id\: :ref:`RID<class_RID>`\ ) |
   +----------------------------------------------------+--------------------------------------------------------------------------------+
   | |void|                                             | :ref:`clear_ids<class_RDUniform_method_clear_ids>`\ (\ )                       |
   +----------------------------------------------------+--------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] | :ref:`get_ids<class_RDUniform_method_get_ids>`\ (\ ) |const|                   |
   +----------------------------------------------------+--------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_RDUniform_property_binding:

.. rst-class:: classref-property

:ref:`int<class_int>` **binding** = ``0`` :ref:`🔗<class_RDUniform_property_binding>`

.. rst-class:: classref-property-setget

- |void| **set_binding**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_binding**\ (\ )

Уніформа.

.. rst-class:: classref-item-separator

----

.. _class_RDUniform_property_uniform_type:

.. rst-class:: classref-property

:ref:`UniformType<enum_RenderingDevice_UniformType>` **uniform_type** = ``3`` :ref:`🔗<class_RDUniform_property_uniform_type>`

.. rst-class:: classref-property-setget

- |void| **set_uniform_type**\ (\ value\: :ref:`UniformType<enum_RenderingDevice_UniformType>`\ )
- :ref:`UniformType<enum_RenderingDevice_UniformType>` **get_uniform_type**\ (\ )

Тип даних форма.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_RDUniform_method_add_id:

.. rst-class:: classref-method

|void| **add_id**\ (\ id\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RDUniform_method_add_id>`

Підібрано дана id до однорідності. Дані, пов'язані з ідентифікатором, потім використовуються при проходженні уніформи.

.. rst-class:: classref-item-separator

----

.. _class_RDUniform_method_clear_ids:

.. rst-class:: classref-method

|void| **clear_ids**\ (\ ) :ref:`🔗<class_RDUniform_method_clear_ids>`

Виключає всі кришки, які в даний час межують з уніформою.

.. rst-class:: classref-item-separator

----

.. _class_RDUniform_method_get_ids:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_ids**\ (\ ) |const| :ref:`🔗<class_RDUniform_method_get_ids>`

Повертає масив всіх покладів, які в даний час належать до однорідності.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
