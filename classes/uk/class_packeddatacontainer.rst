:github_url: hide

.. _class_PackedDataContainer:

PackedDataContainer
===================

**Застаріло:** Use :ref:`@GlobalScope.var_to_bytes()<class_@GlobalScope_method_var_to_bytes>` or :ref:`FileAccess.store_var()<class_FileAccess_method_store_var>` instead. To enable data compression, use :ref:`PackedByteArray.compress()<class_PackedByteArray_method_compress>` or :ref:`FileAccess.open_compressed()<class_FileAccess_method_open_compressed>`.

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Ефективно пакує та серіалізує :ref:`Array<class_Array>` або :ref:`Dictionary<class_Dictionary>`.

.. rst-class:: classref-introduction-group

Опис
--------

**PackedDataContainer** можна використовувати для ефективного зберігання даних із нетипових контейнерів. Дані упаковуються в необроблені байти та можуть бути збережені у файлі. Таким чином можна зберігати лише :ref:`Array<class_Array>` і :ref:`Dictionary<class_Dictionary>`. 

Ви можете отримати дані шляхом ітерації контейнера, який працюватиме так, ніби ітерації самих упакованих даних. Якщо упакований контейнер є :ref:`Dictionary<class_Dictionary>`, дані можна отримати за іменами ключів (лише :ref:`String<class_String>`/:ref:`StringName<class_StringName>`). 

::
 
    var data = { "key": "value", "another_key": 123, "lock": Vector2() } 
    var packed = PackedDataContainer.new() 
    packed.pack(data) 
    ResourceSaver.save(packed, "packed_data.res")  

::
 
    var container = load("packed_data.res") 
    for key in container: 
        prints(key, container[key])  

Print: 

.. code:: text
 
    key value 
    lock (0, 0) 
    another_key 123  

Вкладені контейнери будуть упаковані рекурсивно. Під час ітерації вони повертатимуться як :ref:`PackedDataContainerRef<class_PackedDataContainerRef>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`pack<class_PackedDataContainer_method_pack>`\ (\ value\: :ref:`Variant<class_Variant>`\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`size<class_PackedDataContainer_method_size>`\ (\ ) |const|                                |
   +---------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_PackedDataContainer_method_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pack**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_PackedDataContainer_method_pack>`

Пакети даної ємності в бінарне представництво. Вартість ``параметра`` повинна бути або :ref:`Array<class_Array>` або :ref:`Dictionary<class_Dictionary>`, будь-який інший тип призведе до недійсної помилки даних.

\ **Примітка:** Підсумкові дзвінки до цього способу перезаписати існуючі дані.

.. rst-class:: classref-item-separator

----

.. _class_PackedDataContainer_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedDataContainer_method_size>`

Повертає розмір упакованого контейнера (див. :ref:`Array.size()<class_Array_method_size>` та :ref:`Dictionary.size()<class_Dictionary_method_size>`).

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
