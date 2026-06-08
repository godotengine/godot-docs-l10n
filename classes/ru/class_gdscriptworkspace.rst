:github_url: hide

.. _class_GDScriptWorkspace:

GDScriptWorkspace
=================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Функциональность языкового сервера, связанная с рабочим пространством.

.. rst-class:: classref-introduction-group

Описание
----------------

Предоставляет функциональность языкового сервера, связанную с рабочим пространством.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`apply_new_signal<class_GDScriptWorkspace_method_apply_new_signal>`\ (\ obj\: :ref:`Object<class_Object>`, function\: :ref:`String<class_String>`, args\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`didDeleteFiles<class_GDScriptWorkspace_method_didDeleteFiles>`\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ )                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`   | :ref:`generate_script_api<class_GDScriptWorkspace_method_generate_script_api>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_file_path<class_GDScriptWorkspace_method_get_file_path>`\ (\ uri\: :ref:`String<class_String>`\ )                                                                                                         |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_file_uri<class_GDScriptWorkspace_method_get_file_uri>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                                                                                                  |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`parse_local_script<class_GDScriptWorkspace_method_parse_local_script>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`parse_script<class_GDScriptWorkspace_method_parse_script>`\ (\ path\: :ref:`String<class_String>`, content\: :ref:`String<class_String>`\ )                                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`publish_diagnostics<class_GDScriptWorkspace_method_publish_diagnostics>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_GDScriptWorkspace_method_apply_new_signal:

.. rst-class:: classref-method

|void| **apply_new_signal**\ (\ obj\: :ref:`Object<class_Object>`, function\: :ref:`String<class_String>`, args\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_apply_new_signal>`

**Устарело:** Might result in unwanted side effects for connected clients.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_didDeleteFiles:

.. rst-class:: classref-method

|void| **didDeleteFiles**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_didDeleteFiles>`

**Устарело:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_generate_script_api:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **generate_script_api**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_generate_script_api>`

Возвращает интерфейс скрипта в машиночитаемом формате.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_get_file_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_path**\ (\ uri\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_get_file_path>`

Преобразует URI в путь к файлу.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_get_file_uri:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_uri**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_GDScriptWorkspace_method_get_file_uri>`

Преобразует путь к файлу в URI.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_parse_local_script:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse_local_script**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_parse_local_script>`

**Устарело:** Might result in unwanted side effects for connected clients.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_parse_script:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse_script**\ (\ path\: :ref:`String<class_String>`, content\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_parse_script>`

**Устарело:** Might result in unwanted side effects for connected clients.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_publish_diagnostics:

.. rst-class:: classref-method

|void| **publish_diagnostics**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_publish_diagnostics>`

**Устарело:** Might result in unwanted side effects for connected clients.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
