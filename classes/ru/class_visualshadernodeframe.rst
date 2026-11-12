:github_url: hide

.. _class_VisualShaderNodeFrame:

VisualShaderNodeFrame
=====================

**Наследует:** :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`VisualShaderNodeComment<class_VisualShaderNodeComment>`

Рамка, к которой можно прикрепить другие узлы визуального шейдера для лучшей организации.

.. rst-class:: classref-introduction-group

Описание
----------------

Прямоугольная рамка, которую можно использовать для группировки узлов визуального шейдера для улучшения организации.

Узлы, прикрепленные к рамке, будут перемещаться вместе с ней при ее перетаскивании, и она может автоматически изменять размер, чтобы охватить все прикрепленные узлы.

Ее заголовок, описание и цвет можно настроить.

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
------------

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

Описания свойств
--------------------------------

.. _class_VisualShaderNodeFrame_property_attached_nodes:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **attached_nodes** = ``PackedInt32Array()`` :ref:`🔗<class_VisualShaderNodeFrame_property_attached_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_attached_nodes**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_attached_nodes**\ (\ )

Список узлов, прикрепленных к фрейму.



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

Если ``true``, рамка автоматически изменит размер, чтобы охватить все прикрепленные узлы.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFrame_property_tint_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **tint_color** = ``Color(0.3, 0.3, 0.3, 0.75)`` :ref:`🔗<class_VisualShaderNodeFrame_property_tint_color>`

.. rst-class:: classref-property-setget

- |void| **set_tint_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_tint_color**\ (\ )

Цвет рамки, когда :ref:`tint_color_enabled<class_VisualShaderNodeFrame_property_tint_color_enabled>` равен ``true``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFrame_property_tint_color_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tint_color_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeFrame_property_tint_color_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_tint_color_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_tint_color_enabled**\ (\ )

Если ``true``, рамка будет окрашена в цвет, указанный в :ref:`tint_color<class_VisualShaderNodeFrame_property_tint_color>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFrame_property_title:

.. rst-class:: classref-property

:ref:`String<class_String>` **title** = ``"Title"`` :ref:`🔗<class_VisualShaderNodeFrame_property_title>`

.. rst-class:: classref-property-setget

- |void| **set_title**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_title**\ (\ )

Название узла.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_VisualShaderNodeFrame_method_add_attached_node:

.. rst-class:: classref-method

|void| **add_attached_node**\ (\ node\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeFrame_method_add_attached_node>`

Добавляет узел в список узлов, прикрепленных к фрейму. Не следует вызывать напрямую, вместо этого используйте метод :ref:`VisualShader.attach_node_to_frame()<class_VisualShader_method_attach_node_to_frame>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFrame_method_remove_attached_node:

.. rst-class:: classref-method

|void| **remove_attached_node**\ (\ node\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeFrame_method_remove_attached_node>`

Удаляет узел из списка узлов, прикрепленных к фрейму. Не следует вызывать напрямую, вместо этого используйте метод :ref:`VisualShader.detach_node_from_frame()<class_VisualShader_method_detach_node_from_frame>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
