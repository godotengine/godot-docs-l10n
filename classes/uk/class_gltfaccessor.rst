:github_url: hide

.. _class_GLTFAccessor:

GLTFAccessor
============

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляє засіб доступу glTF.

.. rst-class:: classref-introduction-group

Опис
--------

GLTFAccessor — це структура даних, що представляє ``accessor`` glTF, який можна знайти в масиві ``"accessors"``. Буфер — це блок двійкових даних. Перегляд буфера — це частина буфера. Інструмент доступу — це типізована інтерпретація даних у поданні буфера.

Більшість користувальницьких даних, що зберігаються в glTF, не потребують засобів доступу, лише представлення буфера (див. :ref:`GLTFBufferView<class_GLTFBufferView>`). Аксесери призначені для більш розширених випадків використання, таких як перемежовані сітчасті дані, закодовані для GPU.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Буфери, BufferViews та Accessors в специфікації Hronos glTF <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_005_BuffersBufferViewsAccessors.md>`__

- :doc:`Завантаження та збереження файлів під час виконання <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>`   | :ref:`accessor_type<class_GLTFAccessor_property_accessor_type>`                                 | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`buffer_view<class_GLTFAccessor_property_buffer_view>`                                     | ``-1``                   |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`byte_offset<class_GLTFAccessor_property_byte_offset>`                                     | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` | :ref:`component_type<class_GLTFAccessor_property_component_type>`                               | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`count<class_GLTFAccessor_property_count>`                                                 | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedFloat64Array<class_PackedFloat64Array>`           | :ref:`max<class_GLTFAccessor_property_max>`                                                     | ``PackedFloat64Array()`` |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedFloat64Array<class_PackedFloat64Array>`           | :ref:`min<class_GLTFAccessor_property_min>`                                                     | ``PackedFloat64Array()`` |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`normalized<class_GLTFAccessor_property_normalized>`                                       | ``false``                |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`sparse_count<class_GLTFAccessor_property_sparse_count>`                                   | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`sparse_indices_buffer_view<class_GLTFAccessor_property_sparse_indices_buffer_view>`       | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`sparse_indices_byte_offset<class_GLTFAccessor_property_sparse_indices_byte_offset>`       | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` | :ref:`sparse_indices_component_type<class_GLTFAccessor_property_sparse_indices_component_type>` | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`sparse_values_buffer_view<class_GLTFAccessor_property_sparse_values_buffer_view>`         | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`sparse_values_byte_offset<class_GLTFAccessor_property_sparse_values_byte_offset>`         | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`type<class_GLTFAccessor_property_type>`                                                   |                          |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFAccessor<class_GLTFAccessor>` | :ref:`from_dictionary<class_GLTFAccessor_method_from_dictionary>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| |
   +-----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`     | :ref:`to_dictionary<class_GLTFAccessor_method_to_dictionary>`\ (\ ) |const|                                                        |
   +-----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_GLTFAccessor_GLTFAccessorType:

.. rst-class:: classref-enumeration

enum **GLTFAccessorType**: :ref:`🔗<enum_GLTFAccessor_GLTFAccessorType>`

.. _class_GLTFAccessor_constant_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_SCALAR** = ``0``

Тип аксесуара "SCALAR". Для моделі об'єкта glTF, це можна використовувати для карти на одну плавучу, інту або значення бола, або float array.

.. _class_GLTFAccessor_constant_TYPE_VEC2:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_VEC2** = ``1``

Тип аксесуара "VEC2". Для моделі об'єкта glTF, це карти на "float2", представлені в GlTF JSON як масив двох плавок.

.. _class_GLTFAccessor_constant_TYPE_VEC3:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_VEC3** = ``2``

Тип аксесуара "VEC3". Для моделі об'єкта glTF, це карти на "float3", представлене в glTF JSON як масив трьох плавань.

.. _class_GLTFAccessor_constant_TYPE_VEC4:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_VEC4** = ``3``

Тип аксесуара "VEC4". Для моделі об'єкта glTF, це карти для "float4", представлених в GlTF JSON як масив чотирьох плавань.

.. _class_GLTFAccessor_constant_TYPE_MAT2:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_MAT2** = ``4``

Тип аксесуара "MAT2". Для моделі об'єкта glTF, це карти для "float2x2", представлених в GlTF JSON як масив чотирьох плавок.

.. _class_GLTFAccessor_constant_TYPE_MAT3:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_MAT3** = ``5``

Тип аксесуара "MAT3". Для моделі об'єкта glTF, це карти для "float3x3", представлених в GlTF JSON як масив дев'яти плавок.

.. _class_GLTFAccessor_constant_TYPE_MAT4:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_MAT4** = ``6``

Тип аксесуара "MAT4". Для моделі об'єкта glTF, це карти для "float4x4", представлених в GlTF JSON як масив шестигранних плавань.

.. rst-class:: classref-item-separator

----

.. _enum_GLTFAccessor_GLTFComponentType:

.. rst-class:: classref-enumeration

enum **GLTFComponentType**: :ref:`🔗<enum_GLTFAccessor_GLTFComponentType>`

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_NONE** = ``0``

