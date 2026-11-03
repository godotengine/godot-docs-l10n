:github_url: hide

.. _class_NoiseTexture2D:

NoiseTexture2D
==============

**Hereda:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una textura 2D rellena con ruido generado por un objeto :ref:`Noise<class_Noise>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Utiliza la librería :ref:`FastNoiseLite<class_FastNoiseLite>` u otros generadores de ruido para rellenar los datos de la textura del tamaño deseado. **NoiseTexture2D** también puede generar texturas de mapa normal.

La clase utiliza :ref:`Thread<class_Thread>`\ s para generar los datos de la textura internamente, por lo que :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>` puede devolver ``null`` si el proceso de generación no se ha completado todavía. En ese caso, debes esperar a que la textura se genere antes de acceder a la imagen y a los datos de bytes generados:

::

    var textura = NoiseTexture2D.new()
    textura.noise = FastNoiseLite.new()
    await textura.changed
    var imagen = textura.get_image()
    var datos = imagen.get_data()

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`as_normal_map<class_NoiseTexture2D_property_as_normal_map>`               | ``false``                                                                              |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`bump_strength<class_NoiseTexture2D_property_bump_strength>`               | ``8.0``                                                                                |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Gradient<class_Gradient>` | :ref:`color_ramp<class_NoiseTexture2D_property_color_ramp>`                     |                                                                                        |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`generate_mipmaps<class_NoiseTexture2D_property_generate_mipmaps>`         | ``true``                                                                               |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`height<class_NoiseTexture2D_property_height>`                             | ``512``                                                                                |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`in_3d_space<class_NoiseTexture2D_property_in_3d_space>`                   | ``false``                                                                              |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`invert<class_NoiseTexture2D_property_invert>`                             | ``false``                                                                              |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Noise<class_Noise>`       | :ref:`noise<class_NoiseTexture2D_property_noise>`                               |                                                                                        |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`normalize<class_NoiseTexture2D_property_normalize>`                       | ``true``                                                                               |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | resource_local_to_scene                                                         | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`seamless<class_NoiseTexture2D_property_seamless>`                         | ``false``                                                                              |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`seamless_blend_skirt<class_NoiseTexture2D_property_seamless_blend_skirt>` | ``0.1``                                                                                |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`width<class_NoiseTexture2D_property_width>`                               | ``512``                                                                                |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_NoiseTexture2D_property_as_normal_map:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **as_normal_map** = ``false`` :ref:`🔗<class_NoiseTexture2D_property_as_normal_map>`

.. rst-class:: classref-property-setget

- |void| **set_as_normal_map**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_normal_map**\ (\ )

Si es ``true``, la textura resultante contiene un mapa normal creado a partir del ruido original interpretado como un bump map.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_bump_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **bump_strength** = ``8.0`` :ref:`🔗<class_NoiseTexture2D_property_bump_strength>`

.. rst-class:: classref-property-setget

- |void| **set_bump_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bump_strength**\ (\ )

La fuerza de los bump maps usados en esta textura. Un valor más alto hará que los bump maps parezcan más grandes mientras que un valor más bajo los hará parecer más suaves.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_color_ramp:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **color_ramp** :ref:`🔗<class_NoiseTexture2D_property_color_ramp>`

.. rst-class:: classref-property-setget

- |void| **set_color_ramp**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_color_ramp**\ (\ )

Un :ref:`Gradient<class_Gradient>` que se utiliza para asignar la luminancia de cada píxel a un valor de color.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_generate_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_mipmaps** = ``true`` :ref:`🔗<class_NoiseTexture2D_property_generate_mipmaps>`

.. rst-class:: classref-property-setget

- |void| **set_generate_mipmaps**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_generating_mipmaps**\ (\ )

Determina si se generan mipmaps para esta textura. Habilitar esto resulta en menos aliasing de textura en la distancia, a costa de aumentar el uso de memoria en aproximadamente un 33% y hacer que la generación de la textura de ruido tarde más.

