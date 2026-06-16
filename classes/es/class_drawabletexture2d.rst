:github_url: hide

.. _class_DrawableTexture2D:

DrawableTexture2D
=================

**Hereda:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A 2D texture that supports drawing to itself via Blit calls.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A 2D texture that can be modified via blit calls, copying from a target texture to itself. Primarily intended to be managed in code, a user must call :ref:`setup()<class_DrawableTexture2D_method_setup>` to initialize the state before drawing. Each :ref:`blit_rect()<class_DrawableTexture2D_method_blit_rect>` call takes at least a rectangle, the area to draw to, and another texture, what to be drawn. The draw calls use a Texture_Blit Shader to process and calculate the result, pixel by pixel. Users can supply their own ShaderMaterial with custom Texture_Blit shaders for more complex behaviors.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`blit_rect<class_DrawableTexture2D_method_blit_rect>`\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, source\: :ref:`Texture2D<class_Texture2D>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), mipmap\: :ref:`int<class_int>` = 0, material\: :ref:`Material<class_Material>` = null\ )                                                                                                                                           |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`blit_rect_multi<class_DrawableTexture2D_method_blit_rect_multi>`\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, sources\: :ref:`Array<class_Array>`\[:ref:`Texture2D<class_Texture2D>`\], extra_targets\: :ref:`Array<class_Array>`\[:ref:`DrawableTexture2D<class_DrawableTexture2D>`\], modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), mipmap\: :ref:`int<class_int>` = 0, material\: :ref:`Material<class_Material>` = null\ ) |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`generate_mipmaps<class_DrawableTexture2D_method_generate_mipmaps>`\ (\ )                                                                                                                                                                                                                                                                                                                                                              |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_use_mipmaps<class_DrawableTexture2D_method_get_use_mipmaps>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                        |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_format<class_DrawableTexture2D_method_set_format>`\ (\ format\: :ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>`\ )                                                                                                                                                                                                                                                                                                   |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_use_mipmaps<class_DrawableTexture2D_method_set_use_mipmaps>`\ (\ mipmaps\: :ref:`bool<class_bool>`\ )                                                                                                                                                                                                                                                                                                                             |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`setup<class_DrawableTexture2D_method_setup>`\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, format\: :ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), use_mipmaps\: :ref:`bool<class_bool>` = false\ )                                                                                                                                        |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_DrawableTexture2D_DrawableFormat:

.. rst-class:: classref-enumeration

enum **DrawableFormat**: :ref:`🔗<enum_DrawableTexture2D_DrawableFormat>`

.. _class_DrawableTexture2D_constant_DRAWABLE_FORMAT_RGBA8:

.. rst-class:: classref-enumeration-constant

:ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>` **DRAWABLE_FORMAT_RGBA8** = ``0``

OpenGL texture format RGBA with four components, each with a bitdepth of 8.

.. _class_DrawableTexture2D_constant_DRAWABLE_FORMAT_RGBA8_SRGB:

.. rst-class:: classref-enumeration-constant

:ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>` **DRAWABLE_FORMAT_RGBA8_SRGB** = ``1``

OpenGL texture format RGBA with four components, each with a bitdepth of 8.

When drawn to, an sRGB to linear color space conversion is performed.

.. _class_DrawableTexture2D_constant_DRAWABLE_FORMAT_RGBAH:

.. rst-class:: classref-enumeration-constant

:ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>` **DRAWABLE_FORMAT_RGBAH** = ``2``

OpenGL texture format GL_RGBA16F where there are four components, each a 16-bit "half-precision" floating-point value.

.. _class_DrawableTexture2D_constant_DRAWABLE_FORMAT_RGBAF:

.. rst-class:: classref-enumeration-constant

:ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>` **DRAWABLE_FORMAT_RGBAF** = ``3``

OpenGL texture format GL_RGBA32F where there are four components, each a 32-bit floating-point value.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_DrawableTexture2D_method_blit_rect:

.. rst-class:: classref-method

|void| **blit_rect**\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, source\: :ref:`Texture2D<class_Texture2D>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), mipmap\: :ref:`int<class_int>` = 0, material\: :ref:`Material<class_Material>` = null\ ) :ref:`🔗<class_DrawableTexture2D_method_blit_rect>`

**Experimental:** Este método podría ser modificado o eliminado en versiones futuras.

Draws to given ``rect`` on this texture by copying from the given ``source``. A ``modulate`` color can be passed in for the shader to use, but defaults to White. The ``mipmap`` value can specify a draw to a lower mipmap level. The ``material`` parameter can take a ShaderMaterial with a TextureBlit Shader for custom drawing behavior.

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_blit_rect_multi:

.. rst-class:: classref-method

|void| **blit_rect_multi**\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, sources\: :ref:`Array<class_Array>`\[:ref:`Texture2D<class_Texture2D>`\], extra_targets\: :ref:`Array<class_Array>`\[:ref:`DrawableTexture2D<class_DrawableTexture2D>`\], modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), mipmap\: :ref:`int<class_int>` = 0, material\: :ref:`Material<class_Material>` = null\ ) :ref:`🔗<class_DrawableTexture2D_method_blit_rect_multi>`

**Experimental:** Este método podría ser modificado o eliminado en versiones futuras.

Draws to the given ``rect`` on this texture, as well as on up to 3 DrawableTexture ``extra_targets``. All ``extra_targets`` must be the same size and DrawableFormat as the original target, otherwise the Shader may fail. Expects up to 4 Texture ``sources``, but will replace missing ``sources`` with default Black Textures.

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_generate_mipmaps:

.. rst-class:: classref-method

|void| **generate_mipmaps**\ (\ ) :ref:`🔗<class_DrawableTexture2D_method_generate_mipmaps>`

Re-calculates the mipmaps for this texture on demand.

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_get_use_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_use_mipmaps**\ (\ ) |const| :ref:`🔗<class_DrawableTexture2D_method_get_use_mipmaps>`

Returns ``true`` if mipmaps are set to be used on this DrawableTexture.

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_set_format:

.. rst-class:: classref-method

|void| **set_format**\ (\ format\: :ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>`\ ) :ref:`🔗<class_DrawableTexture2D_method_set_format>`

Sets the format of this DrawableTexture.

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_set_use_mipmaps:

.. rst-class:: classref-method

|void| **set_use_mipmaps**\ (\ mipmaps\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_DrawableTexture2D_method_set_use_mipmaps>`

Sets if mipmaps should be used on this DrawableTexture.

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_setup:

.. rst-class:: classref-method

|void| **setup**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, format\: :ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), use_mipmaps\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_DrawableTexture2D_method_setup>`

**Experimental:** Este método podría ser modificado o eliminado en versiones futuras.

Initializes the DrawableTexture to a White texture of the given ``width``, ``height``, and ``format``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
