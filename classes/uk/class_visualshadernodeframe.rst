:github_url: hide

.. _class_VisualShaderNodeFrame:

VisualShaderNodeFrame
=====================

**Успадковує:** :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`VisualShaderNodeComment<class_VisualShaderNodeComment>`

Рамка інших візуальних шейдерних вузлів може бути прикріплена до кращої організації.

.. rst-class:: classref-introduction-group

Опис
--------

Для поліпшення організації можна використовувати прямокутну раму, яка може використовуватися для групових візуальних шейкерних вузлів.

Вузол, прикріплені до рами, перейдемо з ним, коли він перетягується, і він може автоматично змінювати розмір, щоб закрити всі прикріплені вершини.

Його назва, опис і колір можна налаштувати.

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
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

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeFrame_property_attached_nodes:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **attached_nodes** = ``PackedInt32Array()`` :ref:`🔗<class_VisualShaderNodeFrame_property_attached_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_attached_nodes**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_attached_nodes**\ (\ )

Перелік вузлів, прикріплених до рами.



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

Якщо ``true``, кадр автоматично буде змінювати розмір, щоб закривати всі прикріплені вершини.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFrame_property_tint_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **tint_color** = ``Color(0.3, 0.3, 0.3, 0.75)`` :ref:`🔗<class_VisualShaderNodeFrame_property_tint_color>`

.. rst-class:: classref-property-setget

- |void| **set_tint_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_tint_color**\ (\ )

Колір рамки, коли :ref:`tint_color_enabled<class_VisualShaderNodeFrame_property_tint_color_enabled>` має значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFrame_property_tint_color_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tint_color_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeFrame_property_tint_color_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_tint_color_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_tint_color_enabled**\ (\ )

Якщо ``true``, рама буде натілена кольором, зазначеним в :ref:`tint_color<class_VisualShaderNodeFrame_property_tint_color>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFrame_property_title:

.. rst-class:: classref-property

:ref:`String<class_String>` **title** = ``"Title"`` :ref:`🔗<class_VisualShaderNodeFrame_property_title>`

.. rst-class:: classref-property-setget

- |void| **set_title**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_title**\ (\ )

Назва вузла.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_VisualShaderNodeFrame_method_add_attached_node:

.. rst-class:: classref-method

|void| **add_attached_node**\ (\ node\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeFrame_method_add_attached_node>`

Додає вузол до списку вузлів, прикріплених до рами. Не можна назвати безпосередньо, скористайтеся :ref:`VisualShader.attach_node_to_frame()<class_VisualShader_method_attach_node_to_frame>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFrame_method_remove_attached_node:

.. rst-class:: classref-method

|void| **remove_attached_node**\ (\ node\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeFrame_method_remove_attached_node>`

Видаліть вузол з переліку вузлів, прикріплених до рами. Не можна назвати безпосередньо, скористайтеся :ref:`VisualShader.detach_node_from_frame()<class_VisualShader_method_detach_node_from_frame>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
