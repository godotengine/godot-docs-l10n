:github_url: hide

.. _class_RDPipelineColorBlendStateAttachment:

RDPipelineColorBlendStateAttachment
===================================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Підвіска для трубопровідної кольорової суміші (використані :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Опис
--------

Контролює, як виконується змішування вихідних і цільових фрагментів під час використання :ref:`RenderingDevice<class_RenderingDevice>`. 

Для довідки, ось як звичайні режими змішування, призначені для користувача, реалізовані в 2D рендерері Godot: 

\ **Мікс:** 

::
 
    var attachment = RDPipelineColorBlendStateAttachment.new()
    attachment.enable_blend = ture 
    attachment.color_blend_op = RenderingDevice.BLEND_OP_ADD 
    attachment.src_color_blend_factor = RenderingDevice.BLEND_FACTOR_SRC_ALPHA 
    attachment.dst_color_blend_factor = RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA 
    attachment.alpha_blend_op = RenderingDevice.BLEND_OP_ADD 
    attachment.src_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE 
    attachment.dst_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA  

\ **Додати:** 

::
 
    var attachment = RDPipelineColorBlendStateAttachment.new()
    attachment.enable_blend = ture 
    attachment.alpha_blend_op = RenderingDevice.BLEND_OP_ADD 
    attachment.color_blend_op = RenderingDevice.BLEND_OP_ADD 
    attachment.src_color_blend_factor = RenderingDevice.BLEND_FACTOR_SRC_ALPHA 
    attachment.dst_color_blend_factor = RenderingDevice.BLEND_FACTOR_ONE 
    attachment.src_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_SRC_ALPHA 
    attachment.dst_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE  

\ **Відняти:** 

::
 
    var attachment = RDPipelineColorBlendStateAttachment.new()
    attachment.enable_blend = ture 
    attachment.alpha_blend_op = RenderingDevice.BLEND_OP_REVERSE_SUBTRACT 
    attachment.color_blend_op = RenderingDevice.BLEND_OP_REVERSE_SUBTRACT 
    attachment.src_color_blend_factor = RenderingDevice.BLEND_FACTOR_SRC_ALPHA 
    attachment.dst_color_blend_factor = RenderingDevice.BLEND_FACTOR_ONE 
    attachment.src_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_SRC_ALPHA 
    attachment.dst_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE  

\ **Помножити:** 

::
 
    var attachment = RDPipelineColorBlendStateAttachment.new()
    attachment.enable_blend = ture 
    attachment.alpha_blend_op = RenderingDevice.BLEND_OP_ADD 
    attachment.color_blend_op = RenderingDevice.BLEND_OP_ADD 
    attachment.src_color_blend_factor = RenderingDevice.BLEND_FACTOR_DST_COLOR 
    attachment.dst_color_blend_factor = RenderingDevice.BLEND_FACTOR_ZERO 
    attachment.src_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_DST_ALPHA 
    attachment.dst_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ZERO  

\ **Попередньо помножена альфа:** 

::
 
    var attachment = RDPipelineColorBlendStateAttachment.new()
    attachment.enable_blend = ture 
    attachment.alpha_blend_op = RenderingDevice.BLEND_OP_ADD 
    attachment.color_blend_op = RenderingDevice.BLEND_OP_ADD 
    attachment.src_color_blend_factor = RenderingDevice.BLEND_FACTOR_ONE 
    attachment.dst_color_blend_factor = RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA 
    attachment.src_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE 
    attachment.dst_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA 

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`BlendOperation<enum_RenderingDevice_BlendOperation>` | :ref:`alpha_blend_op<class_RDPipelineColorBlendStateAttachment_property_alpha_blend_op>`                 | ``0``     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`BlendOperation<enum_RenderingDevice_BlendOperation>` | :ref:`color_blend_op<class_RDPipelineColorBlendStateAttachment_property_color_blend_op>`                 | ``0``     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`       | :ref:`dst_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_alpha_blend_factor>` | ``0``     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`       | :ref:`dst_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_color_blend_factor>` | ``0``     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`enable_blend<class_RDPipelineColorBlendStateAttachment_property_enable_blend>`                     | ``false`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`       | :ref:`src_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_alpha_blend_factor>` | ``0``     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`       | :ref:`src_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_color_blend_factor>` | ``0``     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`write_a<class_RDPipelineColorBlendStateAttachment_property_write_a>`                               | ``true``  |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`write_b<class_RDPipelineColorBlendStateAttachment_property_write_b>`                               | ``true``  |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`write_g<class_RDPipelineColorBlendStateAttachment_property_write_g>`                               | ``true``  |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`write_r<class_RDPipelineColorBlendStateAttachment_property_write_r>`                               | ``true``  |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------+--------------------------------------------------------------------------------------+
   | |void| | :ref:`set_as_mix<class_RDPipelineColorBlendStateAttachment_method_set_as_mix>`\ (\ ) |
   +--------+--------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_RDPipelineColorBlendStateAttachment_property_alpha_blend_op:

.. rst-class:: classref-property

:ref:`BlendOperation<enum_RenderingDevice_BlendOperation>` **alpha_blend_op** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_alpha_blend_op>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_blend_op**\ (\ value\: :ref:`BlendOperation<enum_RenderingDevice_BlendOperation>`\ )
- :ref:`BlendOperation<enum_RenderingDevice_BlendOperation>` **get_alpha_blend_op**\ (\ )

Режим суміші для використання альфа-каналу.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_color_blend_op:

.. rst-class:: classref-property

:ref:`BlendOperation<enum_RenderingDevice_BlendOperation>` **color_blend_op** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_color_blend_op>`

.. rst-class:: classref-property-setget

- |void| **set_color_blend_op**\ (\ value\: :ref:`BlendOperation<enum_RenderingDevice_BlendOperation>`\ )
- :ref:`BlendOperation<enum_RenderingDevice_BlendOperation>` **get_color_blend_op**\ (\ )

Режим блендера для використання червоно-зелених/блакитних кольорових каналів.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_dst_alpha_blend_factor:

.. rst-class:: classref-property

:ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **dst_alpha_blend_factor** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_dst_alpha_blend_factor>`

.. rst-class:: classref-property-setget

- |void| **set_dst_alpha_blend_factor**\ (\ value\: :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`\ )
- :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **get_dst_alpha_blend_factor**\ (\ )

