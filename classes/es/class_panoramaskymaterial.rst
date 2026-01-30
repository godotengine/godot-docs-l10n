:github_url: hide

.. _class_PanoramaSkyMaterial:

PanoramaSkyMaterial
===================

**Hereda:** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un material que proporciona una textura especial a un :ref:`Sky<class_Sky>`, normalmente un panorama HDR.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A resource referenced in a :ref:`Sky<class_Sky>` that is used to draw a background. **PanoramaSkyMaterial** functions similar to skyboxes in other engines, except it uses an equirectangular sky map instead of a :ref:`Cubemap<class_Cubemap>`.

Using an HDR panorama is strongly recommended for accurate, high-quality reflections. Godot supports the Radiance HDR (``.hdr``) and OpenEXR (``.exr``) image formats for this purpose.

You can use `this tool <https://danilw.github.io/GLSL-howto/cubemap_to_panorama_js/cubemap_to_panorama.html>`__ to convert a cubemap to an equirectangular sky map.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`         | :ref:`energy_multiplier<class_PanoramaSkyMaterial_property_energy_multiplier>` | ``1.0``  |
   +-----------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`           | :ref:`filter<class_PanoramaSkyMaterial_property_filter>`                       | ``true`` |
   +-----------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`panorama<class_PanoramaSkyMaterial_property_panorama>`                   |          |
   +-----------------------------------+--------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_PanoramaSkyMaterial_property_energy_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **energy_multiplier** = ``1.0`` :ref:`🔗<class_PanoramaSkyMaterial_property_energy_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_energy_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_energy_multiplier**\ (\ )

El multiplicador de brillo general del cielo. Valores más altos resultan en un cielo más brillante.

.. rst-class:: classref-item-separator

----

.. _class_PanoramaSkyMaterial_property_filter:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter** = ``true`` :ref:`🔗<class_PanoramaSkyMaterial_property_filter>`

.. rst-class:: classref-property-setget

- |void| **set_filtering_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_filtering_enabled**\ (\ )

Un valor booleano para determinar si la textura de fondo debe ser filtrada o no.

.. rst-class:: classref-item-separator

----

.. _class_PanoramaSkyMaterial_property_panorama:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **panorama** :ref:`🔗<class_PanoramaSkyMaterial_property_panorama>`

.. rst-class:: classref-property-setget

- |void| **set_panorama**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_panorama**\ (\ )

:ref:`Texture2D<class_Texture2D>` para aplicar al **PanoramaSkyMaterial**.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
