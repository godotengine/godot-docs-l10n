:github_url: hide

.. _class_ShaderIncludeDB:

ShaderIncludeDB
===============

**Hereda:** :ref:`Object<class_Object>`

Internal database of built in shader include files.

.. rst-class:: classref-introduction-group

Descripción
----------------------

This object contains shader fragments from Godot's internal shaders. These can be used when access to internal uniform buffers and/or internal functions is required for instance when composing compositor effects or compute shaders. Only fragments for the current rendering device are loaded.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_built_in_include_file<class_ShaderIncludeDB_method_get_built_in_include_file>`\ (\ filename\: :ref:`String<class_String>`\ ) |static| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_built_in_include_file<class_ShaderIncludeDB_method_has_built_in_include_file>`\ (\ filename\: :ref:`String<class_String>`\ ) |static| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`list_built_in_include_files<class_ShaderIncludeDB_method_list_built_in_include_files>`\ (\ ) |static|                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ShaderIncludeDB_method_get_built_in_include_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_built_in_include_file**\ (\ filename\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ShaderIncludeDB_method_get_built_in_include_file>`

Returns the code for the built-in shader fragment. You can also access this in your shader code through ``#include "filename"``.

.. rst-class:: classref-item-separator

----

.. _class_ShaderIncludeDB_method_has_built_in_include_file:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_built_in_include_file**\ (\ filename\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ShaderIncludeDB_method_has_built_in_include_file>`

Devuelve ``true`` si existe un archivo de inclusión con este nombre.

.. rst-class:: classref-item-separator

----

.. _class_ShaderIncludeDB_method_list_built_in_include_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **list_built_in_include_files**\ (\ ) |static| :ref:`🔗<class_ShaderIncludeDB_method_list_built_in_include_files>`

Returns a list of built-in include files that are currently registered.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
