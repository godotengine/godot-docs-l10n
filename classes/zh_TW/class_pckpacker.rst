:github_url: hide

.. _class_PCKPacker:

PCKPacker
=========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

建立可以載入到正在運作的專案中的包。

.. rst-class:: classref-introduction-group

說明
----

The **PCKPacker** is used to create packages that can be loaded into a running project using :ref:`ProjectSettings.load_resource_pack()<class_ProjectSettings_method_load_resource_pack>`.


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



The above **PCKPacker** creates package ``test.pck``, then adds a file named ``text.txt`` at the root of the package.

\ **Note:** PCK is Godot's own pack file format. To create ZIP archives that can be read by any program, use :ref:`ZIPPacker<class_ZIPPacker>` instead.

.. rst-class:: classref-reftable-group

方法
----

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

方法說明
--------

.. _class_PCKPacker_method_add_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_file**\ (\ target_path\: :ref:`String<class_String>`, source_path\: :ref:`String<class_String>`, encrypt\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PCKPacker_method_add_file>`

Adds the ``source_path`` file to the current PCK package at the ``target_path`` internal path. The ``res://`` prefix for ``target_path`` is optional and stripped internally. File content is immediately written to the PCK.

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

Registers a file removal of the ``target_path`` internal path to the PCK. This is mainly used for patches. If the file at this path has been loaded from a previous PCK, it will be removed. The ``res://`` prefix for ``target_path`` is optional and stripped internally.

.. rst-class:: classref-item-separator

----

.. _class_PCKPacker_method_flush:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **flush**\ (\ verbose\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PCKPacker_method_flush>`

Writes the file directory and closes the PCK. If ``verbose`` is ``true``, a list of files added will be printed to the console for easier debugging.

\ **Note:** **PCKPacker** will automatically flush when it's freed, which happens when it goes out of scope or when it gets assigned with ``null``. In C# the reference must be disposed after use, either with the ``using`` statement or by calling the ``Dispose`` method directly.

.. rst-class:: classref-item-separator

----

.. _class_PCKPacker_method_pck_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pck_start**\ (\ pck_path\: :ref:`String<class_String>`, alignment\: :ref:`int<class_int>` = 32, key\: :ref:`String<class_String>` = "0000000000000000000000000000000000000000000000000000000000000000", encrypt_directory\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PCKPacker_method_pck_start>`

Creates a new PCK file at the file path ``pck_path``. The ``.pck`` file extension isn't added automatically, so it should be part of ``pck_path`` (even though it's not required).

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
