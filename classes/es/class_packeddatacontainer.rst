:github_url: hide

.. _class_PackedDataContainer:

PackedDataContainer
===================

**Obsoleto:** Use :ref:`@GlobalScope.var_to_bytes()<class_@GlobalScope_method_var_to_bytes>` or :ref:`FileAccess.store_var()<class_FileAccess_method_store_var>` instead. To enable data compression, use :ref:`PackedByteArray.compress()<class_PackedByteArray_method_compress>` or :ref:`FileAccess.open_compressed()<class_FileAccess_method_open_compressed>`.

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Empaqueta y serializa de forma eficiente un :ref:`Array<class_Array>` o un :ref:`Dictionary<class_Dictionary>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**PackedDataContainer** can be used to efficiently store data from untyped containers. The data is packed into raw bytes and can be saved to file. Only :ref:`Array<class_Array>` and :ref:`Dictionary<class_Dictionary>` can be stored this way.

You can retrieve the data by iterating on the container, which will work as if iterating on the packed data itself. If the packed container is a :ref:`Dictionary<class_Dictionary>`, the data can be retrieved by key names (:ref:`String<class_String>`/:ref:`StringName<class_StringName>` only).

::

    var data = { "key": "value", "another_key": 123, "lock": Vector2() }
    var packed = PackedDataContainer.new()
    packed.pack(data)
    ResourceSaver.save(packed, "packed_data.res")

::

    var container = load("packed_data.res")
    for key in container:
        prints(key, container[key])

Prints:

.. code:: text

    key value
    lock (0, 0)
    another_key 123

Nested containers will be packed recursively. While iterating, they will be returned as :ref:`PackedDataContainerRef<class_PackedDataContainerRef>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`pack<class_PackedDataContainer_method_pack>`\ (\ value\: :ref:`Variant<class_Variant>`\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`size<class_PackedDataContainer_method_size>`\ (\ ) |const|                                |
   +---------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PackedDataContainer_method_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pack**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_PackedDataContainer_method_pack>`

Empaqueta el contenedor dado en una representación binaria. El ``value`` debe ser :ref:`Array<class_Array>` o :ref:`Dictionary<class_Dictionary>`, cualquier otro tipo resultará en un error de datos inválido.

\ **Nota:** Las llamadas siguientes a este método sobrescribirán los datos existentes.

.. rst-class:: classref-item-separator

----

.. _class_PackedDataContainer_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedDataContainer_method_size>`

Devuelve el tamaño del contenedor empaquetado (véase :ref:`Array.size()<class_Array_method_size>` y :ref:`Dictionary.size()<class_Dictionary_method_size>`).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
