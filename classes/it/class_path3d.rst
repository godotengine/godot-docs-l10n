:github_url: hide

.. _class_Path3D:

Path3D
======

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Contiene un percorso :ref:`Curve3D<class_Curve3D>` da seguire per i nodi :ref:`PathFollow3D<class_PathFollow3D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Può avere nodi :ref:`PathFollow3D<class_PathFollow3D>` figli che si muovono lungo la :ref:`Curve3D<class_Curve3D>`. Vedi :ref:`PathFollow3D<class_PathFollow3D>` per ulteriori informazioni sull'utilizzo.

Nota che Il percorso è considerato relativo ai nodi spostati (figli di :ref:`PathFollow3D<class_PathFollow3D>`). Pertanto, la curva dovrebbe solitamente iniziare con un vettore zero (``(0, 0, 0)``).

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------+-----------------------+
   | :ref:`Curve3D<class_Curve3D>` | :ref:`curve<class_Path3D_property_curve>`                           |                       |
   +-------------------------------+---------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`debug_custom_color<class_Path3D_property_debug_custom_color>` | ``Color(0, 0, 0, 1)`` |
   +-------------------------------+---------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_Path3D_signal_curve_changed:

.. rst-class:: classref-signal

**curve_changed**\ (\ ) :ref:`🔗<class_Path3D_signal_curve_changed>`

Emesso quando :ref:`curve<class_Path3D_property_curve>` cambia.

.. rst-class:: classref-item-separator

----

.. _class_Path3D_signal_debug_color_changed:

.. rst-class:: classref-signal

**debug_color_changed**\ (\ ) :ref:`🔗<class_Path3D_signal_debug_color_changed>`

Emesso quando il :ref:`debug_custom_color<class_Path3D_property_debug_custom_color>` cambia.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Path3D_property_curve:

.. rst-class:: classref-property

:ref:`Curve3D<class_Curve3D>` **curve** :ref:`🔗<class_Path3D_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve3D<class_Curve3D>`\ )
- :ref:`Curve3D<class_Curve3D>` **get_curve**\ (\ )

Una :ref:`Curve3D<class_Curve3D>` che descrive il percorso.

.. rst-class:: classref-item-separator

----

.. _class_Path3D_property_debug_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_custom_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_Path3D_property_debug_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_custom_color**\ (\ )

Il colore personalizzato da utilizzare per disegnare il percorso nell'editor. Se impostato su :ref:`Color.BLACK<class_Color_constant_BLACK>` (come predefinito), è utilizzato il colore impostato in :ref:`ProjectSettings.debug/shapes/paths/geometry_color<class_ProjectSettings_property_debug/shapes/paths/geometry_color>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