Тип компонента "НЕМАЄ". Це недійсний тип компонента та використовується для вказівки, що тип компонента не встановлено.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_SIGNED_BYTE:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_SIGNED_BYTE** = ``5120``

Тип компонента «БАЙТ». Значення ``0x1400`` походить від OpenGL. Це означає, що дані зберігаються в 1-байтових або 8-бітових цілих числах зі знаком. Це основна частина специфікації glTF.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_UNSIGNED_BYTE:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_UNSIGNED_BYTE** = ``5121``

Тип компонента "UNSIGNED_BYTE". Значення ``0x1401`` походить від OpenGL. Це означає, що дані зберігаються в 1-байтових або 8-бітових цілих числах без знаку. Це основна частина специфікації glTF.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_SIGNED_SHORT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_SIGNED_SHORT** = ``5122``

Тип компонента "SHORT". Значення ``0x1402`` походить від OpenGL. Це означає, що дані зберігаються у 2-байтових або 16-бітових цілих числах зі знаком. Це основна частина специфікації glTF.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_UNSIGNED_SHORT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_UNSIGNED_SHORT** = ``5123``

Тип компонента "UNSIGNED_SHORT". Значення ``0x1403`` походить від OpenGL. Це означає, що дані зберігаються у 2-байтових або 16-бітових цілих числах без знаку. Це основна частина специфікації glTF.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_SIGNED_INT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_SIGNED_INT** = ``5124``

Тип компонента "INT". Значення ``0x1404`` походить від OpenGL. Це означає, що дані зберігаються в 4-байтових або 32-бітових цілих числах зі знаком. Це НЕ є основною частиною специфікації glTF і може підтримуватися не всіма імпортерами glTF. Може використовуватися деякими розширеннями, зокрема ``KHR_interactivity``.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_UNSIGNED_INT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_UNSIGNED_INT** = ``5125``

Тип компонента "UNSIGNED_INT". Значення ``0x1405`` походить від OpenGL. Це означає, що дані зберігаються в 4-байтових або 32-бітових цілих числах без знаку. Це основна частина специфікації glTF.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_SINGLE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_SINGLE_FLOAT** = ``5126``

Тип компонента "FLOAT". Значення ``0x1406`` походить від OpenGL. Це означає, що дані зберігаються в 4-байтових або 32-бітових числах з плаваючою комою. Це основна частина специфікації glTF.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_DOUBLE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_DOUBLE_FLOAT** = ``5130``

Тип компонента "DOUBLE". Значення ``0x140A`` походить від OpenGL. Це вказує на те, що дані зберігаються у 8-байтових або 64-бітових числах з плаваючою комою. Це НЕ є основною частиною специфікації glTF і може підтримуватися не всіма імпортерами glTF. Може використовуватися деякими розширеннями, зокрема ``KHR_interactivity``.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_HALF_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_HALF_FLOAT** = ``5131``

Тип компонента "HALF_FLOAT". Значення ``0x140B`` походить від OpenGL. Це означає, що дані зберігаються у 2-байтових або 16-бітових числах з плаваючою комою. Це НЕ є основною частиною специфікації glTF і може підтримуватися не всіма імпортерами glTF. Може використовуватися деякими розширеннями, зокрема ``KHR_interactivity``.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_SIGNED_LONG:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_SIGNED_LONG** = ``5134``

Тип компонента "LONG". Значення ``0x140E`` походить від OpenGL. Це означає, що дані зберігаються у 8-байтових або 64-бітових цілих числах зі знаком. Це НЕ є основною частиною специфікації glTF і може підтримуватися не всіма імпортерами glTF. Може використовуватися деякими розширеннями, зокрема ``KHR_interactivity``.

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_UNSIGNED_LONG:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_UNSIGNED_LONG** = ``5135``

Тип компонента "UNSIGNED_LONG". Значення ``0x140F`` походить від OpenGL. Це означає, що дані зберігаються у 8-байтових або 64-бітових цілих числах без знаку. Це НЕ є основною частиною специфікації glTF і може підтримуватися не всіма імпортерами glTF. Може використовуватися деякими розширеннями, зокрема ``KHR_interactivity``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_GLTFAccessor_property_accessor_type:

.. rst-class:: classref-property

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **accessor_type** = ``0`` :ref:`🔗<class_GLTFAccessor_property_accessor_type>`

.. rst-class:: classref-property-setget

- |void| **set_accessor_type**\ (\ value\: :ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>`\ )
- :ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **get_accessor_type**\ (\ )

Тип аксесора glTF у вигляді переліку.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_buffer_view:

.. rst-class:: classref-property

:ref:`int<class_int>` **buffer_view** = ``-1`` :ref:`🔗<class_GLTFAccessor_property_buffer_view>`

.. rst-class:: classref-property-setget

- |void| **set_buffer_view**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_buffer_view**\ (\ )

Індекс буфера переглядає цей доступник. Якщо ``-1``, цей аксесуар не відноситься до будь-якого виду буфера.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_byte_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **byte_offset** = ``0`` :ref:`🔗<class_GLTFAccessor_property_byte_offset>`

.. rst-class:: classref-property-setget

- |void| **set_byte_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_byte_offset**\ (\ )

Зміщення відносно запуску буферного вигляду в байтах.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_component_type:

.. rst-class:: classref-property

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **component_type** = ``0`` :ref:`🔗<class_GLTFAccessor_property_component_type>`

.. rst-class:: classref-property-setget

- |void| **set_component_type**\ (\ value\: :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>`\ )
- :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **get_component_type**\ (\ )

