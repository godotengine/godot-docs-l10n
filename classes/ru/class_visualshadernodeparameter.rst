:github_url: hide

.. _class_VisualShaderNodeParameter:

VisualShaderNodeParameter
=========================

**Наследует:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`VisualShaderNodeBooleanParameter<class_VisualShaderNodeBooleanParameter>`, :ref:`VisualShaderNodeColorParameter<class_VisualShaderNodeColorParameter>`, :ref:`VisualShaderNodeFloatParameter<class_VisualShaderNodeFloatParameter>`, :ref:`VisualShaderNodeIntParameter<class_VisualShaderNodeIntParameter>`, :ref:`VisualShaderNodeTextureParameter<class_VisualShaderNodeTextureParameter>`, :ref:`VisualShaderNodeTransformParameter<class_VisualShaderNodeTransformParameter>`, :ref:`VisualShaderNodeUIntParameter<class_VisualShaderNodeUIntParameter>`, :ref:`VisualShaderNodeVec2Parameter<class_VisualShaderNodeVec2Parameter>`, :ref:`VisualShaderNodeVec3Parameter<class_VisualShaderNodeVec3Parameter>`, :ref:`VisualShaderNodeVec4Parameter<class_VisualShaderNodeVec4Parameter>`

Базовый тип для параметров в графе визуального шейдера.

.. rst-class:: classref-introduction-group

Описание
----------------

Параметр представляет собой переменную в шейдере, которая задается извне, т. е. из :ref:`ShaderMaterial<class_ShaderMaterial>`. Параметры представлены как свойства в :ref:`ShaderMaterial<class_ShaderMaterial>` и могут быть назначены из Инспектора или из скрипта.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------+--------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`                                      | :ref:`instance_index<class_VisualShaderNodeParameter_property_instance_index>` | ``0``  |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`parameter_name<class_VisualShaderNodeParameter_property_parameter_name>` | ``""`` |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+--------+
   | :ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` | :ref:`qualifier<class_VisualShaderNodeParameter_property_qualifier>`           | ``0``  |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_VisualShaderNodeParameter_Qualifier:

.. rst-class:: classref-enumeration

enum **Qualifier**: :ref:`🔗<enum_VisualShaderNodeParameter_Qualifier>`

.. _class_VisualShaderNodeParameter_constant_QUAL_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_NONE** = ``0``

Параметр будет привязан к :ref:`ShaderMaterial<class_ShaderMaterial>` с помощью этого шейдера.

.. _class_VisualShaderNodeParameter_constant_QUAL_GLOBAL:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_GLOBAL** = ``1``

Параметр будет использовать глобальное значение, определенное в настройках проекта.

.. _class_VisualShaderNodeParameter_constant_QUAL_INSTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_INSTANCE** = ``2``

Параметр будет привязан к узлу с прикрепленным :ref:`ShaderMaterial<class_ShaderMaterial>` с помощью этого шейдера.

.. _class_VisualShaderNodeParameter_constant_QUAL_INSTANCE_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_INSTANCE_INDEX** = ``3``

Параметр будет привязан к узлу с прикрепленным :ref:`ShaderMaterial<class_ShaderMaterial>` с помощью этого шейдера. Позволяет установить свойство :ref:`instance_index<class_VisualShaderNodeParameter_property_instance_index>`.

.. _class_VisualShaderNodeParameter_constant_QUAL_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_MAX** = ``4``

Представляет размер перечисления :ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeParameter_property_instance_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **instance_index** = ``0`` :ref:`🔗<class_VisualShaderNodeParameter_property_instance_index>`

.. rst-class:: classref-property-setget

- |void| **set_instance_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_instance_index**\ (\ )

Индекс в диапазоне 0-15, используемый для предотвращения конфликтов при применении шейдера к нескольким материалам.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeParameter_property_parameter_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **parameter_name** = ``""`` :ref:`🔗<class_VisualShaderNodeParameter_property_parameter_name>`

.. rst-class:: classref-property-setget

- |void| **set_parameter_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_parameter_name**\ (\ )

Имя параметра, по которому к нему можно получить доступ через свойства :ref:`ShaderMaterial<class_ShaderMaterial>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeParameter_property_qualifier:

.. rst-class:: classref-property

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **qualifier** = ``0`` :ref:`🔗<class_VisualShaderNodeParameter_property_qualifier>`

.. rst-class:: classref-property-setget

- |void| **set_qualifier**\ (\ value\: :ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>`\ )
- :ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **get_qualifier**\ (\ )

Определяет область действия параметра.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
