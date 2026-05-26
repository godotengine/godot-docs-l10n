:github_url: hide

.. _class_PCKPacker:

PCKPacker
=========

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Создает пакеты, которые можно загрузить в работающий проект.

.. rst-class:: classref-introduction-group

Описание
----------------

**PCKPacker** используется для создания пакетов, которые можно загрузить в работающий проект с помощью :ref:`ProjectSettings.load_resource_pack()<class_ProjectSettings_method_load_resource_pack>`.


.. tabs::

 .. code-tab:: gdscript

    var packer = PCKPacker.new()
    packer.pck_start("test.pck")
    packer.add_file("res://text.txt", "text.txt")
    packer.flush()

 .. code-tab:: csharp

    var packer = new PckPacker();
    packer.PckStart("test.pck");
    packer.AddFile("res://text.txt", "text.txt");
    packer.Flush();



Вышеуказанный **PCKPacker** создает пакет ``test.pck``, затем добавляет файл с именем ``text.txt`` в корень пакета.

\ **Примечание:** PCK — это собственный формат файла пакета Godot. Чтобы создать архивы ZIP, которые может прочитать любая программа, используйте вместо этого :ref:`ZIPPacker<class_ZIPPacker>`.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`add_file<class_PCKPacker_method_add_file>`\ (\ target_path\: :ref:`String<class_String>`, source_path\: :ref:`String<class_String>`, encrypt\: :ref:`bool<class_bool>` = false\ )                                                                                                               |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`add_file_from_buffer<class_PCKPacker_method_add_file_from_buffer>`\ (\ target_path\: :ref:`String<class_String>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`, encrypt\: :ref:`bool<class_bool>` = false\ )                                                                            |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`add_file_removal<class_PCKPacker_method_add_file_removal>`\ (\ target_path\: :ref:`String<class_String>`\ )                                                                                                                                                                                     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`flush<class_PCKPacker_method_flush>`\ (\ verbose\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                                                                           |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`pck_start<class_PCKPacker_method_pck_start>`\ (\ pck_path\: :ref:`String<class_String>`, alignment\: :ref:`int<class_int>` = 32, key\: :ref:`String<class_String>` = "0000000000000000000000000000000000000000000000000000000000000000", encrypt_directory\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_PCKPacker_method_add_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_file**\ (\ target_path\: :ref:`String<class_String>`, source_path\: :ref:`String<class_String>`, encrypt\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PCKPacker_method_add_file>`

Добавляет файл ``source_path`` в текущий пакет PCK по внутреннему пути ``target_path``. Префикс ``res://`` для ``target_path`` является необязательным и удаляется внутренне. Содержимое файла немедленно записывается в PCK.

.. rst-class:: classref-item-separator

----

.. _class_PCKPacker_method_add_file_from_buffer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_file_from_buffer**\ (\ target_path\: :ref:`String<class_String>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`, encrypt\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PCKPacker_method_add_file_from_buffer>`

Adds the ``data`` to the current PCK package at the ``target_path`` internal path. The ``res://`` prefix for ``target_path`` is optional and stripped internally. File content is immediately written to the PCK.

.. rst-class:: classref-item-separator

----

.. _class_PCKPacker_method_add_file_removal:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_file_removal**\ (\ target_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PCKPacker_method_add_file_removal>`

Регистрирует удаление файла внутреннего пути ``target_path`` в PCK. Это в основном используется для исправлений. Если файл по этому пути был загружен из предыдущего PCK, он будет удален. Префикс ``res://`` для ``target_path`` является необязательным и удаляется внутренне.

.. rst-class:: classref-item-separator

----

.. _class_PCKPacker_method_flush:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **flush**\ (\ verbose\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PCKPacker_method_flush>`

Записывает каталог файлов и закрывает PCK. Если ``verbose`` равен ``true``, список добавленных файлов будет выведен на консоль для упрощения отладки.

\ **Примечание:** **PCKPacker** автоматически сбрасывается при освобождении, что происходит, когда он выходит из области действия или когда ему присваивается ``null``. В C# ссылка должна быть удалена после использования либо с помощью оператора ``using``, либо путем прямого вызова метода ``Dispose``.

.. rst-class:: classref-item-separator

----

.. _class_PCKPacker_method_pck_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pck_start**\ (\ pck_path\: :ref:`String<class_String>`, alignment\: :ref:`int<class_int>` = 32, key\: :ref:`String<class_String>` = "0000000000000000000000000000000000000000000000000000000000000000", encrypt_directory\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PCKPacker_method_pck_start>`

Создает новый файл PCK по пути к файлу ``pck_path``. Расширение файла ``.pck`` не добавляется автоматически, поэтому оно должно быть частью ``pck_path`` (хотя это не обязательно).

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
