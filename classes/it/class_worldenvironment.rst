:github_url: hide

.. meta::
	:keywords: background, sky

.. _class_WorldEnvironment:

WorldEnvironment
================

**Eredita:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Proprietà d'ambiente predefinite per l'intera scena (effetti di post-elaborazione, impostazioni dell'illuminazione e dello sfondo).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il nodo **WorldEnvironment** serve per configurare l':ref:`Environment<class_Environment>` predefinito per la scena.

I parametri definiti nel **WorldEnvironment** possono essere sovrascritti da un nodo :ref:`Environment<class_Environment>` impostato sulla :ref:`Camera3D<class_Camera3D>` attuale. Inoltre, solo uno **WorldEnvironment** può essere istanziato alla volta in una qualunque scena.

Il **WorldEnvironment** permette all'utente di specificare i parametri di illuminazione predefiniti (ad esempio l'illuminazione ambientale), vari effetti di post-elaborazione (ad esempio SSAO, DOF, mappatura dei toni), e come disegnare lo sfondo (ad esempio il colore solido, skybox). Di solito, questi sono aggiunti per migliorare il realismo o il bilanciamento del colore nella scena.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Gli ambienti e gli effetti post-elaborazione <../tutorials/3d/environment_and_post_processing>`

- `Demo di tester di materiali 3D <https://godotengine.org/asset-library/asset/2742>`__

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>` | :ref:`camera_attributes<class_WorldEnvironment_property_camera_attributes>` |
   +-------------------------------------------------+-----------------------------------------------------------------------------+
   | :ref:`Compositor<class_Compositor>`             | :ref:`compositor<class_WorldEnvironment_property_compositor>`               |
   +-------------------------------------------------+-----------------------------------------------------------------------------+
   | :ref:`Environment<class_Environment>`           | :ref:`environment<class_WorldEnvironment_property_environment>`             |
   +-------------------------------------------------+-----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_WorldEnvironment_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_WorldEnvironment_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

La risorsa :ref:`CameraAttributes<class_CameraAttributes>` predefinita da utilizzare se non impostata sul :ref:`Camera3D<class_Camera3D>`.

.. rst-class:: classref-item-separator

----

.. _class_WorldEnvironment_property_compositor:

.. rst-class:: classref-property

:ref:`Compositor<class_Compositor>` **compositor** :ref:`🔗<class_WorldEnvironment_property_compositor>`

.. rst-class:: classref-property-setget

- |void| **set_compositor**\ (\ value\: :ref:`Compositor<class_Compositor>`\ )
- :ref:`Compositor<class_Compositor>` **get_compositor**\ (\ )

La risorsa :ref:`Compositor<class_Compositor>` predefinita da utilizzare se non è impostata sul :ref:`Camera3D<class_Camera3D>`.

.. rst-class:: classref-item-separator

----

.. _class_WorldEnvironment_property_environment:

.. rst-class:: classref-property

:ref:`Environment<class_Environment>` **environment** :ref:`🔗<class_WorldEnvironment_property_environment>`

.. rst-class:: classref-property-setget

- |void| **set_environment**\ (\ value\: :ref:`Environment<class_Environment>`\ )
- :ref:`Environment<class_Environment>` **get_environment**\ (\ )

La risorsa :ref:`Environment<class_Environment>` utilizzata da questo **WorldEnvironment**, definendo le proprietà predefinite.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
