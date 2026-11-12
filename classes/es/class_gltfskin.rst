:github_url: hide

.. _class_GLTFSkin:

GLTFSkin
========

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Carga y guardado de archivos en tiempo de ejecución <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Descripciones de Propiedades
--------------------------------------------------------

.. _class_GLTFSkin_property_godot_skin:

.. rst-class:: classref-property

:ref:`Skin<class_Skin>` **godot_skin** :ref:`🔗<class_GLTFSkin_property_godot_skin>`

.. rst-class:: classref-property-setget

- |void| **set_godot_skin**\ (\ value\: :ref:`Skin<class_Skin>`\ )
- :ref:`Skin<class_Skin>` **get_godot_skin**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_property_joints:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **joints** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFSkin_property_joints>`

.. rst-class:: classref-property-setget

- |void| **set_joints**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_joints**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_property_joints_original:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **joints_original** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFSkin_property_joints_original>`

.. rst-class:: classref-property-setget

- |void| **set_joints_original**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_joints_original**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_property_non_joints:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **non_joints** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFSkin_property_non_joints>`

.. rst-class:: classref-property-setget

- |void| **set_non_joints**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_non_joints**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_property_roots:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **roots** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFSkin_property_roots>`

.. rst-class:: classref-property-setget

- |void| **set_roots**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_roots**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_property_skeleton:

.. rst-class:: classref-property

:ref:`int<class_int>` **skeleton** = ``-1`` :ref:`🔗<class_GLTFSkin_property_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_skeleton**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_skeleton**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_property_skin_root:

.. rst-class:: classref-property

:ref:`int<class_int>` **skin_root** = ``-1`` :ref:`🔗<class_GLTFSkin_property_skin_root>`

.. rst-class:: classref-property-setget

- |void| **set_skin_root**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_skin_root**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_GLTFSkin_method_get_inverse_binds:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\] **get_inverse_binds**\ (\ ) :ref:`🔗<class_GLTFSkin_method_get_inverse_binds>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_method_get_joint_i_to_bone_i:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_joint_i_to_bone_i**\ (\ ) :ref:`🔗<class_GLTFSkin_method_get_joint_i_to_bone_i>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_method_get_joint_i_to_name:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_joint_i_to_name**\ (\ ) :ref:`🔗<class_GLTFSkin_method_get_joint_i_to_name>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_method_set_inverse_binds:

.. rst-class:: classref-method

|void| **set_inverse_binds**\ (\ inverse_binds\: :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\]\ ) :ref:`🔗<class_GLTFSkin_method_set_inverse_binds>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_method_set_joint_i_to_bone_i:

.. rst-class:: classref-method

|void| **set_joint_i_to_bone_i**\ (\ joint_i_to_bone_i\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GLTFSkin_method_set_joint_i_to_bone_i>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFSkin_method_set_joint_i_to_name:

.. rst-class:: classref-method

|void| **set_joint_i_to_name**\ (\ joint_i_to_name\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GLTFSkin_method_set_joint_i_to_name>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
