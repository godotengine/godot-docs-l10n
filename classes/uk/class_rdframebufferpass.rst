:github_url: hide

.. _class_RDFramebufferPass:

RDFramebufferPass
=================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Каркасбуферний опис вкладення (використаний :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас містить список описів вкладення для каркасного проходу. Кожні точки з індексом до раніше подано список фактурних вкладень.

Багаторазові каркасні буфери можуть оптимізувати деякі конфігурації в мобільних пристроях. На робочому столі вони не надають перевагу.

Цей об'єкт використовується :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`color_attachments<class_RDFramebufferPass_property_color_attachments>`       | ``PackedInt32Array()`` |
   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`int<class_int>`                           | :ref:`depth_attachment<class_RDFramebufferPass_property_depth_attachment>`         | ``-1``                 |
   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`input_attachments<class_RDFramebufferPass_property_input_attachments>`       | ``PackedInt32Array()`` |
   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`preserve_attachments<class_RDFramebufferPass_property_preserve_attachments>` | ``PackedInt32Array()`` |
   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`resolve_attachments<class_RDFramebufferPass_property_resolve_attachments>`   | ``PackedInt32Array()`` |
   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константи
------------------

.. _class_RDFramebufferPass_constant_ATTACHMENT_UNUSED:

.. rst-class:: classref-constant

**ATTACHMENT_UNUSED** = ``-1`` :ref:`🔗<class_RDFramebufferPass_constant_ATTACHMENT_UNUSED>`

Пристрої невикористані.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_RDFramebufferPass_property_color_attachments:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **color_attachments** = ``PackedInt32Array()`` :ref:`🔗<class_RDFramebufferPass_property_color_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_color_attachments**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_color_attachments**\ (\ )

Кольорові вкладення для замовлення від 0. Якщо це вкладення не використовується шейдером, пропускають ATTACHMENT_UNUSED для пропуску.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDFramebufferPass_property_depth_attachment:

.. rst-class:: classref-property

:ref:`int<class_int>` **depth_attachment** = ``-1`` :ref:`🔗<class_RDFramebufferPass_property_depth_attachment>`

.. rst-class:: classref-property-setget

- |void| **set_depth_attachment**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_depth_attachment**\ (\ )

Глибина кріплення. TTACHMENT_UNUSED слід використовувати, якщо для цього проходу не потрібно глибинний буфер.

.. rst-class:: classref-item-separator

----

.. _class_RDFramebufferPass_property_input_attachments:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **input_attachments** = ``PackedInt32Array()`` :ref:`🔗<class_RDFramebufferPass_property_input_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_input_attachments**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_input_attachments**\ (\ )

Використовується для багатопасних каркасних буферів (більше одного рендерного проходу). Конвертує вкладку в вхід. Обов'язково поставте його правильно в :ref:`RDUniform<class_RDUniform>` для рівномірного набору.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDFramebufferPass_property_preserve_attachments:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **preserve_attachments** = ``PackedInt32Array()`` :ref:`🔗<class_RDFramebufferPass_property_preserve_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_attachments**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_preserve_attachments**\ (\ )

Пристосування для збереження в цьому проході (інші вони стираються).



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDFramebufferPass_property_resolve_attachments:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **resolve_attachments** = ``PackedInt32Array()`` :ref:`🔗<class_RDFramebufferPass_property_resolve_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_resolve_attachments**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_resolve_attachments**\ (\ )

Якщо кольорові вкладення є багатошаровими, не мультиштованими розчинними насадками.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
