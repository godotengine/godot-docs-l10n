:github_url: hide

.. _class_CameraAttributesPhysical:

CameraAttributesPhysical
========================

**Eredita:** :ref:`CameraAttributes<class_CameraAttributes>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Impostazioni di telecamera basate sulla fisica.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**CameraAttributesPhysical** is used to set rendering settings based on a physically-based camera's settings. It is responsible for exposure, auto-exposure, and depth of field.

When used in a :ref:`WorldEnvironment<class_WorldEnvironment>` it provides default settings for exposure, auto-exposure, and depth of field that will be used by all cameras without their own :ref:`CameraAttributes<class_CameraAttributes>`, including the editor camera. When used in a :ref:`Camera3D<class_Camera3D>` it will override any :ref:`CameraAttributes<class_CameraAttributes>` set in the :ref:`WorldEnvironment<class_WorldEnvironment>` and will override the :ref:`Camera3D<class_Camera3D>`\ s :ref:`Camera3D.far<class_Camera3D_property_far>`, :ref:`Camera3D.near<class_Camera3D_property_near>`, :ref:`Camera3D.fov<class_Camera3D_property_fov>`, and :ref:`Camera3D.keep_aspect<class_Camera3D_property_keep_aspect>` properties. When used in :ref:`VoxelGI<class_VoxelGI>` or :ref:`LightmapGI<class_LightmapGI>`, only the exposure settings will be used.

The default settings are intended for use in an outdoor environment, tips for settings for use in an indoor environment can be found in each setting's documentation.

\ **Note:** Depth of field blur is only supported in the Forward+ and Mobile rendering methods, not Compatibility.

\ **Note:** Auto-exposure is only supported in the Forward+ rendering method, not Mobile or Compatibility.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Luce fisica e unità di telecamera <../tutorials/3d/physical_light_and_camera_units>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_max_exposure_value<class_CameraAttributesPhysical_property_auto_exposure_max_exposure_value>` | ``10.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_min_exposure_value<class_CameraAttributesPhysical_property_auto_exposure_min_exposure_value>` | ``-8.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`exposure_aperture<class_CameraAttributesPhysical_property_exposure_aperture>`                               | ``16.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`exposure_shutter_speed<class_CameraAttributesPhysical_property_exposure_shutter_speed>`                     | ``100.0``  |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`frustum_far<class_CameraAttributesPhysical_property_frustum_far>`                                           | ``4000.0`` |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`frustum_focal_length<class_CameraAttributesPhysical_property_frustum_focal_length>`                         | ``35.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`frustum_focus_distance<class_CameraAttributesPhysical_property_frustum_focus_distance>`                     | ``10.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`frustum_near<class_CameraAttributesPhysical_property_frustum_near>`                                         | ``0.05``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_fov<class_CameraAttributesPhysical_method_get_fov>`\ (\ ) |const| |
   +---------------------------+-----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CameraAttributesPhysical_property_auto_exposure_max_exposure_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_max_exposure_value** = ``10.0`` :ref:`🔗<class_CameraAttributesPhysical_property_auto_exposure_max_exposure_value>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_max_exposure_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_max_exposure_value**\ (\ )

La luminanza massima (in EV100) utilizzata per il calcolo dell'esposizione automatica. Quando si calcola la luminanza media della scena, i valori del colore saranno limitati ad almeno questo valore. Ciò limita l'esposizione automatica al di sotto di una certa luminosità, risultando in un punto di interruzione in cui la scena rimarrà luminosa.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_auto_exposure_min_exposure_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_min_exposure_value** = ``-8.0`` :ref:`🔗<class_CameraAttributesPhysical_property_auto_exposure_min_exposure_value>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_min_exposure_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_min_exposure_value**\ (\ )

La luminanza minima (in EV100) utilizzata per il calcolo dell'esposizione automatica. Quando si calcola la luminanza media della scena, i valori del colore saranno limitati ad almeno questo valore. Ciò limita l'esposizione automatica al di sopra di una certa luminosità, risultando in un punto di interruzione in cui la scena rimarrà scura.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_exposure_aperture:

.. rst-class:: classref-property

:ref:`float<class_float>` **exposure_aperture** = ``16.0`` :ref:`🔗<class_CameraAttributesPhysical_property_exposure_aperture>`

.. rst-class:: classref-property-setget

- |void| **set_aperture**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_aperture**\ (\ )

