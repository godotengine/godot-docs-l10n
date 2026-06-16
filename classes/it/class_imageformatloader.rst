:github_url: hide

.. _class_ImageFormatLoader:

ImageFormatLoader
=================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`ImageFormatLoaderExtension<class_ImageFormatLoaderExtension>`

Classe di base per aggiungere supporto a formati di immagine specifici.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il motore supporta diversi formati di immagine predefiniti (PNG, SVG, JPEG, WebP per citarne alcuni), ma è possibile scegliere di implementare il supporto per formati di immagine aggiuntivi estendendo :ref:`ImageFormatLoaderExtension<class_ImageFormatLoaderExtension>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_ImageFormatLoader_LoaderFlags:

.. rst-class:: classref-enumeration

flags **LoaderFlags**: :ref:`🔗<enum_ImageFormatLoader_LoaderFlags>`

.. _class_ImageFormatLoader_constant_FLAG_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`LoaderFlags<enum_ImageFormatLoader_LoaderFlags>` **FLAG_NONE** = ``0``

Comportamento di caricamento predefinito. L'immagine non viene elaborata in alcun modo.

.. _class_ImageFormatLoader_constant_FLAG_FORCE_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`LoaderFlags<enum_ImageFormatLoader_LoaderFlags>` **FLAG_FORCE_LINEAR** = ``1``

Se impostato, l'immagine viene convertita dalla codifica sRGB alla codifica lineare.

.. _class_ImageFormatLoader_constant_FLAG_CONVERT_COLORS:

.. rst-class:: classref-enumeration-constant

:ref:`LoaderFlags<enum_ImageFormatLoader_LoaderFlags>` **FLAG_CONVERT_COLORS** = ``2``

Se impostato, viene applicata una mappa di colori predefinita all'immagine. Utilizzato quando :ref:`ResourceImporterTexture.editor/convert_colors_with_editor_theme<class_ResourceImporterTexture_property_editor/convert_colors_with_editor_theme>` è ``true``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
