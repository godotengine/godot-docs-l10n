:github_url: hide

.. _class_ResourceImporter:

ResourceImporter
================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`EditorImportPlugin<class_EditorImportPlugin>`, :ref:`ResourceImporterBitMap<class_ResourceImporterBitMap>`, :ref:`ResourceImporterBMFont<class_ResourceImporterBMFont>`, :ref:`ResourceImporterCSVTranslation<class_ResourceImporterCSVTranslation>`, :ref:`ResourceImporterDynamicFont<class_ResourceImporterDynamicFont>`, :ref:`ResourceImporterImage<class_ResourceImporterImage>`, :ref:`ResourceImporterImageFont<class_ResourceImporterImageFont>`, :ref:`ResourceImporterLayeredTexture<class_ResourceImporterLayeredTexture>`, :ref:`ResourceImporterMP3<class_ResourceImporterMP3>`, :ref:`ResourceImporterOBJ<class_ResourceImporterOBJ>`, :ref:`ResourceImporterOggVorbis<class_ResourceImporterOggVorbis>`, :ref:`ResourceImporterScene<class_ResourceImporterScene>`, :ref:`ResourceImporterShaderFile<class_ResourceImporterShaderFile>`, :ref:`ResourceImporterStreamedTexture<class_ResourceImporterStreamedTexture>`, :ref:`ResourceImporterSVG<class_ResourceImporterSVG>`, :ref:`ResourceImporterTexture<class_ResourceImporterTexture>`, :ref:`ResourceImporterTextureAtlas<class_ResourceImporterTextureAtlas>`, :ref:`ResourceImporterWAV<class_ResourceImporterWAV>`

Clase base para los importadores de recursos.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta es la clase base para los importadores de recursos de Godot. Para implementar tus propios importadores de recursos usando plugins de editor, véase :ref:`EditorImportPlugin<class_EditorImportPlugin>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Importar plugins <../tutorials/plugins/editor/import_plugins>`

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_build_dependencies<class_ResourceImporter_private_method__get_build_dependencies>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_ResourceImporter_ImportOrder:

.. rst-class:: classref-enumeration

enum **ImportOrder**: :ref:`🔗<enum_ResourceImporter_ImportOrder>`

.. _class_ResourceImporter_constant_IMPORT_ORDER_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`ImportOrder<enum_ResourceImporter_ImportOrder>` **IMPORT_ORDER_DEFAULT** = ``0``

El orden de importación predeterminado.

.. _class_ResourceImporter_constant_IMPORT_ORDER_SCENE:

.. rst-class:: classref-enumeration-constant

:ref:`ImportOrder<enum_ResourceImporter_ImportOrder>` **IMPORT_ORDER_SCENE** = ``100``

El orden de importación para las escenas, que asegura que las escenas se importen *después* de todos los demás recursos principales, como las texturas. Los importadores personalizados generalmente deben tener un orden de importación inferior a ``100`` para evitar problemas al importar escenas que dependen de recursos personalizados.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ResourceImporter_private_method__get_build_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_build_dependencies**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceImporter_private_method__get_build_dependencies>`

Llamado cuando el editor de perfiles de compilación del motor quiere comprobar qué opciones de compilación necesita un recurso importado. Por ejemplo, :ref:`ResourceImporterDynamicFont<class_ResourceImporterDynamicFont>` tiene una propiedad llamada :ref:`ResourceImporterDynamicFont.multichannel_signed_distance_field<class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field>`, que depende de que el motor se compile con el módulo "msdfgen". Si ese recurso fuera uno personalizado, se manejaría así:

::

    func _get_build_dependencies(path):
        var resource = load(path)
        var dependencies = PackedStringArray()

        if resource.multichannel_signed_distance_field:
            dependencies.push_back("module_msdfgen_enabled")

        return dependencies

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
