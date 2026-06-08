:github_url: hide

.. _class_RDShaderFile:

RDShaderFile
============

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Упорядкований шейдер файл у форматі SPIR-V (використаний :ref:`RenderingDevice<class_RenderingDevice>`). Не плутати з Боготом у себе :ref:`Shader<class_Shader>`.

.. rst-class:: classref-introduction-group

Опис
--------

Порівняти файл шейдера в форматі SPIR-V.

Дивитися також :ref:`RDShaderSource<class_RDShaderSource>`. **RDShaderFile** призначений для використання з API :ref:`RenderingDevice<class_RenderingDevice>`. Не слід плутати з власними ресурсами Godot, що це те, що різні вершини Godot використовують для високорівневого тіні.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`base_error<class_RDShaderFile_property_base_error>` | ``""`` |
   +-----------------------------+-----------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`                        | :ref:`get_spirv<class_RDShaderFile_method_get_spirv>`\ (\ version\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                     |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_version_list<class_RDShaderFile_method_get_version_list>`\ (\ ) |const|                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bytecode<class_RDShaderFile_method_set_bytecode>`\ (\ bytecode\: :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`, version\: :ref:`StringName<class_StringName>` = &""\ ) |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_RDShaderFile_property_base_error:

.. rst-class:: classref-property

:ref:`String<class_String>` **base_error** = ``""`` :ref:`🔗<class_RDShaderFile_property_base_error>`

.. rst-class:: classref-property-setget

- |void| **set_base_error**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_base_error**\ (\ )

Повідомлення про помилку бази, яка вказує на помилки, не пов'язані з конкретним етапом шейдера, якщо не спрощує. Якщо порожня, точна компіляція не обов'язково успішна (перевірка :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_RDShaderFile_method_get_spirv:

.. rst-class:: classref-method

:ref:`RDShaderSPIRV<class_RDShaderSPIRV>` **get_spirv**\ (\ version\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_RDShaderFile_method_get_spirv>`

Повертає проміжне представлення SPIR-V для вказаного шейдера ``version``.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderFile_method_get_version_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_version_list**\ (\ ) |const| :ref:`🔗<class_RDShaderFile_method_get_version_list>`

Повертає список складених версій для цього шейдера.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderFile_method_set_bytecode:

.. rst-class:: classref-method

|void| **set_bytecode**\ (\ bytecode\: :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`, version\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_RDShaderFile_method_set_bytecode>`

Налаштовує SPIR-V ``bytecode``, який буде скомпільовано за вказаною ``version``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
