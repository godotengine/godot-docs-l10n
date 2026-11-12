:github_url: hide

.. _class_VisualShaderNodeGroup:

VisualShaderNodeGroup
=====================

**Наследует:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A visual shader node that instances a :ref:`VisualShaderGroup<class_VisualShaderGroup>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Represents a :ref:`VisualShaderGroup<class_VisualShaderGroup>` inside a :ref:`VisualShader<class_VisualShader>` or another :ref:`VisualShaderGroup<class_VisualShaderGroup>`. Its input and output ports are defined by the assigned :ref:`group<class_VisualShaderNodeGroup_property_group>` resource.

If the group contains nodes incompatible with the current shader context, the outputs will use default values and a warning will be shown.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------+
   | :ref:`VisualShaderGroup<class_VisualShaderGroup>` | :ref:`group<class_VisualShaderNodeGroup_property_group>` |
   +---------------------------------------------------+----------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeGroup_property_group:

.. rst-class:: classref-property

:ref:`VisualShaderGroup<class_VisualShaderGroup>` **group** :ref:`🔗<class_VisualShaderNodeGroup_property_group>`

.. rst-class:: classref-property-setget

- |void| **set_group**\ (\ value\: :ref:`VisualShaderGroup<class_VisualShaderGroup>`\ )
- :ref:`VisualShaderGroup<class_VisualShaderGroup>` **get_group**\ (\ )

The :ref:`VisualShaderGroup<class_VisualShaderGroup>` resource instanced by this node.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
