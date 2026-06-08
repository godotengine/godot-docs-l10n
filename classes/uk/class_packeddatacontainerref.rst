:github_url: hide

.. _class_PackedDataContainerRef:

PackedDataContainerRef
======================

**Застаріло:** Use :ref:`@GlobalScope.var_to_bytes()<class_@GlobalScope_method_var_to_bytes>` or :ref:`FileAccess.store_var()<class_FileAccess_method_store_var>` instead. To enable data compression, use :ref:`PackedByteArray.compress()<class_PackedByteArray_method_compress>` or :ref:`FileAccess.open_compressed()<class_FileAccess_method_open_compressed>`.

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Внутрішній клас, який використовується :ref:`PackedDataContainer<class_PackedDataContainer>`, щоб упакувати масиви та словники.

.. rst-class:: classref-introduction-group

Опис
--------

Під час пакування вкладених контейнерів за допомогою :ref:`PackedDataContainer<class_PackedDataContainer>` вони рекурсивно запаковуються в **PackedDataContainerRef** (застосовується лише до :ref:`Array<class_Array>` і :ref:`Dictionary<class_Dictionary>`). Їхні дані можна отримати так само, як і з :ref:`PackedDataContainer<class_PackedDataContainer>`. 

::
 
    var packed = PackedDataContainer.new() 
    packed.pack([1, 2, 3, ["nested1", "nested2"], 4, 5, 6]) 

    for element in packed: 
        if element is PackedDataContainerRef: 
            for subelement in element: 
                print("::", піделемент) 
        else: 
            print(element)  

Print: 

.. code:: text
 
    1
    2
    3
    :: nested1 
    :: nested2 
    4
    5
    6

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`size<class_PackedDataContainerRef_method_size>`\ (\ ) |const| |
   +-----------------------+---------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_PackedDataContainerRef_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedDataContainerRef_method_size>`

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
