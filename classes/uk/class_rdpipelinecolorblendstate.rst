:github_url: hide

.. _class_RDPipelineColorBlendState:

RDPipelineColorBlendState
=========================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Стан кольору трубопровідної суміші (використаний :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Опис
--------

Цей об'єкт використовується :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`Array<class_Array>`\[:ref:`RDPipelineColorBlendStateAttachment<class_RDPipelineColorBlendStateAttachment>`\] | :ref:`attachments<class_RDPipelineColorBlendState_property_attachments>`         | ``[]``                |
   +--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                                                                          | :ref:`blend_constant<class_RDPipelineColorBlendState_property_blend_constant>`   | ``Color(0, 0, 0, 1)`` |
   +--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                                            | :ref:`enable_logic_op<class_RDPipelineColorBlendState_property_enable_logic_op>` | ``false``             |
   +--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`LogicOperation<enum_RenderingDevice_LogicOperation>`                                                         | :ref:`logic_op<class_RDPipelineColorBlendState_property_logic_op>`               | ``0``                 |
   +--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_RDPipelineColorBlendState_property_attachments:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RDPipelineColorBlendStateAttachment<class_RDPipelineColorBlendStateAttachment>`\] **attachments** = ``[]`` :ref:`🔗<class_RDPipelineColorBlendState_property_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_attachments**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RDPipelineColorBlendStateAttachment<class_RDPipelineColorBlendStateAttachment>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RDPipelineColorBlendStateAttachment<class_RDPipelineColorBlendStateAttachment>`\] **get_attachments**\ (\ )

Вкладення, які з'єднуються між собою.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendState_property_blend_constant:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **blend_constant** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_RDPipelineColorBlendState_property_blend_constant>`

.. rst-class:: classref-property-setget

- |void| **set_blend_constant**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_blend_constant**\ (\ )

Константний колір для змішування. Див. також :ref:`RenderingDevice.draw_list_set_blend_constants()<class_RenderingDevice_method_draw_list_set_blend_constants>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendState_property_enable_logic_op:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_logic_op** = ``false`` :ref:`🔗<class_RDPipelineColorBlendState_property_enable_logic_op>`

.. rst-class:: classref-property-setget

- |void| **set_enable_logic_op**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_logic_op**\ (\ )

Якщо ``true``, виконує логічну операцію, визначену в :ref:`logic_op<class_RDPipelineColorBlendState_property_logic_op>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendState_property_logic_op:

.. rst-class:: classref-property

:ref:`LogicOperation<enum_RenderingDevice_LogicOperation>` **logic_op** = ``0`` :ref:`🔗<class_RDPipelineColorBlendState_property_logic_op>`

.. rst-class:: classref-property-setget

- |void| **set_logic_op**\ (\ value\: :ref:`LogicOperation<enum_RenderingDevice_LogicOperation>`\ )
- :ref:`LogicOperation<enum_RenderingDevice_LogicOperation>` **get_logic_op**\ (\ )

Логічна операція, яку потрібно виконати для змішування. Ефективна лише тоді, коли :ref:`enable_logic_op<class_RDPipelineColorBlendState_property_enable_logic_op>` має значення ``true``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
