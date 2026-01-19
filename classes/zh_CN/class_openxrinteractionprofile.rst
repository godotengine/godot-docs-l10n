:github_url: hide

.. _class_OpenXRInteractionProfile:

OpenXRInteractionProfile
========================

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于 OpenXR 的建议绑定对象。

.. rst-class:: classref-introduction-group

描述
----

此对象存储用于一个交互配置的建议绑定。交互配置定义了一个被跟踪的 XR 设备（例如一个 XR 控制器）的元数据。

有关更多信息，请参阅\ `《OpenXR 规范中的交互配置信息》 <https://www.khronos.org/registry/OpenXR/specs/1.0/html/xrspec.html#semantic-path-interaction-profiles>`__\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`   | :ref:`binding_modifiers<class_OpenXRInteractionProfile_property_binding_modifiers>`               | ``[]`` |
   +-----------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`   | :ref:`bindings<class_OpenXRInteractionProfile_property_bindings>`                                 | ``[]`` |
   +-----------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`interaction_profile_path<class_OpenXRInteractionProfile_property_interaction_profile_path>` | ``""`` |
   +-----------------------------+---------------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRIPBinding<class_OpenXRIPBinding>`                 | :ref:`get_binding<class_OpenXRInteractionProfile_method_get_binding>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                   |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                         | :ref:`get_binding_count<class_OpenXRInteractionProfile_method_get_binding_count>`\ (\ ) |const|                                      |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRIPBindingModifier<class_OpenXRIPBindingModifier>` | :ref:`get_binding_modifier<class_OpenXRInteractionProfile_method_get_binding_modifier>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                         | :ref:`get_binding_modifier_count<class_OpenXRInteractionProfile_method_get_binding_modifier_count>`\ (\ ) |const|                    |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_OpenXRInteractionProfile_property_binding_modifiers:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **binding_modifiers** = ``[]`` :ref:`🔗<class_OpenXRInteractionProfile_property_binding_modifiers>`

.. rst-class:: classref-property-setget

- |void| **set_binding_modifiers**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_binding_modifiers**\ (\ )

用于该交互配置的绑定修改器。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_property_bindings:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **bindings** = ``[]`` :ref:`🔗<class_OpenXRInteractionProfile_property_bindings>`

.. rst-class:: classref-property-setget

- |void| **set_bindings**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_bindings**\ (\ )

用于该交互配置的动作绑定。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_property_interaction_profile_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **interaction_profile_path** = ``""`` :ref:`🔗<class_OpenXRInteractionProfile_property_interaction_profile_path>`

.. rst-class:: classref-property-setget

- |void| **set_interaction_profile_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_interaction_profile_path**\ (\ )

标识该 XR 设备的交互配置路径。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRInteractionProfile_method_get_binding:

.. rst-class:: classref-method

:ref:`OpenXRIPBinding<class_OpenXRIPBinding>` **get_binding**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRInteractionProfile_method_get_binding>`

检索在该索引处的绑定。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_method_get_binding_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_binding_count**\ (\ ) |const| :ref:`🔗<class_OpenXRInteractionProfile_method_get_binding_count>`

获取该交互配置中的绑定数量。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_method_get_binding_modifier:

.. rst-class:: classref-method

:ref:`OpenXRIPBindingModifier<class_OpenXRIPBindingModifier>` **get_binding_modifier**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRInteractionProfile_method_get_binding_modifier>`

获取位于该索引的 :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_method_get_binding_modifier_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_binding_modifier_count**\ (\ ) |const| :ref:`🔗<class_OpenXRInteractionProfile_method_get_binding_modifier_count>`

获取交互配置中绑定修改器的数量。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
