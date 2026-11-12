:github_url: hide

.. _class_GLTFMesh:

GLTFMesh
========

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

GLTFMesh representa una malla glTF.

.. rst-class:: classref-introduction-group

Descripción
----------------------

GLTFMesh maneja datos de malla 3D importados de archivos glTF. Incluye propiedades para canales de mezcla, pesos de mezcla, materiales de instancia y la malla en sí.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Carga y guardado de archivos en tiempo de ejecución <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`          | :ref:`blend_weights<class_GLTFMesh_property_blend_weights>`           | ``PackedFloat32Array()`` |
   +--------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\] | :ref:`instance_materials<class_GLTFMesh_property_instance_materials>` | ``[]``                   |
   +--------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------+
   | :ref:`ImporterMesh<class_ImporterMesh>`                      | :ref:`mesh<class_GLTFMesh_property_mesh>`                             |                          |
   +--------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------+
   | :ref:`String<class_String>`                                  | :ref:`original_name<class_GLTFMesh_property_original_name>`           | ``""``                   |
   +--------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_additional_data<class_GLTFMesh_method_get_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`\ )                                                  |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_additional_data<class_GLTFMesh_method_set_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_GLTFMesh_property_blend_weights:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **blend_weights** = ``PackedFloat32Array()`` :ref:`🔗<class_GLTFMesh_property_blend_weights>`

.. rst-class:: classref-property-setget

- |void| **set_blend_weights**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_blend_weights**\ (\ )

Un array de floats que representan los pesos de mezcla de la malla.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFMesh_property_instance_materials:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\] **instance_materials** = ``[]`` :ref:`🔗<class_GLTFMesh_property_instance_materials>`

.. rst-class:: classref-property-setget

- |void| **set_instance_materials**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\] **get_instance_materials**\ (\ )

Un array de objetos :ref:`Material<class_Material>` que representan los materiales usados en la malla.

.. rst-class:: classref-item-separator

----

.. _class_GLTFMesh_property_mesh:

.. rst-class:: classref-property

:ref:`ImporterMesh<class_ImporterMesh>` **mesh** :ref:`🔗<class_GLTFMesh_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`ImporterMesh<class_ImporterMesh>`\ )
- :ref:`ImporterMesh<class_ImporterMesh>` **get_mesh**\ (\ )

El objeto :ref:`ImporterMesh<class_ImporterMesh>` que representa la malla en sí.

.. rst-class:: classref-item-separator

----

.. _class_GLTFMesh_property_original_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **original_name** = ``""`` :ref:`🔗<class_GLTFMesh_property_original_name>`

.. rst-class:: classref-property-setget

- |void| **set_original_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_original_name**\ (\ )

El nombre original de la malla.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_GLTFMesh_method_get_additional_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_GLTFMesh_method_get_additional_data>`

Obtiene datos arbitrarios adicionales en esta instancia de **GLTFMesh**. Esto se puede utilizar para mantener los datos de estado por nodo en las clases :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, lo cual es importante porque no tienen estado.

El argumento debe ser el nombre de :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` (no tiene que coincidir con el nombre de la extensión en el archivo glTF), y el valor de retorno puede ser cualquier cosa que establezcas. Si no se estableció nada, el valor de retorno es ``null``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFMesh_method_set_additional_data:

.. rst-class:: classref-method

|void| **set_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GLTFMesh_method_set_additional_data>`

Establece datos arbitrarios adicionales en esta instancia de **GLTFMesh**. Esto se puede utilizar para mantener los datos de estado por nodo en las clases :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, lo cual es importante porque no tienen estado.

El primer argumento debe ser el nombre de :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` (no tiene que coincidir con el nombre de la extensión en el archivo glTF), y el segundo argumento puede ser cualquier cosa que quieras.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
