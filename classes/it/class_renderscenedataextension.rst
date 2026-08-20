:github_url: hide

.. _class_RenderSceneDataExtension:

RenderSceneDataExtension
========================

**Eredita:** :ref:`RenderSceneData<class_RenderSceneData>` **<** :ref:`Object<class_Object>`

Questa classe consente di implementare un RenderSceneData in GDExtension.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe consente di implementare un RenderSceneData in GDExtension.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`   | :ref:`_get_cam_projection<class_RenderSceneDataExtension_private_method__get_cam_projection>`\ (\ ) |virtual| |const|                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`_get_cam_transform<class_RenderSceneDataExtension_private_method__get_cam_transform>`\ (\ ) |virtual| |const|                                   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                 | :ref:`_get_uniform_buffer<class_RenderSceneDataExtension_private_method__get_uniform_buffer>`\ (\ ) |virtual| |const|                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`_get_view_count<class_RenderSceneDataExtension_private_method__get_view_count>`\ (\ ) |virtual| |const|                                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`_get_view_eye_offset<class_RenderSceneDataExtension_private_method__get_view_eye_offset>`\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`   | :ref:`_get_view_projection<class_RenderSceneDataExtension_private_method__get_view_projection>`\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_RenderSceneDataExtension_private_method__get_cam_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **_get_cam_projection**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_cam_projection>`

Implementa questo metodo in GDExtension per restituire la :ref:`Projection<class_Projection>` della telecamera.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_cam_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **_get_cam_transform**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_cam_transform>`

Implementa questo metodo in GDExtension per restituire la :ref:`Transform3D<class_Transform3D>` della telecamera.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_uniform_buffer:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_uniform_buffer**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_uniform_buffer>`

Implementa questo metodo in GDExtension per restituire il :ref:`RID<class_RID>` del buffer di uniformi contenente i dati di scena sotto forma di un UBO.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_view_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_view_count**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_view_count>`

Implementa questo metodo in GDExtension per restituire il numero di viste.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_view_eye_offset:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_view_eye_offset**\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_view_eye_offset>`

Implementa questo metodo in GDExtension per restituire lo scostamento dell'occhio per la vista ``view``.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_view_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **_get_view_projection**\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_view_projection>`

Implementa questo metodo in GDExtension per restituire la :ref:`Projection<class_Projection>` per la vista ``view``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