Dimensione dell'apertura della telecamera, misurata in f-stop. Un f-stop è un rapporto senza unità tra la lunghezza focale della telecamera e il diametro dell'apertura. Un valore di apertura elevato risulterà in un'apertura più piccola che porta a un'immagine più buia e a una messa a fuoco più nitida. Un'apertura bassa risulta in un'apertura ampia che lascia entrare più luce, risultando in un'immagine più luminosa e meno a fuoco. L'impostazione predefinita è appropriata per gli esterni durante il giorno (ossia per l'uso con un :ref:`DirectionalLight3D<class_DirectionalLight3D>` predefinito), per l'illuminazione di interni, un valore compreso tra 2 e 4 è più appropriato.

Disponibile solo quando :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` è abilitato.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_exposure_shutter_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **exposure_shutter_speed** = ``100.0`` :ref:`🔗<class_CameraAttributesPhysical_property_exposure_shutter_speed>`

.. rst-class:: classref-property-setget

- |void| **set_shutter_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_shutter_speed**\ (\ )

Tempo necessario per l'apertura e la chiusura dell'otturatore, valutato come ``1 / velocità_otturatore`` secondi. Un valore più alto permetterà meno luce (portando a un'immagine più scura), mentre un valore più basso permetterà più luce (portando a un'immagine più luminosa).

Disponibile solo quando :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` è abilitato.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_frustum_far:

.. rst-class:: classref-property

:ref:`float<class_float>` **frustum_far** = ``4000.0`` :ref:`🔗<class_CameraAttributesPhysical_property_frustum_far>`

.. rst-class:: classref-property-setget

- |void| **set_far**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_far**\ (\ )

Valore di sostituzione per :ref:`Camera3D.far<class_Camera3D_property_far>`. Usato internamente per il calcolo della profondità di campo. Se associato a un :ref:`Camera3D<class_Camera3D>` come suo :ref:`Camera3D.attributes<class_Camera3D_property_attributes>`, sovrascriverà la proprietà :ref:`Camera3D.far<class_Camera3D_property_far>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_frustum_focal_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **frustum_focal_length** = ``35.0`` :ref:`🔗<class_CameraAttributesPhysical_property_frustum_focal_length>`

.. rst-class:: classref-property-setget

- |void| **set_focal_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_focal_length**\ (\ )

Distanza tra l'obiettivo e l'apertura della telecamera, misurata in millimetri. Controlla il campo visivo e la profondità di campo. Una lunghezza focale maggiore risulterà in un campo visivo più piccolo e in una profondità di campo più ristretta, il che significa che meno oggetti saranno a fuoco. Una lunghezza focale inferiore risulterà in un campo visivo più ampio e in una maggiore profondità di campo, il che significa che più oggetti saranno a fuoco. Se associato a un :ref:`Camera3D<class_Camera3D>` come suo :ref:`Camera3D.attributes<class_Camera3D_property_attributes>`, sovrascriverà la proprietà :ref:`Camera3D.fov<class_Camera3D_property_fov>` e la proprietà :ref:`Camera3D.keep_aspect<class_Camera3D_property_keep_aspect>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_frustum_focus_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **frustum_focus_distance** = ``10.0`` :ref:`🔗<class_CameraAttributesPhysical_property_frustum_focus_distance>`

.. rst-class:: classref-property-setget

- |void| **set_focus_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_focus_distance**\ (\ )

Distanza dalla fotocamera dell'oggetto che sarà messo a fuoco, misurata in metri. Internamente questo verrà limitato per essere almeno 1 millimetro più grande di :ref:`frustum_focal_length<class_CameraAttributesPhysical_property_frustum_focal_length>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_frustum_near:

.. rst-class:: classref-property

:ref:`float<class_float>` **frustum_near** = ``0.05`` :ref:`🔗<class_CameraAttributesPhysical_property_frustum_near>`

.. rst-class:: classref-property-setget

- |void| **set_near**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_near**\ (\ )

Valore di sostituzione per :ref:`Camera3D.near<class_Camera3D_property_near>`. Usato internamente per il calcolo della profondità di campo. Se associato a un :ref:`Camera3D<class_Camera3D>` come suo :ref:`Camera3D.attributes<class_Camera3D_property_attributes>`, sovrascriverà la proprietà :ref:`Camera3D.near<class_Camera3D_property_near>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_CameraAttributesPhysical_method_get_fov:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fov**\ (\ ) |const| :ref:`🔗<class_CameraAttributesPhysical_method_get_fov>`

Restituisce il campo visivo verticale che corrisponde a :ref:`frustum_focal_length<class_CameraAttributesPhysical_property_frustum_focal_length>`. Questo valore viene calcolato internamente ogni volta che :ref:`frustum_focal_length<class_CameraAttributesPhysical_property_frustum_focal_length>` viene modificato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
