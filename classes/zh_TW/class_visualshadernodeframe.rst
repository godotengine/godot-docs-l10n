:github_url: hide

.. _class_VisualShaderNodeFrame:

VisualShaderNodeFrame
=====================

**繼承：** :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`VisualShaderNodeComment<class_VisualShaderNodeComment>`

能夠附加其他視覺化著色器節點的框架，方便組織節點。

.. rst-class:: classref-introduction-group

說明
----

一種矩形框架，能夠將視覺化著色器節點進行分組，方便組織。

拖動框架時，附加到框架的節點會跟隨框架移動；框架會自動調整大小，包圍所有附加的節點。

可以自訂標題、描述以及顏色。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------+--------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`attached_nodes<class_VisualShaderNodeFrame_property_attached_nodes>`         | ``PackedInt32Array()``         |
   +-------------------------------------------------+------------------------------------------------------------------------------------+--------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`autoshrink<class_VisualShaderNodeFrame_property_autoshrink>`                 | ``true``                       |
   +-------------------------------------------------+------------------------------------------------------------------------------------+--------------------------------+
   | :ref:`Color<class_Color>`                       | :ref:`tint_color<class_VisualShaderNodeFrame_property_tint_color>`                 | ``Color(0.3, 0.3, 0.3, 0.75)`` |
   +-------------------------------------------------+------------------------------------------------------------------------------------+--------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`tint_color_enabled<class_VisualShaderNodeFrame_property_tint_color_enabled>` | ``false``                      |
   +-------------------------------------------------+------------------------------------------------------------------------------------+--------------------------------+
   | :ref:`String<class_String>`                     | :ref:`title<class_VisualShaderNodeFrame_property_title>`                           | ``"Title"``                    |
   +-------------------------------------------------+------------------------------------------------------------------------------------+--------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+--------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_attached_node<class_VisualShaderNodeFrame_method_add_attached_node>`\ (\ node\: :ref:`int<class_int>`\ )       |
   +--------+--------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_attached_node<class_VisualShaderNodeFrame_method_remove_attached_node>`\ (\ node\: :ref:`int<class_int>`\ ) |
   +--------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeFrame_property_attached_nodes:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **attached_nodes** = ``PackedInt32Array()`` :ref:`🔗<class_VisualShaderNodeFrame_property_attached_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_attached_nodes**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_attached_nodes**\ (\ )

附加到框的節點清單。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFrame_property_autoshrink:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoshrink** = ``true`` :ref:`🔗<class_VisualShaderNodeFrame_property_autoshrink>`

.. rst-class:: classref-property-setget

- |void| **set_autoshrink_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_autoshrink_enabled**\ (\ )

如果為 ``true``\ ，該框將自動調整大小以包含所有附加的節點。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFrame_property_tint_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **tint_color** = ``Color(0.3, 0.3, 0.3, 0.75)`` :ref:`🔗<class_VisualShaderNodeFrame_property_tint_color>`

.. rst-class:: classref-property-setget

- |void| **set_tint_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_tint_color**\ (\ )

框架在 :ref:`tint_color_enabled<class_VisualShaderNodeFrame_property_tint_color_enabled>` 為 ``true`` 時的顏色。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFrame_property_tint_color_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tint_color_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeFrame_property_tint_color_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_tint_color_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_tint_color_enabled**\ (\ )

如果為 ``true``\ ，則該框將使用 :ref:`tint_color<class_VisualShaderNodeFrame_property_tint_color>` 中指定的顏色進行著色。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFrame_property_title:

.. rst-class:: classref-property

:ref:`String<class_String>` **title** = ``"Title"`` :ref:`🔗<class_VisualShaderNodeFrame_property_title>`

.. rst-class:: classref-property-setget

- |void| **set_title**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_title**\ (\ )

節點的標題。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_VisualShaderNodeFrame_method_add_attached_node:

.. rst-class:: classref-method

|void| **add_attached_node**\ (\ node\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeFrame_method_add_attached_node>`

將節點新增到框架附加節點清單中。不應該直接呼叫，請改用 :ref:`VisualShader.attach_node_to_frame()<class_VisualShader_method_attach_node_to_frame>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFrame_method_remove_attached_node:

.. rst-class:: classref-method

|void| **remove_attached_node**\ (\ node\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeFrame_method_remove_attached_node>`

將節點從框架附加節點清單中移除。不應該直接呼叫，請改用 :ref:`VisualShader.detach_node_from_frame()<class_VisualShader_method_detach_node_from_frame>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
