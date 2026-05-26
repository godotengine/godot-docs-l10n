:github_url: hide

.. _class_AreaLight3D:

AreaLight3D
===========

**Eredita:** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

An area light, such as a neon light tube or a screen.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

An area light is a type of :ref:`Light3D<class_Light3D>` node that emits light over a two-dimensional area, in the shape of a rectangle. The light is attenuated throughout the distance. This attenuation can be configured by changing the energy, :ref:`area_attenuation<class_AreaLight3D_property_area_attenuation>`, and :ref:`area_range<class_AreaLight3D_property_area_range>`.

Light is emitted in the -Z direction of the node's global basis. For an unrotated light, this means that the light is emitted forwards, illuminating the front side of a 3D model (see :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` and :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`).

Area lights can cast soft shadows using PCSS, which you can control by tweaking the size parameter. The shadow map is drawn from the center of the light.

\ **Note:** Area lights have limited support in the Mobile and Compatibility renderers. In the Mobile renderer, the size of the penumbra doesn't vary as it should with PCSS. In Compatibility, area lights cannot cast shadows.

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AreaLight3D_property_area_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **area_attenuation** = ``1.0`` :ref:`🔗<class_AreaLight3D_property_area_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Controls the distance attenuation function for this area light.

A value of ``0.0`` will maintain a constant brightness through most of the range, but will smoothly attenuate the light at the edge of the range. Use a value of ``2.0`` for physically accurate lights as it results in the proper inverse square attenuation.

\ **Note:** Setting attenuation to ``2.0`` or higher may result in distant objects receiving minimal light, even when within range. For example, with a range of ``4096``, an object at ``100`` units is attenuated by a factor of ``0.0001``. With a default brightness of ``1``, the light would not be visible at that distance.

\ **Note:** Using negative values or values higher than ``10.0`` may lead to unexpected results.

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_normalize_energy:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **area_normalize_energy** = ``true`` :ref:`🔗<class_AreaLight3D_property_area_normalize_energy>`

.. rst-class:: classref-property-setget

- |void| **set_area_normalize_energy**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_area_normalizing_energy**\ (\ )

Defines whether the energy is normalized (divided) by the surface area of the light. If set to ``true``, changing the size does not affect the total energy output, and does not dramatically alter the brightness of the scene.

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **area_range** = ``5.0`` :ref:`🔗<class_AreaLight3D_property_area_range>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

The range of the area in meters. This determines the maximum distance from any point on the area at which the area can still emit light.

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **area_size** = ``Vector2(1, 1)`` :ref:`🔗<class_AreaLight3D_property_area_size>`

.. rst-class:: classref-property-setget

- |void| **set_area_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_area_size**\ (\ )

The extents (width and height) of the area in meters.

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **area_texture** :ref:`🔗<class_AreaLight3D_property_area_texture>`

.. rst-class:: classref-property-setget

- |void| **set_area_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_area_texture**\ (\ )

An optional texture to use as a light source. Changing the texture at runtime might impact performance, as it needs to be drawn to the area light atlas with filtered mipmaps.

If no texture is assigned, the area light emits uniform light across its surface.

\ **Note:** Area light textures are only supported in the Forward+ and Mobile rendering methods, not Compatibility. To reduce the performance impact of switching textures at runtime, make sure each dimension of an area texture is either a multiple of 128 pixels, or a power of two. This removes the need for a scaling pass, which slows down texture changes. The textures don't necessarily have to be square to be optimal. Examples of optimal texture sizes include 32x64, 128x128, and 256x384.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
