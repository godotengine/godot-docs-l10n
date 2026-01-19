:github_url: hide

.. _class_RegExMatch:

RegExMatch
==========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contiene los resultados de una búsqueda :ref:`RegEx<class_RegEx>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Contiene los resultados de una sola coincidencia :ref:`RegEx<class_RegEx>` devuelta por :ref:`RegEx.search()<class_RegEx_method_search>` y :ref:`RegEx.search_all()<class_RegEx_method_search_all>`. Puede ser usado para encontrar la posición y el rango de la coincidencia y sus grupos de captura, y puede extraer su subcadena para ti.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------+-------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`names<class_RegExMatch_property_names>`     | ``{}``                  |
   +---------------------------------------------------+---------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`strings<class_RegExMatch_property_strings>` | ``PackedStringArray()`` |
   +---------------------------------------------------+---------------------------------------------------+-------------------------+
   | :ref:`String<class_String>`                       | :ref:`subject<class_RegExMatch_property_subject>` | ``""``                  |
   +---------------------------------------------------+---------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_end<class_RegExMatch_method_get_end>`\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const|       |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_group_count<class_RegExMatch_method_get_group_count>`\ (\ ) |const|                                 |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_start<class_RegExMatch_method_get_start>`\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const|   |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_string<class_RegExMatch_method_get_string>`\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const| |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RegExMatch_property_names:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **names** = ``{}`` :ref:`🔗<class_RegExMatch_property_names>`

.. rst-class:: classref-property-setget

- :ref:`Dictionary<class_Dictionary>` **get_names**\ (\ )

Un diccionario de grupos nombrados y su correspondiente número de grupo. Solo se incluyen los grupos que fueron coincidentes. Si varios grupos tienen el mismo nombre, ese nombre se referirá al primero que coincida.

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_property_strings:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **strings** = ``PackedStringArray()`` :ref:`🔗<class_RegExMatch_property_strings>`

.. rst-class:: classref-property-setget

- :ref:`PackedStringArray<class_PackedStringArray>` **get_strings**\ (\ )

Una :ref:`Array<class_Array>` de la coincidencia y sus grupos de captura.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_property_subject:

.. rst-class:: classref-property

:ref:`String<class_String>` **subject** = ``""`` :ref:`🔗<class_RegExMatch_property_subject>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_subject**\ (\ )

La string de fuente utilizada con el patrón de búsqueda para encontrar este resultado coincidente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_RegExMatch_method_get_end:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end**\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const| :ref:`🔗<class_RegExMatch_method_get_end>`

Devuelve la posición final de la coincidencia dentro de la string de origen. La posición final de los grupos de captura puede recuperarse proporcionando su número de grupo como un número entero o su nombre de string (si es un grupo con nombre). El valor por defecto de 0 se refiere al patrón completo.

Devuelve -1 si el grupo no coincide o no existe.

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_method_get_group_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_group_count**\ (\ ) |const| :ref:`🔗<class_RegExMatch_method_get_group_count>`

Devuelve el número de grupos de captura.

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_method_get_start:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_start**\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const| :ref:`🔗<class_RegExMatch_method_get_start>`

Devuelve la posición inicial de la coincidencia dentro de la string de origen. La posición inicial de los grupos de captura puede recuperarse proporcionando su número de grupo como un número entero o su nombre de string (si es un grupo con nombre). El valor por defecto de 0 se refiere al patrón completo.

Devuelve -1 si el grupo no coincide o no existe.

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_method_get_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_string**\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const| :ref:`🔗<class_RegExMatch_method_get_string>`

Devuelve la substring de la coincidencia de la string de origen. Los grupos de captura pueden recuperarse proporcionando su número de grupo como un entero o su nombre de string (si es un grupo con nombre). El valor predeterminado de 0 se refiere al patrón completo.

Devuelve una string vacía si el grupo no coincidió o no existe.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
