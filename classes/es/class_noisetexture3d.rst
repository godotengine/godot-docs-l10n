:github_url: hide

.. _class_NoiseTexture3D:

NoiseTexture3D
==============

**Hereda:** :ref:`Texture3D<class_Texture3D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una textura 3D rellena con ruido generado por un objeto :ref:`Noise<class_Noise>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Utiliza la librería :ref:`FastNoiseLite<class_FastNoiseLite>` u otros generadores de ruido para rellenar los datos de la textura del tamaño deseado.

La clase utiliza :ref:`Thread<class_Thread>`\ s para generar los datos de la textura internamente, por lo que :ref:`Texture3D.get_data()<class_Texture3D_method_get_data>` puede devolver ``null`` si el proceso de generación aún no ha finalizado. En ese caso, debes esperar a que la textura se genere antes de acceder a la imagen:

::

    var texture = NoiseTexture3D.new()
    texture.noise = FastNoiseLite.new()
    await texture.changed
    var data = texture.get_data()

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`Gradient<class_Gradient>` | :ref:`color_ramp<class_NoiseTexture3D_property_color_ramp>`                     |           |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`           | :ref:`depth<class_NoiseTexture3D_property_depth>`                               | ``64``    |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`           | :ref:`height<class_NoiseTexture3D_property_height>`                             | ``64``    |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`invert<class_NoiseTexture3D_property_invert>`                             | ``false`` |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`Noise<class_Noise>`       | :ref:`noise<class_NoiseTexture3D_property_noise>`                               |           |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`normalize<class_NoiseTexture3D_property_normalize>`                       | ``true``  |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`seamless<class_NoiseTexture3D_property_seamless>`                         | ``false`` |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`       | :ref:`seamless_blend_skirt<class_NoiseTexture3D_property_seamless_blend_skirt>` | ``0.1``   |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`           | :ref:`width<class_NoiseTexture3D_property_width>`                               | ``64``    |
   +---------------------------------+---------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_NoiseTexture3D_property_color_ramp:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **color_ramp** :ref:`🔗<class_NoiseTexture3D_property_color_ramp>`

.. rst-class:: classref-property-setget

- |void| **set_color_ramp**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_color_ramp**\ (\ )

Un :ref:`Gradient<class_Gradient>` que se utiliza para asignar la luminancia de cada píxel a un valor de color.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **depth** = ``64`` :ref:`🔗<class_NoiseTexture3D_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_depth**\ (\ )

Depth of the generated texture (in pixels).

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **height** = ``64`` :ref:`🔗<class_NoiseTexture3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_height**\ (\ )

Altura de la textura generada (en píxeles).

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_invert:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **invert** = ``false`` :ref:`🔗<class_NoiseTexture3D_property_invert>`

.. rst-class:: classref-property-setget

- |void| **set_invert**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_invert**\ (\ )

Si es ``true``, invierte la textura de ruido. El blanco se vuelve negro, el negro se vuelve blanco.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_noise:

.. rst-class:: classref-property

:ref:`Noise<class_Noise>` **noise** :ref:`🔗<class_NoiseTexture3D_property_noise>`

.. rst-class:: classref-property-setget

- |void| **set_noise**\ (\ value\: :ref:`Noise<class_Noise>`\ )
- :ref:`Noise<class_Noise>` **get_noise**\ (\ )

La instancia del objeto :ref:`Noise<class_Noise>`.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_normalize:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **normalize** = ``true`` :ref:`🔗<class_NoiseTexture3D_property_normalize>`

.. rst-class:: classref-property-setget

- |void| **set_normalize**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_normalized**\ (\ )

Si es ``true``, la imagen de ruido proveniente del generador de ruido se normaliza al rango ``0.0`` a ``1.0``.

Desactivar la normalización puede afectar el contraste y te permite generar texturas de ruido en mosaico no repetitivas.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_seamless:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **seamless** = ``false`` :ref:`🔗<class_NoiseTexture3D_property_seamless>`

.. rst-class:: classref-property-setget

- |void| **set_seamless**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_seamless**\ (\ )

If ``true``, a seamless texture is requested from the :ref:`Noise<class_Noise>` resource.

\ **Note:** Seamless noise textures may take longer to generate and/or can have a lower contrast compared to non-seamless noise depending on the used :ref:`Noise<class_Noise>` resource. This is because some implementations use higher dimensions for generating seamless noise.

\ **Note:** The default :ref:`FastNoiseLite<class_FastNoiseLite>` implementation uses the fallback path for seamless generation. If using a :ref:`width<class_NoiseTexture3D_property_width>`, :ref:`height<class_NoiseTexture3D_property_height>` or :ref:`depth<class_NoiseTexture3D_property_depth>` lower than the default, you may need to increase :ref:`seamless_blend_skirt<class_NoiseTexture3D_property_seamless_blend_skirt>` to make seamless blending more effective.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_seamless_blend_skirt:

.. rst-class:: classref-property

:ref:`float<class_float>` **seamless_blend_skirt** = ``0.1`` :ref:`🔗<class_NoiseTexture3D_property_seamless_blend_skirt>`

.. rst-class:: classref-property-setget

- |void| **set_seamless_blend_skirt**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_seamless_blend_skirt**\ (\ )

Used for the default/fallback implementation of the seamless texture generation. It determines the distance over which the seams are blended. High values may result in less details and contrast. See :ref:`Noise<class_Noise>` for further details.

\ **Note:** If using a :ref:`width<class_NoiseTexture3D_property_width>`, :ref:`height<class_NoiseTexture3D_property_height>` or :ref:`depth<class_NoiseTexture3D_property_depth>` lower than the default, you may need to increase :ref:`seamless_blend_skirt<class_NoiseTexture3D_property_seamless_blend_skirt>` to make seamless blending more effective.

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture3D_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``64`` :ref:`🔗<class_NoiseTexture3D_property_width>`

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
