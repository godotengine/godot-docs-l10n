:github_url: hide

.. _class_VisualShaderNodeGroup:

VisualShaderNodeGroup
=====================

**Успадковує:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A visual shader node that instances a :ref:`VisualShaderGroup<class_VisualShaderGroup>`.

.. rst-class:: classref-introduction-group

Опис
--------

Represents a :ref:`VisualShaderGroup<class_VisualShaderGroup>` inside a :ref:`VisualShader<class_VisualShader>` or another :ref:`VisualShaderGroup<class_VisualShaderGroup>`. Its input and output ports are defined by the assigned :ref:`group<class_VisualShaderNodeGroup_property_group>` resource.

If the group contains nodes incompatible with the current shader context, the outputs will use default values and a warning will be shown.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------+
   | :ref:`VisualShaderGroup<class_VisualShaderGroup>` | :ref:`group<class_VisualShaderNodeGroup_property_group>` |
   +---------------------------------------------------+----------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeGroup_property_group:

.. rst-class:: classref-property

:ref:`VisualShaderGroup<class_VisualShaderGroup>` **group** :ref:`🔗<class_VisualShaderNodeGroup_property_group>`

.. rst-class:: classref-property-setget

- |void| **set_group**\ (\ value\: :ref:`VisualShaderGroup<class_VisualShaderGroup>`\ )
- :ref:`VisualShaderGroup<class_VisualShaderGroup>` **get_group**\ (\ )

The :ref:`VisualShaderGroup<class_VisualShaderGroup>` resource instanced by this node.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
