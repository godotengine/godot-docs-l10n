:github_url: hide

.. _class_AtlasTexture:

AtlasTexture
============

**Hereda:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una textura que recorta parte de otra Texture2D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Recurso :ref:`Texture2D<class_Texture2D>` que dibuja solo una parte de su textura :ref:`atlas<class_AtlasTexture_property_atlas>`, como se define en :ref:`region<class_AtlasTexture_property_region>`. También se puede establecer un :ref:`margin<class_AtlasTexture_property_margin>` adicional, lo cual es útil para pequeños ajustes.

Se pueden recortar varios recursos **AtlasTexture** del mismo :ref:`atlas<class_AtlasTexture_property_atlas>`. Empaquetar muchas texturas más pequeñas en una única textura grande ayuda a optimizar los costos de memoria de video y las llamadas de renderizado.

\ **Nota:** **AtlasTexture** no se puede usar en una :ref:`AnimatedTexture<class_AnimatedTexture>`, y no se repetirá correctamente en nodos como :ref:`TextureRect<class_TextureRect>` o :ref:`Sprite2D<class_Sprite2D>`. Para repetir una **AtlasTexture**, modifica su :ref:`region<class_AtlasTexture_property_region>` en su lugar.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`atlas<class_AtlasTexture_property_atlas>`             |                                                                                        |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`filter_clip<class_AtlasTexture_property_filter_clip>` | ``false``                                                                              |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`         | :ref:`margin<class_AtlasTexture_property_margin>`           | ``Rect2(0, 0, 0, 0)``                                                                  |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`         | :ref:`region<class_AtlasTexture_property_region>`           | ``Rect2(0, 0, 0, 0)``                                                                  |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | resource_local_to_scene                                     | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AtlasTexture_property_atlas:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **atlas** :ref:`🔗<class_AtlasTexture_property_atlas>`

.. rst-class:: classref-property-setget

- |void| **set_atlas**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_atlas**\ (\ )

La textura que contiene el atlas. Puede ser de cualquier tipo heredado de :ref:`Texture2D<class_Texture2D>`, incluyendo otra **AtlasTexture**.

.. rst-class:: classref-item-separator

----

.. _class_AtlasTexture_property_filter_clip:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_clip** = ``false`` :ref:`🔗<class_AtlasTexture_property_filter_clip>`

.. rst-class:: classref-property-setget

- |void| **set_filter_clip**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_filter_clip**\ (\ )

Si es ``true``, el área fuera de la :ref:`region<class_AtlasTexture_property_region>` se recorta para evitar el sangrado de los píxeles de la textura circundante.

.. rst-class:: classref-item-separator

----

.. _class_AtlasTexture_property_margin:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **margin** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_AtlasTexture_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_margin**\ (\ )

El margen alrededor de la :ref:`region<class_AtlasTexture_property_region>`. Útil para pequeños ajustes. Si el :ref:`Rect2.size<class_Rect2_property_size>` de esta propiedad ("w" y "h" en el editor) está establecido, la textura dibujada se redimensiona para que quepa dentro del margen.

.. rst-class:: classref-item-separator

----

.. _class_AtlasTexture_property_region:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_AtlasTexture_property_region>`

.. rst-class:: classref-property-setget

- |void| **set_region**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region**\ (\ )

La región utilizada para dibujar el :ref:`atlas<class_AtlasTexture_property_atlas>`. Si alguna de las dimensiones del tamaño de la región es ``0``, se utilizará el valor del tamaño de :ref:`atlas<class_AtlasTexture_property_atlas>` para ese eje en su lugar.

\ **Nota:** El tamaño de la imagen es siempre un entero, por lo que el tamaño real de la región se redondea hacia abajo.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
