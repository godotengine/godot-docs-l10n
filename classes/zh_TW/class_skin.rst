:github_url: hide

.. _class_Skin:

Skin
====

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A list of inverse bind poses and corresponding bones.

.. rst-class:: classref-introduction-group

說明
----

**Skin** contains a list of bind pose matrices and a list of either bone names if bones are named, or bone indices if bones are not named. The bind pose matrix, also called offset matrix or inverse bind matrix, is a :ref:`Transform3D<class_Transform3D>` offset that is multiplied with a bone's transform to get from vertex space to bone space.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`add_bind<class_Skin_method_add_bind>`\ (\ bone\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`\ )                   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`add_named_bind<class_Skin_method_add_named_bind>`\ (\ name\: :ref:`String<class_String>`, pose\: :ref:`Transform3D<class_Transform3D>`\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`clear_binds<class_Skin_method_clear_binds>`\ (\ )                                                                                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_bind_bone<class_Skin_method_get_bind_bone>`\ (\ bind_index\: :ref:`int<class_int>`\ ) |const|                                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_bind_count<class_Skin_method_get_bind_count>`\ (\ ) |const|                                                                           |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`   | :ref:`get_bind_name<class_Skin_method_get_bind_name>`\ (\ bind_index\: :ref:`int<class_int>`\ ) |const|                                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_bind_pose<class_Skin_method_get_bind_pose>`\ (\ bind_index\: :ref:`int<class_int>`\ ) |const|                                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_bind_bone<class_Skin_method_set_bind_bone>`\ (\ bind_index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_bind_count<class_Skin_method_set_bind_count>`\ (\ bind_count\: :ref:`int<class_int>`\ )                                               |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_bind_name<class_Skin_method_set_bind_name>`\ (\ bind_index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ )     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_bind_pose<class_Skin_method_set_bind_pose>`\ (\ bind_index\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`\ )   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Skin_method_add_bind:

.. rst-class:: classref-method

|void| **add_bind**\ (\ bone\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Skin_method_add_bind>`

Adds a bind pose matrix of ``pose`` and associated bone index ``bone`` to the bind pose list and increases the bind count by 1.

.. rst-class:: classref-item-separator

----

.. _class_Skin_method_add_named_bind:

.. rst-class:: classref-method

|void| **add_named_bind**\ (\ name\: :ref:`String<class_String>`, pose\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Skin_method_add_named_bind>`

Like :ref:`add_bind()<class_Skin_method_add_bind>` but adds a bone ``name`` instead of a bone index.

.. rst-class:: classref-item-separator

----

.. _class_Skin_method_clear_binds:

.. rst-class:: classref-method

|void| **clear_binds**\ (\ ) :ref:`🔗<class_Skin_method_clear_binds>`

Clears the bind pose list.

.. rst-class:: classref-item-separator

----

.. _class_Skin_method_get_bind_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bind_bone**\ (\ bind_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skin_method_get_bind_bone>`

Returns the bone index associated with bind pose ``bind_index``.

.. rst-class:: classref-item-separator

----

.. _class_Skin_method_get_bind_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bind_count**\ (\ ) |const| :ref:`🔗<class_Skin_method_get_bind_count>`

Returns the length of the bind pose list.

.. rst-class:: classref-item-separator

----

.. _class_Skin_method_get_bind_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bind_name**\ (\ bind_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skin_method_get_bind_name>`

Returns the bone name associated with bind pose ``bind_index``.

.. rst-class:: classref-item-separator

----

.. _class_Skin_method_get_bind_pose:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_bind_pose**\ (\ bind_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skin_method_get_bind_pose>`

Returns the bind pose matrix at ``bind_index``.

.. rst-class:: classref-item-separator

----

.. _class_Skin_method_set_bind_bone:

.. rst-class:: classref-method

|void| **set_bind_bone**\ (\ bind_index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skin_method_set_bind_bone>`

Sets the bone index of bind pose ``bind_index`` to the given index ``bone``.

.. rst-class:: classref-item-separator

----

.. _class_Skin_method_set_bind_count:

.. rst-class:: classref-method

|void| **set_bind_count**\ (\ bind_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skin_method_set_bind_count>`

Resizes the bind pose list to a length of ``bind_count``.

.. rst-class:: classref-item-separator

----

.. _class_Skin_method_set_bind_name:

.. rst-class:: classref-method

|void| **set_bind_name**\ (\ bind_index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Skin_method_set_bind_name>`

Sets the name of the bone in bind pose ``bind_index`` to ``name``.

.. rst-class:: classref-item-separator

----

.. _class_Skin_method_set_bind_pose:

.. rst-class:: classref-method

|void| **set_bind_pose**\ (\ bind_index\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Skin_method_set_bind_pose>`

Sets the bind pose ``bind_index`` with the given offset matrix ``pose``.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
