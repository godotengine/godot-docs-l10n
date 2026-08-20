:github_url: hide

.. _class_GLTFSkin:

GLTFSkin
========

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Caricamento e salvataggio di file a tempo di esecuzione <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------+------------------------+
   | :ref:`Skin<class_Skin>`                         | :ref:`godot_skin<class_GLTFSkin_property_godot_skin>`           |                        |
   +-------------------------------------------------+-----------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`joints<class_GLTFSkin_property_joints>`                   | ``PackedInt32Array()`` |
   +-------------------------------------------------+-----------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`joints_original<class_GLTFSkin_property_joints_original>` | ``PackedInt32Array()`` |
   +-------------------------------------------------+-----------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`non_joints<class_GLTFSkin_property_non_joints>`           | ``PackedInt32Array()`` |
   +-------------------------------------------------+-----------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`roots<class_GLTFSkin_property_roots>`                     | ``PackedInt32Array()`` |
   +-------------------------------------------------+-----------------------------------------------------------------+------------------------+
   | :ref:`int<class_int>`                           | :ref:`skeleton<class_GLTFSkin_property_skeleton>`               | ``-1``                 |
   +-------------------------------------------------+-----------------------------------------------------------------+------------------------+
   | :ref:`int<class_int>`                           | :ref:`skin_root<class_GLTFSkin_property_skin_root>`             | ``-1``                 |
   +-------------------------------------------------+-----------------------------------------------------------------+------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\] | :ref:`get_inverse_binds<class_GLTFSkin_method_get_inverse_binds>`\ (\ )                                                                                     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                | :ref:`get_joint_i_to_bone_i<class_GLTFSkin_method_get_joint_i_to_bone_i>`\ (\ )                                                                             |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                | :ref:`get_joint_i_to_name<class_GLTFSkin_method_get_joint_i_to_name>`\ (\ )                                                                                 |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_inverse_binds<class_GLTFSkin_method_set_inverse_binds>`\ (\ inverse_binds\: :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\]\ ) |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_joint_i_to_bone_i<class_GLTFSkin_method_set_joint_i_to_bone_i>`\ (\ joint_i_to_bone_i\: :ref:`Dictionary<class_Dictionary>`\ )                    |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_joint_i_to_name<class_GLTFSkin_method_set_joint_i_to_name>`\ (\ joint_i_to_name\: :ref:`Dictionary<class_Dictionary>`\ )                          |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GLTFSkin_property_godot_skin:

.. rst-class:: classref-property

:ref:`Skin<class_Skin>` **godot_skin** :ref:`🔗<class_GLTFSkin_property_godot_skin>`

.. rst-class:: classref-property-setget

- |void| **set_godot_skin**\ (\ value\: :ref:`Skin<class_Skin>`\ )
- :ref:`Skin<class_Skin>` **get_godot_skin**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_property_joints:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **joints** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFSkin_property_joints>`

.. rst-class:: classref-property-setget

- |void| **set_joints**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_joints**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_property_joints_original:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **joints_original** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFSkin_property_joints_original>`

.. rst-class:: classref-property-setget

- |void| **set_joints_original**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_joints_original**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_property_non_joints:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **non_joints** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFSkin_property_non_joints>`

.. rst-class:: classref-property-setget

- |void| **set_non_joints**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_non_joints**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_property_roots:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **roots** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFSkin_property_roots>`

.. rst-class:: classref-property-setget

- |void| **set_roots**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_roots**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_property_skeleton:

.. rst-class:: classref-property

:ref:`int<class_int>` **skeleton** = ``-1`` :ref:`🔗<class_GLTFSkin_property_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_skeleton**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_skeleton**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_property_skin_root:

.. rst-class:: classref-property

:ref:`int<class_int>` **skin_root** = ``-1`` :ref:`🔗<class_GLTFSkin_property_skin_root>`

.. rst-class:: classref-property-setget

- |void| **set_skin_root**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_skin_root**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_GLTFSkin_method_get_inverse_binds:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\] **get_inverse_binds**\ (\ ) :ref:`🔗<class_GLTFSkin_method_get_inverse_binds>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_method_get_joint_i_to_bone_i:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_joint_i_to_bone_i**\ (\ ) :ref:`🔗<class_GLTFSkin_method_get_joint_i_to_bone_i>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_method_get_joint_i_to_name:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_joint_i_to_name**\ (\ ) :ref:`🔗<class_GLTFSkin_method_get_joint_i_to_name>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_method_set_inverse_binds:

.. rst-class:: classref-method

|void| **set_inverse_binds**\ (\ inverse_binds\: :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\]\ ) :ref:`🔗<class_GLTFSkin_method_set_inverse_binds>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_method_set_joint_i_to_bone_i:

.. rst-class:: classref-method

|void| **set_joint_i_to_bone_i**\ (\ joint_i_to_bone_i\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GLTFSkin_method_set_joint_i_to_bone_i>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_method_set_joint_i_to_name:

.. rst-class:: classref-method

|void| **set_joint_i_to_name**\ (\ joint_i_to_name\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GLTFSkin_method_set_joint_i_to_name>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
