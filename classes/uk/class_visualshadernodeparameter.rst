:github_url: hide

.. _class_VisualShaderNodeParameter:

VisualShaderNodeParameter
=========================

**Успадковує:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`VisualShaderNodeBooleanParameter<class_VisualShaderNodeBooleanParameter>`, :ref:`VisualShaderNodeColorParameter<class_VisualShaderNodeColorParameter>`, :ref:`VisualShaderNodeFloatParameter<class_VisualShaderNodeFloatParameter>`, :ref:`VisualShaderNodeIntParameter<class_VisualShaderNodeIntParameter>`, :ref:`VisualShaderNodeTextureParameter<class_VisualShaderNodeTextureParameter>`, :ref:`VisualShaderNodeTransformParameter<class_VisualShaderNodeTransformParameter>`, :ref:`VisualShaderNodeUIntParameter<class_VisualShaderNodeUIntParameter>`, :ref:`VisualShaderNodeVec2Parameter<class_VisualShaderNodeVec2Parameter>`, :ref:`VisualShaderNodeVec3Parameter<class_VisualShaderNodeVec3Parameter>`, :ref:`VisualShaderNodeVec4Parameter<class_VisualShaderNodeVec4Parameter>`

Базовий тип параметрів в графі візуального відтінку.

.. rst-class:: classref-introduction-group

Опис
--------

Параметр являє собою змінну в шейдері, який встановлюється зовнішньо, тобто з :ref:`ShaderMaterial<class_ShaderMaterial>`. Параметри виводяться в якості властивостей в :ref:`ShaderMaterial<class_ShaderMaterial>` і можуть бути призначені з інспектора або з сценарію.

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Переліки
----------------

.. _enum_VisualShaderNodeParameter_Qualifier:

.. rst-class:: classref-enumeration

enum **Qualifier**: :ref:`🔗<enum_VisualShaderNodeParameter_Qualifier>`

.. _class_VisualShaderNodeParameter_constant_QUAL_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_NONE** = ``0``

Параметр буде прив'язаний до :ref:`ShaderMaterial<class_ShaderMaterial>` за допомогою цього відтінку.

.. _class_VisualShaderNodeParameter_constant_QUAL_GLOBAL:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_GLOBAL** = ``1``

Параметр використовує глобальне значення, визначене в налаштуваннях проекту.

.. _class_VisualShaderNodeParameter_constant_QUAL_INSTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_INSTANCE** = ``2``

Параметр буде прив'язаний до вершини з прикріпленим :ref:`ShaderMaterial<class_ShaderMaterial>` за допомогою цього відтінку.

.. _class_VisualShaderNodeParameter_constant_QUAL_INSTANCE_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_INSTANCE_INDEX** = ``3``

Параметр буде прив'язано до вузла з підключеним :ref:`ShaderMaterial<class_ShaderMaterial>` за допомогою цього шейдера. Дозволяє встановити властивість :ref:`instance_index<class_VisualShaderNodeParameter_property_instance_index>`.

.. _class_VisualShaderNodeParameter_constant_QUAL_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_MAX** = ``4``

Представляємо розмір замісу :ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeParameter_property_instance_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **instance_index** = ``0`` :ref:`🔗<class_VisualShaderNodeParameter_property_instance_index>`

.. rst-class:: classref-property-setget

- |void| **set_instance_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_instance_index**\ (\ )

Індекс у діапазоні від 0 до 15, який використовується для уникнення конфліктів, коли шейдер використовується на кількох матеріалах.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeParameter_property_parameter_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **parameter_name** = ``""`` :ref:`🔗<class_VisualShaderNodeParameter_property_parameter_name>`

.. rst-class:: classref-property-setget

- |void| **set_parameter_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_parameter_name**\ (\ )

Назва параметра, за допомогою якого можна отримати доступ через властивості :ref:`ShaderMaterial<class_ShaderMaterial>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeParameter_property_qualifier:

.. rst-class:: classref-property

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **qualifier** = ``0`` :ref:`🔗<class_VisualShaderNodeParameter_property_qualifier>`

.. rst-class:: classref-property-setget

- |void| **set_qualifier**\ (\ value\: :ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>`\ )
- :ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **get_qualifier**\ (\ )

Визначає обсяг параметра.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
