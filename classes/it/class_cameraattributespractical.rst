:github_url: hide

.. _class_CameraAttributesPractical:

CameraAttributesPractical
=========================

**Eredita:** :ref:`CameraAttributes<class_CameraAttributes>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Impostazioni della telecamera in un formato facile da usare.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Controls camera-specific attributes such as auto-exposure, depth of field, and exposure override.

When used in a :ref:`WorldEnvironment<class_WorldEnvironment>` it provides default settings for exposure, auto-exposure, and depth of field that will be used by all cameras without their own :ref:`CameraAttributes<class_CameraAttributes>`, including the editor camera. When used in a :ref:`Camera3D<class_Camera3D>` it will override any :ref:`CameraAttributes<class_CameraAttributes>` set in the :ref:`WorldEnvironment<class_WorldEnvironment>`. When used in :ref:`VoxelGI<class_VoxelGI>` or :ref:`LightmapGI<class_LightmapGI>`, only the exposure settings will be used.

\ **Note:** Depth of field blur is only supported in the Forward+ and Mobile rendering methods, not Compatibility.

\ **Note:** Auto-exposure is only supported in the Forward+ rendering method, not Mobile or Compatibility.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_max_sensitivity<class_CameraAttributesPractical_property_auto_exposure_max_sensitivity>` | ``800.0`` |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_min_sensitivity<class_CameraAttributesPractical_property_auto_exposure_min_sensitivity>` | ``0.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>`                             | ``0.1``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>`                 | ``10.0``  |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`dof_blur_far_enabled<class_CameraAttributesPractical_property_dof_blur_far_enabled>`                   | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_far_transition<class_CameraAttributesPractical_property_dof_blur_far_transition>`             | ``5.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>`               | ``2.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`dof_blur_near_enabled<class_CameraAttributesPractical_property_dof_blur_near_enabled>`                 | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_near_transition<class_CameraAttributesPractical_property_dof_blur_near_transition>`           | ``1.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CameraAttributesPractical_property_auto_exposure_max_sensitivity:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_max_sensitivity** = ``800.0`` :ref:`🔗<class_CameraAttributesPractical_property_auto_exposure_max_sensitivity>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_max_sensitivity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_max_sensitivity**\ (\ )

La sensitività massima (in ISO) utilizzata per il calcolo dell'esposizione automatica. Quando si calcola la luminanza media della scena, i valori del colore saranno limitati ad almeno questo valore. Ciò limita l'esposizione automatica al di sotto di una certa luminosità, risultando in un punto di interruzione in cui la scena rimarrà luminosa.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_auto_exposure_min_sensitivity:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_min_sensitivity** = ``0.0`` :ref:`🔗<class_CameraAttributesPractical_property_auto_exposure_min_sensitivity>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_min_sensitivity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_min_sensitivity**\ (\ )

La sensitività minima (in ISO) utilizzata per il calcolo dell'esposizione automatica. Quando si calcola la luminanza media della scena, i valori del colore saranno limitati ad almeno questo valore. Ciò limita l'esposizione automatica al di sopra di una certa luminosità, risultando in un punto di interruzione in cui la scena rimarrà scura.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_amount:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_amount** = ``0.1`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_amount>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_amount**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_amount**\ (\ )

Imposta la quantità massima di sfocatura. Quando si usano quantità di sfocatura basati sulla fisica, questo agirà invece come un moltiplicatore. I valori elevati aumentano la sfocatura, ma possono essere molto più costosi da calcolare. È meglio mantenere questo valore il più basso possibile per uno specifico stile artistico.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_far_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_far_distance** = ``10.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_far_distance>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_far_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_far_distance**\ (\ )

Gli oggetti più lontani di questa quantità dal :ref:`Camera3D<class_Camera3D>` saranno sfocati dall'effetto della profondità di campo. Misurato in metri.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_far_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dof_blur_far_enabled** = ``false`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_far_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_far_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_dof_blur_far_enabled**\ (\ )

Enables depth of field blur for objects further than :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>`. Strength of blur is controlled by :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>` and modulated by :ref:`dof_blur_far_transition<class_CameraAttributesPractical_property_dof_blur_far_transition>`.

\ **Note:** Depth of field blur is only supported in the Forward+ and Mobile rendering methods, not Compatibility.

\ **Note:** Depth of field blur is not supported on viewports that have a transparent background (where :ref:`Viewport.transparent_bg<class_Viewport_property_transparent_bg>` is ``true``).

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_far_transition:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_far_transition** = ``5.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_far_transition>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_far_transition**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_far_transition**\ (\ )

Se positivo, la distanza su cui l'effetto di sfocatura scalerà da 0 a :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>` (a partire da :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>`). Se negativo, utilizza il ridimensionamento basato sulla fisica in modo che l'effetto della profondità di campo scalerà da 0 a :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>` e aumenterà in modo fisicamente accurato man mano che gli oggetti si allontanano dal :ref:`Camera3D<class_Camera3D>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_near_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_near_distance** = ``2.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_near_distance>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_near_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_near_distance**\ (\ )

Gli oggetti più vicini di questa quantità alla :ref:`Camera3D<class_Camera3D>` saranno sfocati dall'effetto della profondità di campo. Misurato in metri.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_near_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dof_blur_near_enabled** = ``false`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_near_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_near_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_dof_blur_near_enabled**\ (\ )

Enables depth of field blur for objects closer than :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>`. Strength of blur is controlled by :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>` and modulated by :ref:`dof_blur_near_transition<class_CameraAttributesPractical_property_dof_blur_near_transition>`.

\ **Note:** Depth of field blur is only supported in the Forward+ and Mobile rendering methods, not Compatibility.

\ **Note:** Depth of field blur is not supported on viewports that have a transparent background (where :ref:`Viewport.transparent_bg<class_Viewport_property_transparent_bg>` is ``true``).

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_near_transition:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_near_transition** = ``1.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_near_transition>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_near_transition**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_near_transition**\ (\ )

Se positivo, la distanza su cui l'effetto di sfocatura scalerà da 0 a :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>` (a partire da :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>`). Se negativo, utilizza il ridimensionamento basato sulla fisica in modo che l'effetto della profondità di campo scalerà da 0 a :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>` e aumenterà in modo fisicamente accurato man mano che gli oggetti si allontanano dal :ref:`Camera3D<class_Camera3D>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
