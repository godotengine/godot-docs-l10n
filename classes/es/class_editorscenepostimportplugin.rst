:github_url: hide

.. _class_EditorScenePostImportPlugin:

EditorScenePostImportPlugin
===========================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Plugin para controlar y modificar el proceso de importación de una escena.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este tipo de plugin existe para modificar el proceso de importación de escenas, permitiendo cambiar el contenido así como añadir opciones de importación en cada etapa del proceso.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`_get_import_options<class_EditorScenePostImportPlugin_private_method__get_import_options>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual|                                                                                                                                                                                                                                                                 |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`_get_internal_import_options<class_EditorScenePostImportPlugin_private_method__get_internal_import_options>`\ (\ category\: :ref:`int<class_int>`\ ) |virtual|                                                                                                                                                                                                                                                 |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`_get_internal_option_update_view_required<class_EditorScenePostImportPlugin_private_method__get_internal_option_update_view_required>`\ (\ category\: :ref:`int<class_int>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                                                         |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`_get_internal_option_visibility<class_EditorScenePostImportPlugin_private_method__get_internal_option_visibility>`\ (\ category\: :ref:`int<class_int>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                                    |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`_get_option_visibility<class_EditorScenePostImportPlugin_private_method__get_option_visibility>`\ (\ path\: :ref:`String<class_String>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                                                    |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`_internal_process<class_EditorScenePostImportPlugin_private_method__internal_process>`\ (\ category\: :ref:`int<class_int>`, base_node\: :ref:`Node<class_Node>`, node\: :ref:`Node<class_Node>`, resource\: :ref:`Resource<class_Resource>`\ ) |virtual|                                                                                                                                                      |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`_post_process<class_EditorScenePostImportPlugin_private_method__post_process>`\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                                                                                                                                                                                |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`_pre_process<class_EditorScenePostImportPlugin_private_method__pre_process>`\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                                                                                                                                                                                  |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_import_option<class_EditorScenePostImportPlugin_method_add_import_option>`\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                                                                                                                                                |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_import_option_advanced<class_EditorScenePostImportPlugin_method_add_import_option_advanced>`\ (\ type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, default_value\: :ref:`Variant<class_Variant>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>` = 0, hint_string\: :ref:`String<class_String>` = "", usage_flags\: :ref:`int<class_int>` = 6\ ) |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_option_value<class_EditorScenePostImportPlugin_method_get_option_value>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                                                                         |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_EditorScenePostImportPlugin_InternalImportCategory:

.. rst-class:: classref-enumeration

enum **InternalImportCategory**: :ref:`🔗<enum_EditorScenePostImportPlugin_InternalImportCategory>`

.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_NODE** = ``0``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_MESH_3D_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_MESH_3D_NODE** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_MESH:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_MESH** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_MATERIAL:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_MATERIAL** = ``3``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_ANIMATION:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_ANIMATION** = ``4``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_ANIMATION_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_ANIMATION_NODE** = ``5``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_SKELETON_3D_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_SKELETON_3D_NODE** = ``6``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_MAX** = ``7``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EditorScenePostImportPlugin_private_method__get_import_options:

.. rst-class:: classref-method

|void| **_get_import_options**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__get_import_options>`

Sobrescribe para añadir opciones generales de importación. Estas aparecerán en el dock principal de importación en el editor. Añade opciones a través de :ref:`add_import_option()<class_EditorScenePostImportPlugin_method_add_import_option>` y :ref:`add_import_option_advanced()<class_EditorScenePostImportPlugin_method_add_import_option_advanced>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__get_internal_import_options:

.. rst-class:: classref-method

|void| **_get_internal_import_options**\ (\ category\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__get_internal_import_options>`

Sobrescribe para añadir opciones internas de importación. Estas aparecerán en el diálogo de importación de la escena 3D. Añade opciones a través de :ref:`add_import_option()<class_EditorScenePostImportPlugin_method_add_import_option>` y :ref:`add_import_option_advanced()<class_EditorScenePostImportPlugin_method_add_import_option_advanced>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__get_internal_option_update_view_required:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_internal_option_update_view_required**\ (\ category\: :ref:`int<class_int>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__get_internal_option_update_view_required>`

Debe devolver ``true`` si la vista 3D del cuadro de diálogo de importación necesita actualizarse al cambiar la opción dada.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__get_internal_option_visibility:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_internal_option_visibility**\ (\ category\: :ref:`int<class_int>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__get_internal_option_visibility>`

Should return ``true`` to show the given option, ``false`` to hide the given option, or ``null`` to ignore.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__get_option_visibility:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_option_visibility**\ (\ path\: :ref:`String<class_String>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__get_option_visibility>`

Should return ``true`` to show the given option, ``false`` to hide the given option, or ``null`` to ignore.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__internal_process:

.. rst-class:: classref-method

|void| **_internal_process**\ (\ category\: :ref:`int<class_int>`, base_node\: :ref:`Node<class_Node>`, node\: :ref:`Node<class_Node>`, resource\: :ref:`Resource<class_Resource>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__internal_process>`

Procesa un nodo o recurso específico para una categoría determinada.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__post_process:

.. rst-class:: classref-method

|void| **_post_process**\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__post_process>`

Postprocesa la escena. Esta función se llama después de que la escena final haya sido configurada.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__pre_process:

.. rst-class:: classref-method

|void| **_pre_process**\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__pre_process>`

Pre-process the scene. This function is called right after the scene format loader loaded the scene and no changes have been made.

Pre-process may be used to adjust internal import options in the ``"nodes"``, ``"meshes"``, ``"animations"`` or ``"materials"`` keys inside ``get_option_value("_subresources")``.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_method_add_import_option:

.. rst-class:: classref-method

|void| **add_import_option**\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorScenePostImportPlugin_method_add_import_option>`

Añade una opción de importación específica (solo el nombre y el valor por defecto). Esta función solo puede ser llamada desde :ref:`_get_import_options()<class_EditorScenePostImportPlugin_private_method__get_import_options>` y :ref:`_get_internal_import_options()<class_EditorScenePostImportPlugin_private_method__get_internal_import_options>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_method_add_import_option_advanced:

.. rst-class:: classref-method

|void| **add_import_option_advanced**\ (\ type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, default_value\: :ref:`Variant<class_Variant>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>` = 0, hint_string\: :ref:`String<class_String>` = "", usage_flags\: :ref:`int<class_int>` = 6\ ) :ref:`🔗<class_EditorScenePostImportPlugin_method_add_import_option_advanced>`

Añade una opción de importación específica. Esta función solo puede ser llamada desde :ref:`_get_import_options()<class_EditorScenePostImportPlugin_private_method__get_import_options>` y :ref:`_get_internal_import_options()<class_EditorScenePostImportPlugin_private_method__get_internal_import_options>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_method_get_option_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_option_value**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorScenePostImportPlugin_method_get_option_value>`

Véase el valor de una opción. Esta función solo puede ser llamada desde aquellos que consultan la visibilidad o el procesamiento.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