Контролює, як визначається коефіцієнт суміші для альфа-каналу на основі фрагментів призначення.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_dst_color_blend_factor:

.. rst-class:: classref-property

:ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **dst_color_blend_factor** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_dst_color_blend_factor>`

.. rst-class:: classref-property-setget

- |void| **set_dst_color_blend_factor**\ (\ value\: :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`\ )
- :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **get_dst_color_blend_factor**\ (\ )

Контроль якості блендера для кольорових каналів визначається на основі фрагментів призначення.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_enable_blend:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_blend** = ``false`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_enable_blend>`

.. rst-class:: classref-property-setget

- |void| **set_enable_blend**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_blend**\ (\ )

Якщо ``true``, виконується змішування між джерелом та призначенням відповідно до факторів, визначених у :ref:`src_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_color_blend_factor>`, :ref:`dst_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_color_blend_factor>`, :ref:`src_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_alpha_blend_factor>` та :ref:`dst_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_alpha_blend_factor>`. Режими змішування :ref:`color_blend_op<class_RDPipelineColorBlendStateAttachment_property_color_blend_op>` та :ref:`alpha_blend_op<class_RDPipelineColorBlendStateAttachment_property_alpha_blend_op>` також враховуються, при цьому :ref:`write_r<class_RDPipelineColorBlendStateAttachment_property_write_r>`, :ref:`write_g<class_RDPipelineColorBlendStateAttachment_property_write_g>`, :ref:`write_b<class_RDPipelineColorBlendStateAttachment_property_write_b>` та :ref:`write_a<class_RDPipelineColorBlendStateAttachment_property_write_a>` контролюють вихід.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_src_alpha_blend_factor:

.. rst-class:: classref-property

:ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **src_alpha_blend_factor** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_src_alpha_blend_factor>`

.. rst-class:: classref-property-setget

- |void| **set_src_alpha_blend_factor**\ (\ value\: :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`\ )
- :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **get_src_alpha_blend_factor**\ (\ )

Контролює, як визначається коефіцієнт суміші для альфа-каналу на основі фрагментів джерела.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_src_color_blend_factor:

.. rst-class:: classref-property

:ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **src_color_blend_factor** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_src_color_blend_factor>`

.. rst-class:: classref-property-setget

- |void| **set_src_color_blend_factor**\ (\ value\: :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`\ )
- :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **get_src_color_blend_factor**\ (\ )

Контроль якості блендера для кольорових каналів визначається на основі фрагментів джерела.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_write_a:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **write_a** = ``true`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_write_a>`

.. rst-class:: classref-property-setget

- |void| **set_write_a**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_write_a**\ (\ )

Якщо ``true``, напишіть новий альфа-канал до кінцевого результату.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_write_b:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **write_b** = ``true`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_write_b>`

.. rst-class:: classref-property-setget

- |void| **set_write_b**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_write_b**\ (\ )

Якщо ``true``, напишіть новий синій колірний канал до кінцевого результату.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_write_g:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **write_g** = ``true`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_write_g>`

.. rst-class:: classref-property-setget

- |void| **set_write_g**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_write_g**\ (\ )

Якщо ``true``, напишіть новий зелений колірний канал до кінцевого результату.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_write_r:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **write_r** = ``true`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_write_r>`

.. rst-class:: classref-property-setget

- |void| **set_write_r**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_write_r**\ (\ )

Якщо ``true``, напишіть новий червоний колірний канал до кінцевого результату.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_RDPipelineColorBlendStateAttachment_method_set_as_mix:

.. rst-class:: classref-method

|void| **set_as_mix**\ (\ ) :ref:`🔗<class_RDPipelineColorBlendStateAttachment_method_set_as_mix>`

Зручний метод для виконання стандартного змішування з прямою (непопередньо помноженою) альфою. Встановлює :ref:`enable_blend<class_RDPipelineColorBlendStateAttachment_property_enable_blend>` на ``true``, :ref:`src_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_color_blend_factor>` на :ref:`RenderingDevice.BLEND_FACTOR_SRC_ALPHA<class_RenderingDevice_constant_BLEND_FACTOR_SRC_ALPHA>`, :ref:`dst_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_color_blend_factor>` на :ref:`RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA<class_RenderingDevice_constant_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA>`, :ref:`src_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_alpha_blend_factor>` на :ref:`RenderingDevice.BLEND_FACTOR_SRC_ALPHA<class_RenderingDevice_constant_BLEND_FACTOR_SRC_ALPHA>` та :ref:`dst_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_alpha_blend_factor>` на :ref:`RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA<class_RenderingDevice_constant_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
