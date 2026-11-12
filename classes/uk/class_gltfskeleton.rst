:github_url: hide

.. _class_GLTFSkeleton:

GLTFSkeleton
============

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Завантаження та збереження файлів під час виконання <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`joints<class_GLTFSkeleton_property_joints>` | ``PackedInt32Array()`` |
   +-------------------------------------------------+---------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`roots<class_GLTFSkeleton_property_roots>`   | ``PackedInt32Array()`` |
   +-------------------------------------------------+---------------------------------------------------+------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BoneAttachment3D<class_BoneAttachment3D>`          | :ref:`get_bone_attachment<class_GLTFSkeleton_method_get_bone_attachment>`\ (\ idx\: :ref:`int<class_int>`\ )                                       |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`get_bone_attachment_count<class_GLTFSkeleton_method_get_bone_attachment_count>`\ (\ )                                                        |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                      | :ref:`get_godot_bone_node<class_GLTFSkeleton_method_get_godot_bone_node>`\ (\ )                                                                    |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>`                      | :ref:`get_godot_skeleton<class_GLTFSkeleton_method_get_godot_skeleton>`\ (\ )                                                                      |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`String<class_String>`\] | :ref:`get_unique_names<class_GLTFSkeleton_method_get_unique_names>`\ (\ )                                                                          |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_godot_bone_node<class_GLTFSkeleton_method_set_godot_bone_node>`\ (\ godot_bone_node\: :ref:`Dictionary<class_Dictionary>`\ )             |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_unique_names<class_GLTFSkeleton_method_set_unique_names>`\ (\ unique_names\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ ) |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_GLTFSkeleton_property_joints:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **joints** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFSkeleton_property_joints>`

.. rst-class:: classref-property-setget

- |void| **set_joints**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_joints**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_property_roots:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **roots** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFSkeleton_property_roots>`

.. rst-class:: classref-property-setget

- |void| **set_roots**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_roots**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_GLTFSkeleton_method_get_bone_attachment:

.. rst-class:: classref-method

:ref:`BoneAttachment3D<class_BoneAttachment3D>` **get_bone_attachment**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GLTFSkeleton_method_get_bone_attachment>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_method_get_bone_attachment_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_attachment_count**\ (\ ) :ref:`🔗<class_GLTFSkeleton_method_get_bone_attachment_count>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_method_get_godot_bone_node:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_godot_bone_node**\ (\ ) :ref:`🔗<class_GLTFSkeleton_method_get_godot_bone_node>`

Повертає :ref:`Dictionary<class_Dictionary>`, який зіставляє індекси кісток скелета з індексами вузлів glTF. Ця властивість не використовується під час імпорту та встановлюється лише під час експорту. У файлі glTF кістка є вузлом, тому Godot перетворює кістки скелета на вузли glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_method_get_godot_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_godot_skeleton**\ (\ ) :ref:`🔗<class_GLTFSkeleton_method_get_godot_skeleton>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_method_get_unique_names:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`String<class_String>`\] **get_unique_names**\ (\ ) :ref:`🔗<class_GLTFSkeleton_method_get_unique_names>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_method_set_godot_bone_node:

.. rst-class:: classref-method

|void| **set_godot_bone_node**\ (\ godot_bone_node\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GLTFSkeleton_method_set_godot_bone_node>`

Встановлює :ref:`Dictionary<class_Dictionary>`, який зіставляє індекси кісток скелета з індексами вузлів glTF. Ця властивість не використовується під час імпорту та встановлюється лише під час експорту. У файлі glTF кістка є вузлом, тому Godot перетворює кістки скелета на вузли glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkeleton_method_set_unique_names:

.. rst-class:: classref-method

|void| **set_unique_names**\ (\ unique_names\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ ) :ref:`🔗<class_GLTFSkeleton_method_set_unique_names>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
