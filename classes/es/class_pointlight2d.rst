:github_url: hide

.. meta::
	:keywords: omni, spot

.. _class_PointLight2D:

PointLight2D
============

**Hereda:** :ref:`Light2D<class_Light2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Fuente de luz 2D posicional.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Emite luz en un entorno 2D. La forma de esta luz se define mediante una textura (normalmente en escala de grises).

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Luces y sombras 2D <../tutorials/2d/2d_lights_and_shadows>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`         | :ref:`height<class_PointLight2D_property_height>`               | ``0.0``           |
   +-----------------------------------+-----------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`     | :ref:`offset<class_PointLight2D_property_offset>`               | ``Vector2(0, 0)`` |
   +-----------------------------------+-----------------------------------------------------------------+-------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_PointLight2D_property_texture>`             |                   |
   +-----------------------------------+-----------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`         | :ref:`texture_scale<class_PointLight2D_property_texture_scale>` | ``1.0``           |
   +-----------------------------------+-----------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_PointLight2D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``0.0`` :ref:`🔗<class_PointLight2D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

La altura de la luz. Se utiliza con el mapeo normal 2D. Las unidades están en píxeles, p. ej. si la altura es 100, iluminará un objeto a 100 píxeles de distancia en un ángulo de 45° con respecto al plano.

.. rst-class:: classref-item-separator

----

.. _class_PointLight2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_PointLight2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_texture_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_texture_offset**\ (\ )

El desplazamiento de la :ref:`texture<class_PointLight2D_property_texture>` de la luz.

.. rst-class:: classref-item-separator

----

.. _class_PointLight2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_PointLight2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

:ref:`Texture2D<class_Texture2D>` usada para la apariencia de la luz.

.. rst-class:: classref-item-separator

----

.. _class_PointLight2D_property_texture_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_scale** = ``1.0`` :ref:`🔗<class_PointLight2D_property_texture_scale>`

.. rst-class:: classref-property-setget

- |void| **set_texture_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_scale**\ (\ )

El factor de escala de :ref:`texture<class_PointLight2D_property_texture>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
