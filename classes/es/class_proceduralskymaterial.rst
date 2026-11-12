:github_url: hide

.. _class_ProceduralSkyMaterial:

ProceduralSkyMaterial
=====================

**Hereda:** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un material que define un cielo simple para un recurso :ref:`Sky<class_Sky>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**ProceduralSkyMaterial** proporciona una forma de crear rápidamente un fondo atractivo mediante la definición de parámetros procedimentales para el sol, el cielo y el suelo. El cielo y el suelo se definen mediante un color principal, un color en el horizonte y una curva de suavizado para interpolar entre ambos. Los soles se describen mediante una posición en el cielo, un color y un ángulo máximo con respecto al sol, en el que termina la curva de suavizado. Por tanto, el ángulo máximo define el tamaño del sol en el cielo.

\ **ProceduralSkyMaterial** admite hasta 4 soles y utiliza el color, la energía, la dirección y la distancia angular de los cuatro primeros nodos :ref:`DirectionalLight3D<class_DirectionalLight3D>` de la escena. Esto significa que los soles se definen individualmente mediante las propiedades de sus correspondientes nodos :ref:`DirectionalLight3D<class_DirectionalLight3D>` y, globalmente, mediante :ref:`sun_angle_max<class_ProceduralSkyMaterial_property_sun_angle_max>` y :ref:`sun_curve<class_ProceduralSkyMaterial_property_sun_curve>`.

\ **ProceduralSkyMaterial** utiliza un shader ligero para dibujar el cielo, por lo que es adecuado para actualizaciones en tiempo real. Esto lo convierte en una excelente opción para crear un cielo sencillo y poco exigente desde el punto de vista computacional, aunque poco realista. Si necesitas una opción procedimental más realista, utiliza :ref:`PhysicalSkyMaterial<class_PhysicalSkyMaterial>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`         | :ref:`energy_multiplier<class_ProceduralSkyMaterial_property_energy_multiplier>`               | ``1.0``                              |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`ground_bottom_color<class_ProceduralSkyMaterial_property_ground_bottom_color>`           | ``Color(0.2, 0.169, 0.133, 1)``      |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`         | :ref:`ground_curve<class_ProceduralSkyMaterial_property_ground_curve>`                         | ``0.02``                             |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`         | :ref:`ground_energy_multiplier<class_ProceduralSkyMaterial_property_ground_energy_multiplier>` | ``1.0``                              |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`ground_horizon_color<class_ProceduralSkyMaterial_property_ground_horizon_color>`         | ``Color(0.6463, 0.6558, 0.6708, 1)`` |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`sky_cover<class_ProceduralSkyMaterial_property_sky_cover>`                               |                                      |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`sky_cover_modulate<class_ProceduralSkyMaterial_property_sky_cover_modulate>`             | ``Color(1, 1, 1, 1)``                |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`         | :ref:`sky_curve<class_ProceduralSkyMaterial_property_sky_curve>`                               | ``0.15``                             |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`         | :ref:`sky_energy_multiplier<class_ProceduralSkyMaterial_property_sky_energy_multiplier>`       | ``1.0``                              |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`sky_horizon_color<class_ProceduralSkyMaterial_property_sky_horizon_color>`               | ``Color(0.6463, 0.6558, 0.6708, 1)`` |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`sky_top_color<class_ProceduralSkyMaterial_property_sky_top_color>`                       | ``Color(0.385, 0.454, 0.55, 1)``     |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`         | :ref:`sun_angle_max<class_ProceduralSkyMaterial_property_sun_angle_max>`                       | ``30.0``                             |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`         | :ref:`sun_curve<class_ProceduralSkyMaterial_property_sun_curve>`                               | ``0.15``                             |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`use_debanding<class_ProceduralSkyMaterial_property_use_debanding>`                       | ``true``                             |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ProceduralSkyMaterial_property_energy_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **energy_multiplier** = ``1.0`` :ref:`🔗<class_ProceduralSkyMaterial_property_energy_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_energy_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_energy_multiplier**\ (\ )

El multiplicador de brillo general del cielo. Valores más altos resultan en un cielo más brillante.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_ground_bottom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **ground_bottom_color** = ``Color(0.2, 0.169, 0.133, 1)`` :ref:`🔗<class_ProceduralSkyMaterial_property_ground_bottom_color>`

.. rst-class:: classref-property-setget

- |void| **set_ground_bottom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_ground_bottom_color**\ (\ )

Color del suelo en la parte inferior. Se mezcla con :ref:`ground_horizon_color<class_ProceduralSkyMaterial_property_ground_horizon_color>`.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_ground_curve:

.. rst-class:: classref-property

:ref:`float<class_float>` **ground_curve** = ``0.02`` :ref:`🔗<class_ProceduralSkyMaterial_property_ground_curve>`

.. rst-class:: classref-property-setget

- |void| **set_ground_curve**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ground_curve**\ (\ )

