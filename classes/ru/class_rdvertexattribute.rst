:github_url: hide

.. _class_RDVertexAttribute:

RDVertexAttribute
=================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Атрибут вершины (используется :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Описание
----------------

Этот объект используется :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`                                        | :ref:`binding<class_RDVertexAttribute_property_binding>`     | ``4294967295`` |
   +--------------------------------------------------------------+--------------------------------------------------------------+----------------+
   | :ref:`DataFormat<enum_RenderingDevice_DataFormat>`           | :ref:`format<class_RDVertexAttribute_property_format>`       | ``232``        |
   +--------------------------------------------------------------+--------------------------------------------------------------+----------------+
   | :ref:`VertexFrequency<enum_RenderingDevice_VertexFrequency>` | :ref:`frequency<class_RDVertexAttribute_property_frequency>` | ``0``          |
   +--------------------------------------------------------------+--------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`                                        | :ref:`location<class_RDVertexAttribute_property_location>`   | ``0``          |
   +--------------------------------------------------------------+--------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`                                        | :ref:`offset<class_RDVertexAttribute_property_offset>`       | ``0``          |
   +--------------------------------------------------------------+--------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`                                        | :ref:`stride<class_RDVertexAttribute_property_stride>`       | ``0``          |
   +--------------------------------------------------------------+--------------------------------------------------------------+----------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_RDVertexAttribute_property_binding:

.. rst-class:: classref-property

:ref:`int<class_int>` **binding** = ``4294967295`` :ref:`🔗<class_RDVertexAttribute_property_binding>`

.. rst-class:: classref-property-setget

- |void| **set_binding**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_binding**\ (\ )

Индекс буфера в массиве вершинных буферов для привязки этого атрибута вершины. Если установлено значение ``-1``, по умолчанию используется индекс атрибута.

\ **Примечание:** Нельзя смешивать привязку явно назначенных атрибутов с неявно назначенными (т.е. ``-1``). Либо все атрибуты должны иметь привязку, установленную на ``-1``, либо все должны иметь явную привязку.

.. rst-class:: classref-item-separator

----

.. _class_RDVertexAttribute_property_format:

.. rst-class:: classref-property

:ref:`DataFormat<enum_RenderingDevice_DataFormat>` **format** = ``232`` :ref:`🔗<class_RDVertexAttribute_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )
- :ref:`DataFormat<enum_RenderingDevice_DataFormat>` **get_format**\ (\ )

Способ интерпретации данных этого атрибута при отправке в шейдер.

.. rst-class:: classref-item-separator

----

.. _class_RDVertexAttribute_property_frequency:

.. rst-class:: classref-property

:ref:`VertexFrequency<enum_RenderingDevice_VertexFrequency>` **frequency** = ``0`` :ref:`🔗<class_RDVertexAttribute_property_frequency>`

.. rst-class:: classref-property-setget

- |void| **set_frequency**\ (\ value\: :ref:`VertexFrequency<enum_RenderingDevice_VertexFrequency>`\ )
- :ref:`VertexFrequency<enum_RenderingDevice_VertexFrequency>` **get_frequency**\ (\ )

Скорость, с которой этот атрибут извлекается из буфера вершин.

.. rst-class:: classref-item-separator

----

.. _class_RDVertexAttribute_property_location:

.. rst-class:: classref-property

:ref:`int<class_int>` **location** = ``0`` :ref:`🔗<class_RDVertexAttribute_property_location>`

.. rst-class:: classref-property-setget

- |void| **set_location**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_location**\ (\ )

Местоположение в шейдере, к которому привязан этот атрибут.

.. rst-class:: classref-item-separator

----

.. _class_RDVertexAttribute_property_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **offset** = ``0`` :ref:`🔗<class_RDVertexAttribute_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_offset**\ (\ )

Количество байтов между началом буфера вершин и первым экземпляром этого атрибута.

.. rst-class:: classref-item-separator

----

.. _class_RDVertexAttribute_property_stride:

.. rst-class:: classref-property

:ref:`int<class_int>` **stride** = ``0`` :ref:`🔗<class_RDVertexAttribute_property_stride>`

.. rst-class:: classref-property-setget

- |void| **set_stride**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stride**\ (\ )

Количество байтов между началами последовательных экземпляров этого атрибута.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
