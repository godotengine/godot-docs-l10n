:github_url: hide

.. _class_EditorResourceConversionPlugin:

EditorResourceConversionPlugin
==============================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Plugin para añadir convertidores personalizados de un formato de recurso a otro en el menú contextual del selector de recursos del editor; por ejemplo, convertir un :ref:`StandardMaterial3D<class_StandardMaterial3D>` a un :ref:`ShaderMaterial<class_ShaderMaterial>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**EditorResourceConversionPlugin** is invoked when the context menu is brought up for a resource in the editor inspector. Relevant conversion plugins will appear as menu options to convert the given resource to a target type.

Below shows an example of a basic plugin that will convert an :ref:`ImageTexture<class_ImageTexture>` to a :ref:`PortableCompressedTexture2D<class_PortableCompressedTexture2D>`.


.. tabs::

 .. code-tab:: gdscript

    extends EditorResourceConversionPlugin

    func _handles(resource: Resource):
        return resource is ImageTexture

    func _converts_to():
        return "PortableCompressedTexture2D"

    func _convert(itex: Resource):
        var ptex = PortableCompressedTexture2D.new()
        ptex.create_from_image(itex.get_image(), PortableCompressedTexture2D.COMPRESSION_MODE_LOSSLESS)
        return ptex



To use an **EditorResourceConversionPlugin**, register it using the :ref:`EditorPlugin.add_resource_conversion_plugin()<class_EditorPlugin_method_add_resource_conversion_plugin>` method first.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`_convert<class_EditorResourceConversionPlugin_private_method__convert>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`     | :ref:`_converts_to<class_EditorResourceConversionPlugin_private_method__converts_to>`\ (\ ) |virtual| |const|                                     |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`_handles<class_EditorResourceConversionPlugin_private_method__handles>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EditorResourceConversionPlugin_private_method__convert:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **_convert**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourceConversionPlugin_private_method__convert>`

Toma un :ref:`Resource<class_Resource>` de entrada y lo convierte al tipo dado en :ref:`_converts_to()<class_EditorResourceConversionPlugin_private_method__converts_to>`. El :ref:`Resource<class_Resource>` devuelto es el resultado de la conversión, y el :ref:`Resource<class_Resource>` de entrada permanece sin cambios.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourceConversionPlugin_private_method__converts_to:

.. rst-class:: classref-method

:ref:`String<class_String>` **_converts_to**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorResourceConversionPlugin_private_method__converts_to>`

Devuelve el nombre de la clase del tipo de destino de :ref:`Resource<class_Resource>` al que este plugin convierte los recursos de origen.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourceConversionPlugin_private_method__handles:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourceConversionPlugin_private_method__handles>`

Se llama para determinar si un :ref:`Resource<class_Resource>` en particular puede ser convertido al tipo de recurso de destino por este plugin.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