\ **Nota:** :ref:`generate_mipmaps<class_NoiseTexture2D_property_generate_mipmaps>` requiere que el filtrado de mipmaps esté habilitado en el material que utiliza **NoiseTexture2D** para que tenga efecto.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **height** = ``512`` :ref:`🔗<class_NoiseTexture2D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_height**\ (\ )

Altura de la textura generada (en píxeles).

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_in_3d_space:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **in_3d_space** = ``false`` :ref:`🔗<class_NoiseTexture2D_property_in_3d_space>`

.. rst-class:: classref-property-setget

- |void| **set_in_3d_space**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_in_3d_space**\ (\ )

Determina si la imagen de ruido se calcula en el espacio 3D. Puede resultar en un contraste reducido.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_invert:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **invert** = ``false`` :ref:`🔗<class_NoiseTexture2D_property_invert>`

.. rst-class:: classref-property-setget

- |void| **set_invert**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_invert**\ (\ )

Si es ``true``, invierte la textura de ruido. El blanco se vuelve negro, el negro se vuelve blanco.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_noise:

.. rst-class:: classref-property

:ref:`Noise<class_Noise>` **noise** :ref:`🔗<class_NoiseTexture2D_property_noise>`

.. rst-class:: classref-property-setget

- |void| **set_noise**\ (\ value\: :ref:`Noise<class_Noise>`\ )
- :ref:`Noise<class_Noise>` **get_noise**\ (\ )

La instancia del objeto :ref:`Noise<class_Noise>`.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_normalize:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **normalize** = ``true`` :ref:`🔗<class_NoiseTexture2D_property_normalize>`

.. rst-class:: classref-property-setget

- |void| **set_normalize**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_normalized**\ (\ )

Si es ``true``, la imagen de ruido proveniente del generador de ruido se normaliza al rango ``0.0`` a ``1.0``.

Desactivar la normalización puede afectar el contraste y te permite generar texturas de ruido en mosaico no repetitivas.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_seamless:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **seamless** = ``false`` :ref:`🔗<class_NoiseTexture2D_property_seamless>`

.. rst-class:: classref-property-setget

- |void| **set_seamless**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_seamless**\ (\ )

If ``true``, a seamless texture is requested from the :ref:`Noise<class_Noise>` resource.

\ **Note:** Seamless noise textures may take longer to generate and/or can have a lower contrast compared to non-seamless noise depending on the used :ref:`Noise<class_Noise>` resource. This is because some implementations use higher dimensions for generating seamless noise.

\ **Note:** The default :ref:`FastNoiseLite<class_FastNoiseLite>` implementation uses the fallback path for seamless generation. If using a :ref:`width<class_NoiseTexture2D_property_width>` or :ref:`height<class_NoiseTexture2D_property_height>` lower than the default, you may need to increase :ref:`seamless_blend_skirt<class_NoiseTexture2D_property_seamless_blend_skirt>` to make seamless blending more effective.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_seamless_blend_skirt:

.. rst-class:: classref-property

:ref:`float<class_float>` **seamless_blend_skirt** = ``0.1`` :ref:`🔗<class_NoiseTexture2D_property_seamless_blend_skirt>`

.. rst-class:: classref-property-setget

- |void| **set_seamless_blend_skirt**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_seamless_blend_skirt**\ (\ )

Se utiliza para la implementación predeterminada/de reserva de la generación de texturas sin uniones. Determina la distancia sobre la que se fusionan las uniones. Los valores altos pueden resultar en menos detalles y contraste. Véase :ref:`Noise<class_Noise>` para más detalles.

\ **Nota:** Si se utiliza un :ref:`width<class_NoiseTexture2D_property_width>` o un :ref:`height<class_NoiseTexture2D_property_height>` inferior al valor predeterminado, es posible que sea necesario aumentar :ref:`seamless_blend_skirt<class_NoiseTexture2D_property_seamless_blend_skirt>` para que la fusión sin uniones sea más efectiva.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``512`` :ref:`🔗<class_NoiseTexture2D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

Ancho de la textura generada (en píxeles).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
