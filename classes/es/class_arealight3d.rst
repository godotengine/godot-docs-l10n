:github_url: hide

.. _class_AreaLight3D:

AreaLight3D
===========

**Hereda:** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una fuente de luz de área, como un tubo de luz de neón o una pantalla.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una luz de área es un tipo de nodo :ref:`Light3D<class_Light3D>` que emite luz sobre un área bidimensional con forma de rectángulo. La luz se atenúa a lo largo de la distancia. Esta atenuación se puede configurar cambiando :ref:`energy<class_AreaLight3D_property_energy>`, :ref:`area_attenuation<class_AreaLight3D_property_area_attenuation>` y :ref:`area_range<class_AreaLight3D_property_area_range>`.

La luz se emite en la dirección -Z de la base global del nodo. Para una luz sin rotar, esto significa que la luz se emite hacia adelante, iluminando la parte frontal de un modelo 3D (véase :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` y :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`).

Las luces de área pueden proyectar sombras suaves mediante PCSS, que se puede controlar ajustando el parámetro de tamaño. El mapa de sombras se dibuja desde el centro de la luz.

\ **Nota:** Las luces de área tienen compatibilidad limitada en los renderizadores Mobile y Compatibility. En el renderizador Mobile, el tamaño de la penumbra no varía como debería con PCSS. En Compatibility, las luces de área no pueden proyectar sombras.

\ **Advertencia:** Las sombras proyectadas por una luz de área pueden verse incorrectamente si el objeto que proyecta sombras no tiene suficientes subdivisiones y está muy cerca de la luz de área. Esta es la misma limitación que presenta el modo de sombras Dual Paraboloid en un :ref:`OmniLight3D<class_OmniLight3D>`.

\ **Rendimiento:** Las luces de área requieren más recursos de GPU que las luces omni y spot. En Forward+, se produce un coste adicional de GPU en *todos* los objetos renderizados en cuanto hay una luz de área presente en el frustum de visión (debido a la naturaleza de la iluminación en clústeres). Considera usarlas solo para cinemáticas o cuando el objetivo sean dispositivos de gama alta.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Luces y sombras 3D <../tutorials/3d/lights_and_shadows.html#area-light>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`area_attenuation<class_AreaLight3D_property_area_attenuation>`           | ``1.0``                                                                       |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`area_normalize_energy<class_AreaLight3D_property_area_normalize_energy>` | ``true``                                                                      |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`area_range<class_AreaLight3D_property_area_range>`                       | ``5.0``                                                                       |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`     | :ref:`area_size<class_AreaLight3D_property_area_size>`                         | ``Vector2(1, 1)``                                                             |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`area_texture<class_AreaLight3D_property_area_texture>`                   |                                                                               |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | light_size                                                                     | ``0.5`` (overrides :ref:`Light3D<class_Light3D_property_light_size>`)         |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | shadow_normal_bias                                                             | ``1.0`` (overrides :ref:`Light3D<class_Light3D_property_shadow_normal_bias>`) |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AreaLight3D_property_area_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **area_attenuation** = ``1.0`` :ref:`🔗<class_AreaLight3D_property_area_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Controla la función de atenuación de la distancia para esta luz de área.

Un valor de ``0.0`` mantendrá un brillo constante en la mayor parte del rango, pero atenuará suavemente la luz en el borde del rango. Usa un valor de ``2.0`` para luces físicamente correctas, ya que da como resultado la atenuación correcta según la ley del inverso del cuadrado.

\ **Nota:** Establecer la atenuación en ``2.0`` o más puede hacer que los objetos distantes reciban una cantidad mínima de luz, incluso cuando estén dentro del rango. Por ejemplo, con un rango de ``4096``, un objeto a ``100`` unidades se atenúa por un factor de ``0.0001``. Con un brillo predeterminado de ``1``, la luz no sería visible a esa distancia.

\ **Nota:** Usar valores negativos o valores superiores a ``10.0`` puede provocar resultados inesperados.

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_normalize_energy:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **area_normalize_energy** = ``true`` :ref:`🔗<class_AreaLight3D_property_area_normalize_energy>`

.. rst-class:: classref-property-setget

- |void| **set_area_normalize_energy**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_area_normalizing_energy**\ (\ )

Define si la energía se normaliza (divide) por el área de superficie de la luz. Si se establece en ``true``, cambiar el size no afecta al output de energía total y no altera significativamente el brillo de la escena.

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **area_range** = ``5.0`` :ref:`🔗<class_AreaLight3D_property_area_range>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

El alcance del área en metros. Esto determina la distancia máxima desde cualquier punto del área a la que todavía puede emitir luz.

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **area_size** = ``Vector2(1, 1)`` :ref:`🔗<class_AreaLight3D_property_area_size>`

.. rst-class:: classref-property-setget

- |void| **set_area_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_area_size**\ (\ )

Las dimensiones (anchura y altura) del área en metros.

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **area_texture** :ref:`🔗<class_AreaLight3D_property_area_texture>`

.. rst-class:: classref-property-setget

- |void| **set_area_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_area_texture**\ (\ )

Una textura opcional para usar como fuente de luz. Cambiar la textura en tiempo de ejecución puede afectar al rendimiento, ya que debe dibujarse en el atlas de luz de área con mipmaps filtrados.

Si no se asigna textura, la luz del área emite luz uniforme a lo largo de su superficie.

\ **Nota:** Las texturas de luz de área solo se soportan en los métodos de renderizado Forward+ y Móvil, no en Compatibilidad. Para reducir el impacto en el rendimiento de cambiar de textura en tiempo de ejecución, asegúrate de que cada dimensión de una textura de área sea un múltiplo de 128 píxeles o una potencia de dos. Esto elimina la necesidad de un escalado, que ralentiza los cambios de textura. Las texturas no tienen que ser necesariamente cuadradas para ser óptimas. Ejemplos de tamaños óptimos de textura incluyen 32x64, 128x128 y 256x384.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
