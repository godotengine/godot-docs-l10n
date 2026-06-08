:github_url: hide

.. _class_VisualShaderNodeSample3D:

VisualShaderNodeSample3D
========================

**Успадковує:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`VisualShaderNodeTexture2DArray<class_VisualShaderNodeTexture2DArray>`, :ref:`VisualShaderNodeTexture3D<class_VisualShaderNodeTexture3D>`

Базова вершина для вузлів, що зразків 3D текстури в графі візуального відтінку.

.. rst-class:: classref-introduction-group

Опис
--------

У віртуальному класі використовуються нащадки.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------+-------+
   | :ref:`Source<enum_VisualShaderNodeSample3D_Source>` | :ref:`source<class_VisualShaderNodeSample3D_property_source>` | ``0`` |
   +-----------------------------------------------------+---------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VisualShaderNodeSample3D_Source:

.. rst-class:: classref-enumeration

enum **Source**: :ref:`🔗<enum_VisualShaderNodeSample3D_Source>`

.. _class_VisualShaderNodeSample3D_constant_SOURCE_TEXTURE:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeSample3D_Source>` **SOURCE_TEXTURE** = ``0``

Створює внутрішню форму і надає спосіб його віднести в вузол.

.. _class_VisualShaderNodeSample3D_constant_SOURCE_PORT:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeSample3D_Source>` **SOURCE_PORT** = ``1``

Використовуйте однорідну фактуру з порта пробки.

.. _class_VisualShaderNodeSample3D_constant_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeSample3D_Source>` **SOURCE_MAX** = ``2``

Представляємо розмір :ref:`Source<enum_VisualShaderNodeSample3D_Source>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeSample3D_property_source:

.. rst-class:: classref-property

:ref:`Source<enum_VisualShaderNodeSample3D_Source>` **source** = ``0`` :ref:`🔗<class_VisualShaderNodeSample3D_property_source>`

.. rst-class:: classref-property-setget

- |void| **set_source**\ (\ value\: :ref:`Source<enum_VisualShaderNodeSample3D_Source>`\ )
- :ref:`Source<enum_VisualShaderNodeSample3D_Source>` **get_source**\ (\ )

Тип джерела введення.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