Qué tan rápido se desvanece el :ref:`ground_horizon_color<class_ProceduralSkyMaterial_property_ground_horizon_color>` en el :ref:`ground_bottom_color<class_ProceduralSkyMaterial_property_ground_bottom_color>`.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_ground_energy_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **ground_energy_multiplier** = ``1.0`` :ref:`🔗<class_ProceduralSkyMaterial_property_ground_energy_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_ground_energy_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ground_energy_multiplier**\ (\ )

Multiplicador para el color del suelo. Un valor más alto hará que el suelo sea más brillante.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_ground_horizon_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **ground_horizon_color** = ``Color(0.6463, 0.6558, 0.6708, 1)`` :ref:`🔗<class_ProceduralSkyMaterial_property_ground_horizon_color>`

.. rst-class:: classref-property-setget

- |void| **set_ground_horizon_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_ground_horizon_color**\ (\ )

Color del suelo en el horizonte. Se mezcla con :ref:`ground_bottom_color<class_ProceduralSkyMaterial_property_ground_bottom_color>`.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sky_cover:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **sky_cover** :ref:`🔗<class_ProceduralSkyMaterial_property_sky_cover>`

.. rst-class:: classref-property-setget

- |void| **set_sky_cover**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_sky_cover**\ (\ )

La textura de cobertura del cielo a utilizar. Esta textura debe usar una proyección equirrectangular (similar a :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>`). Los colores de la textura se *añadirán* al color del cielo existente, y se multiplicarán por :ref:`sky_energy_multiplier<class_ProceduralSkyMaterial_property_sky_energy_multiplier>` y :ref:`sky_cover_modulate<class_ProceduralSkyMaterial_property_sky_cover_modulate>`. Esto es principalmente adecuado para mostrar estrellas por la noche, pero también se puede utilizar para mostrar nubes de día o de noche (con un aspecto no físicamente exacto).

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sky_cover_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **sky_cover_modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_ProceduralSkyMaterial_property_sky_cover_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_sky_cover_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_sky_cover_modulate**\ (\ )

El tinte a aplicar a la textura :ref:`sky_cover<class_ProceduralSkyMaterial_property_sky_cover>`. Esto se puede usar para cambiar los colores u opacidad de la cobertura del cielo independientemente de la energía del cielo, lo cual es útil para las transiciones día/noche o climáticas. Solo es efectivo si se define una textura en :ref:`sky_cover<class_ProceduralSkyMaterial_property_sky_cover>`.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sky_curve:

.. rst-class:: classref-property

:ref:`float<class_float>` **sky_curve** = ``0.15`` :ref:`🔗<class_ProceduralSkyMaterial_property_sky_curve>`

.. rst-class:: classref-property-setget

- |void| **set_sky_curve**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sky_curve**\ (\ )

La rapidez con la que el :ref:`sky_horizon_color<class_ProceduralSkyMaterial_property_sky_horizon_color>` se desvanece en el :ref:`sky_top_color<class_ProceduralSkyMaterial_property_sky_top_color>`.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sky_energy_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **sky_energy_multiplier** = ``1.0`` :ref:`🔗<class_ProceduralSkyMaterial_property_sky_energy_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_sky_energy_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sky_energy_multiplier**\ (\ )

Multiplicador para el color del cielo. Un valor más alto hará que el cielo sea más brillante.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sky_horizon_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **sky_horizon_color** = ``Color(0.6463, 0.6558, 0.6708, 1)`` :ref:`🔗<class_ProceduralSkyMaterial_property_sky_horizon_color>`

.. rst-class:: classref-property-setget

- |void| **set_sky_horizon_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_sky_horizon_color**\ (\ )

Color del cielo en el horizonte. Se mezcla con :ref:`sky_top_color<class_ProceduralSkyMaterial_property_sky_top_color>`.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sky_top_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **sky_top_color** = ``Color(0.385, 0.454, 0.55, 1)`` :ref:`🔗<class_ProceduralSkyMaterial_property_sky_top_color>`

.. rst-class:: classref-property-setget

- |void| **set_sky_top_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_sky_top_color**\ (\ )

Color del cielo en la parte superior. Se mezcla con :ref:`sky_horizon_color<class_ProceduralSkyMaterial_property_sky_horizon_color>`.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sun_angle_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **sun_angle_max** = ``30.0`` :ref:`🔗<class_ProceduralSkyMaterial_property_sun_angle_max>`

.. rst-class:: classref-property-setget

- |void| **set_sun_angle_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sun_angle_max**\ (\ )

Distancia desde el centro del sol donde se desvanece completamente.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sun_curve:

.. rst-class:: classref-property

:ref:`float<class_float>` **sun_curve** = ``0.15`` :ref:`🔗<class_ProceduralSkyMaterial_property_sun_curve>`

.. rst-class:: classref-property-setget

- |void| **set_sun_curve**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sun_curve**\ (\ )

La rapidez con la que el sol se desvanece entre el borde del disco solar y :ref:`sun_angle_max<class_ProceduralSkyMaterial_property_sun_angle_max>`.

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_use_debanding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_debanding** = ``true`` :ref:`🔗<class_ProceduralSkyMaterial_property_use_debanding>`

.. rst-class:: classref-property-setget

- |void| **set_use_debanding**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_debanding**\ (\ )

Si es ``true``, activa la reducción de bandas. La reducción de bandas añade una pequeña cantidad de ruido que ayuda a reducir las bandas que aparecen por los cambios suaves de color en el cielo.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