Тип компонента glTF як перелік. Перегляньте :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` для можливих значень. У рамках основної специфікації glTF значення 5125 або "UNSIGNED_INT" не можна використовувати для будь-якого засобу доступу, на який не посилається mesh.primitive.indices.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **count** = ``0`` :ref:`🔗<class_GLTFAccessor_property_count>`

.. rst-class:: classref-property-setget

- |void| **set_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_count**\ (\ )

Кількість елементів, що додаються цим аксесуаром.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_max:

.. rst-class:: classref-property

:ref:`PackedFloat64Array<class_PackedFloat64Array>` **max** = ``PackedFloat64Array()`` :ref:`🔗<class_GLTFAccessor_property_max>`

.. rst-class:: classref-property-setget

- |void| **set_max**\ (\ value\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )
- :ref:`PackedFloat64Array<class_PackedFloat64Array>` **get_max**\ (\ )

Максимальне значення кожного компонента в цьому доступі.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat64Array<class_PackedFloat64Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_min:

.. rst-class:: classref-property

:ref:`PackedFloat64Array<class_PackedFloat64Array>` **min** = ``PackedFloat64Array()`` :ref:`🔗<class_GLTFAccessor_property_min>`

.. rst-class:: classref-property-setget

- |void| **set_min**\ (\ value\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )
- :ref:`PackedFloat64Array<class_PackedFloat64Array>` **get_min**\ (\ )

Мінімальне значення кожного компонента в цьому доступі.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat64Array<class_PackedFloat64Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_normalized:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **normalized** = ``false`` :ref:`🔗<class_GLTFAccessor_property_normalized>`

.. rst-class:: classref-property-setget

- |void| **set_normalized**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_normalized**\ (\ )

Визначає, чи нормалізуються значення цілих даних перед використанням.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **sparse_count** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_count>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sparse_count**\ (\ )

Кількість значень девіаційного доступу, що зберігаються в масиві спара.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_indices_buffer_view:

.. rst-class:: classref-property

:ref:`int<class_int>` **sparse_indices_buffer_view** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_indices_buffer_view>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_indices_buffer_view**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sparse_indices_buffer_view**\ (\ )

Індекс буферу з індексами спаржу. У довідковому буфері MUST не визначені його цілі або байтStride властивості. Перегляд буфера і необов'язково за допомогоюteOffset MUST вирівнюються до компонента Довжина байта.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_indices_byte_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **sparse_indices_byte_offset** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_indices_byte_offset>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_indices_byte_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sparse_indices_byte_offset**\ (\ )

Зміщення відносно запуску буферного вигляду в байтах.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_indices_component_type:

.. rst-class:: classref-property

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **sparse_indices_component_type** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_indices_component_type>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_indices_component_type**\ (\ value\: :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>`\ )
- :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **get_sparse_indices_component_type**\ (\ )

Тип даних індексів як енум. Можливі значення 5121 для "UNSIGNED_BYTE", 5123 для "UNSIGNED_SHORT", а 5125 для "UNSIGNED_INT".

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_values_buffer_view:

.. rst-class:: classref-property

:ref:`int<class_int>` **sparse_values_buffer_view** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_values_buffer_view>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_values_buffer_view**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sparse_values_buffer_view**\ (\ )

Індекс буферу з значеннями спаржу. У довідковому буфері MUST не визначені його цілі або байтStride властивості.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_values_byte_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **sparse_values_byte_offset** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_values_byte_offset>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_values_byte_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sparse_values_byte_offset**\ (\ )

Зміщення відносно початку буферуПерегляд в байтах.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_type:

.. rst-class:: classref-property

:ref:`int<class_int>` **type** :ref:`🔗<class_GLTFAccessor_property_type>`

.. rst-class:: classref-property-setget

- |void| **set_type**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_type**\ (\ )

**Застаріло:** Use :ref:`accessor_type<class_GLTFAccessor_property_accessor_type>` instead.

Тип аксесора glTF як :ref:`int<class_int>`. Можливі значення: ``0`` для "SCALAR", ``1`` для "VEC2", ``2`` для "VEC3", ``3`` для "VEC4", ``4`` для "MAT2", ``5`` для "MAT3" та ``6`` для "MAT4".

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_GLTFAccessor_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFAccessor<class_GLTFAccessor>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFAccessor_method_from_dictionary>`

Створює новий екземпляр GLTFAccessor шляхом розбору заданого :ref:`Dictionary<class_Dictionary>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFAccessor_method_to_dictionary>`

Серіалізує цей екземпляр GLTFAccessor у :ref:`Dictionary<class_Dictionary>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
