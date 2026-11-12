:github_url: hide

.. _class_ColorPalette:

ColorPalette
============

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una clase de recurso para gestionar una paleta de colores, que puede ser cargada y guardada usando :ref:`ColorPicker<class_ColorPicker>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El recurso **ColorPalette** está diseñado para almacenar y gestionar una colección de colores. Este recurso es útil en escenarios donde se requiere un conjunto de colores predefinido, como para crear temas, diseñar interfaces de usuario o gestionar recursos del juego. El control :ref:`ColorPicker<class_ColorPicker>` incorporado también puede hacer uso de **ColorPalette** sin código adicional.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------+------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`colors<class_ColorPalette_property_colors>` | ``PackedColorArray()`` |
   +-------------------------------------------------+---------------------------------------------------+------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ColorPalette_property_colors:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **colors** = ``PackedColorArray()`` :ref:`🔗<class_ColorPalette_property_colors>`

.. rst-class:: classref-property-setget

- |void| **set_colors**\ (\ value\: :ref:`PackedColorArray<class_PackedColorArray>`\ )
- :ref:`PackedColorArray<class_PackedColorArray>` **get_colors**\ (\ )

Un :ref:`PackedColorArray<class_PackedColorArray>` que contiene los colores de la paleta.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
