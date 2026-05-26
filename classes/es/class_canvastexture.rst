:github_url: hide

.. _class_CanvasTexture:

CanvasTexture
=============

**Hereda:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Textura con mapas normales y especulares opcionales para su uso en renderizado 2D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**CanvasTexture** es una alternativa a :ref:`ImageTexture<class_ImageTexture>` para renderizado 2D. Permite usar mapas normales y mapas especulares en cualquier nodo que herede de :ref:`CanvasItem<class_CanvasItem>`. **CanvasTexture** también permite sobrescribir el modo de filtro y repetición de la textura independientemente de las propiedades del nodo (o project settings).

\ **Nota:** **CanvasTexture** no se puede usar en 3D. No se mostrará correctamente al aplicarse a cualquier :ref:`VisualInstance3D<class_VisualInstance3D>`, como :ref:`Sprite3D<class_Sprite3D>` o :ref:`Decal<class_Decal>`. Para materiales basados en física en 3D, usa :ref:`BaseMaterial3D<class_BaseMaterial3D>` en su lugar.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Luces y sombras en 2D <../tutorials/2d/2d_lights_and_shadows>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                   | :ref:`diffuse_texture<class_CanvasTexture_property_diffuse_texture>`       |                                                                                        |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                   | :ref:`normal_texture<class_CanvasTexture_property_normal_texture>`         |                                                                                        |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | resource_local_to_scene                                                    | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                           | :ref:`specular_color<class_CanvasTexture_property_specular_color>`         | ``Color(1, 1, 1, 1)``                                                                  |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`specular_shininess<class_CanvasTexture_property_specular_shininess>` | ``1.0``                                                                                |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                   | :ref:`specular_texture<class_CanvasTexture_property_specular_texture>`     |                                                                                        |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`TextureFilter<enum_CanvasItem_TextureFilter>` | :ref:`texture_filter<class_CanvasTexture_property_texture_filter>`         | ``0``                                                                                  |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`TextureRepeat<enum_CanvasItem_TextureRepeat>` | :ref:`texture_repeat<class_CanvasTexture_property_texture_repeat>`         | ``0``                                                                                  |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CanvasTexture_property_diffuse_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **diffuse_texture** :ref:`🔗<class_CanvasTexture_property_diffuse_texture>`

.. rst-class:: classref-property-setget

- |void| **set_diffuse_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_diffuse_texture**\ (\ )

La textura difusa (color) a usar. Esta es la textura principal que querrás establecer en la mayoría de los casos.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_normal_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **normal_texture** :ref:`🔗<class_CanvasTexture_property_normal_texture>`

.. rst-class:: classref-property-setget

- |void| **set_normal_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_normal_texture**\ (\ )

The normal map texture to use. Only has a visible effect if :ref:`Light2D<class_Light2D>`\ s are affecting this **CanvasTexture**.

\ **Note:** Godot expects the normal map to use X+, Y+, and Z+ coordinates. See `this page <http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates>`__ for a comparison of normal map coordinates expected by popular engines.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_specular_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **specular_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CanvasTexture_property_specular_color>`

.. rst-class:: classref-property-setget

- |void| **set_specular_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_specular_color**\ (\ )

El multiplicador para los colores de reflexión especular. El color de :ref:`Light2D<class_Light2D>` también se tiene en cuenta al determinar el color de reflexión. Solo tiene un effect visible si los :ref:`Light2D<class_Light2D>` afectan a este **CanvasTexture**.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_specular_shininess:

.. rst-class:: classref-property

:ref:`float<class_float>` **specular_shininess** = ``1.0`` :ref:`🔗<class_CanvasTexture_property_specular_shininess>`

.. rst-class:: classref-property-setget

- |void| **set_specular_shininess**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_specular_shininess**\ (\ )

El exponente especular para los reflejos especulares de :ref:`Light2D<class_Light2D>`. Los values más altos resultan en un aspecto más lustroso/"húmedo", con los reflejos volviéndose más localizados y menos visibles en general. El value predeterminado de ``1.0`` desactiva los reflejos especulares por completo. Solo tiene un effect visible si los :ref:`Light2D<class_Light2D>` están afectando a este **CanvasTexture**.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_specular_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **specular_texture** :ref:`🔗<class_CanvasTexture_property_specular_texture>`

.. rst-class:: classref-property-setget

- |void| **set_specular_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_specular_texture**\ (\ )

El mapa especular a usar para los reflejos especulares de :ref:`Light2D<class_Light2D>`. Debe ser una textura en escala de grises o coloreada, con áreas más brillantes que resulten en un :ref:`specular_shininess<class_CanvasTexture_property_specular_shininess>` value más alto. Usar un :ref:`specular_texture<class_CanvasTexture_property_specular_texture>` coloreado permite controlar el brillo especular por canal. Solo tiene un effect visible si los :ref:`Light2D<class_Light2D>` están afectando a este **CanvasTexture**.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_texture_filter:

.. rst-class:: classref-property

:ref:`TextureFilter<enum_CanvasItem_TextureFilter>` **texture_filter** = ``0`` :ref:`🔗<class_CanvasTexture_property_texture_filter>`

.. rst-class:: classref-property-setget

- |void| **set_texture_filter**\ (\ value\: :ref:`TextureFilter<enum_CanvasItem_TextureFilter>`\ )
- :ref:`TextureFilter<enum_CanvasItem_TextureFilter>` **get_texture_filter**\ (\ )

El modo de filtrado de textura a utilizar al dibujar esta **CanvasTexture**.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_texture_repeat:

.. rst-class:: classref-property

:ref:`TextureRepeat<enum_CanvasItem_TextureRepeat>` **texture_repeat** = ``0`` :ref:`🔗<class_CanvasTexture_property_texture_repeat>`

.. rst-class:: classref-property-setget

- |void| **set_texture_repeat**\ (\ value\: :ref:`TextureRepeat<enum_CanvasItem_TextureRepeat>`\ )
- :ref:`TextureRepeat<enum_CanvasItem_TextureRepeat>` **get_texture_repeat**\ (\ )

El modo de repetición de textura a utilizar al dibujar esta **CanvasTexture**.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
