:github_url: hide

.. _class_CameraServer:

CameraServer
============

**Eredita:** :ref:`Object<class_Object>`

Server che tiene traccia delle diverse fotocamere accessibili in Godot.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

The **CameraServer** keeps track of different cameras accessible in Godot. These are external cameras such as webcams or the cameras on your phone.

It is notably used to provide AR modules with a video feed from the camera.

\ **Note:** This class is currently only implemented on Linux, Android, macOS, and iOS. On other platforms no :ref:`CameraFeed<class_CameraFeed>`\ s will be available. To get a :ref:`CameraFeed<class_CameraFeed>` on iOS, enable :ref:`EditorExportPlatformIOS.modules/camera<class_EditorExportPlatformIOS_property_modules/camera>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`monitoring_feeds<class_CameraServer_property_monitoring_feeds>` | ``false`` |
   +-------------------------+-----------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_feed<class_CameraServer_method_add_feed>`\ (\ feed\: :ref:`CameraFeed<class_CameraFeed>`\ )       |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`CameraFeed<class_CameraFeed>`\] | :ref:`feeds<class_CameraServer_method_feeds>`\ (\ )                                                         |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`CameraFeed<class_CameraFeed>`                              | :ref:`get_feed<class_CameraServer_method_get_feed>`\ (\ index\: :ref:`int<class_int>`\ )                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_feed_count<class_CameraServer_method_get_feed_count>`\ (\ )                                       |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_feed<class_CameraServer_method_remove_feed>`\ (\ feed\: :ref:`CameraFeed<class_CameraFeed>`\ ) |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_CameraServer_signal_camera_feed_added:

.. rst-class:: classref-signal

**camera_feed_added**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CameraServer_signal_camera_feed_added>`

Emesso quando viene aggiunto un :ref:`CameraFeed<class_CameraFeed>` (ad esempio, una webcam è collegata).

.. rst-class:: classref-item-separator

----

.. _class_CameraServer_signal_camera_feed_removed:

.. rst-class:: classref-signal

**camera_feed_removed**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CameraServer_signal_camera_feed_removed>`

Emesso quando un :ref:`CameraFeed<class_CameraFeed>` viene rimosso (ad esempio una webcam è scollegata).

.. rst-class:: classref-item-separator

----

.. _class_CameraServer_signal_camera_feeds_updated:

.. rst-class:: classref-signal

**camera_feeds_updated**\ (\ ) :ref:`🔗<class_CameraServer_signal_camera_feeds_updated>`

Emesso quando i feed della fotocamera vengono aggiornati.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_CameraServer_FeedImage:

.. rst-class:: classref-enumeration

enum **FeedImage**: :ref:`🔗<enum_CameraServer_FeedImage>`

.. _class_CameraServer_constant_FEED_RGBA_IMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`FeedImage<enum_CameraServer_FeedImage>` **FEED_RGBA_IMAGE** = ``0``

L'immagine nel formato RGBA della fotocamera.

.. _class_CameraServer_constant_FEED_YCBCR_IMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`FeedImage<enum_CameraServer_FeedImage>` **FEED_YCBCR_IMAGE** = ``0``

L'immagine nel formato `YCbCr <https://en.wikipedia.org/wiki/YCbCr>`__ della fotocamera.

.. _class_CameraServer_constant_FEED_Y_IMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`FeedImage<enum_CameraServer_FeedImage>` **FEED_Y_IMAGE** = ``0``

Immagine del componente Y della fotocamera.

.. _class_CameraServer_constant_FEED_CBCR_IMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`FeedImage<enum_CameraServer_FeedImage>` **FEED_CBCR_IMAGE** = ``1``

Immagine del componente CbCr della fotocamera.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CameraServer_property_monitoring_feeds:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitoring_feeds** = ``false`` :ref:`🔗<class_CameraServer_property_monitoring_feeds>`

.. rst-class:: classref-property-setget

- |void| **set_monitoring_feeds**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitoring_feeds**\ (\ )

Se ``true``, il server sta monitorando attivamente i feed della fotocamera disponibili.

Questo ha un impatto negativo sulle prestazioni, quindi impostalo su ``true`` solo quando accedi attivamente alla fotocamera.

\ **Nota:** Dopo averlo impostato su ``true``, è possibile ricevere feed aggiornati della telecamera attraverso il segnale :ref:`camera_feeds_updated<class_CameraServer_signal_camera_feeds_updated>`.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        CameraServer.camera_feeds_updated.connect(_on_camera_feeds_updated)
        CameraServer.monitoring_feeds = true

    func _on_camera_feeds_updated():
        var feeds = CameraServer.feeds()

 .. code-tab:: csharp

    public override void _Ready()
    {
        CameraServer.CameraFeedsUpdated += OnCameraFeedsUpdated;
        CameraServer.MonitoringFeeds = true;
    }

    void OnCameraFeedsUpdated()
    {
        var feeds = CameraServer.Feeds();
    }



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_CameraServer_method_add_feed:

.. rst-class:: classref-method

|void| **add_feed**\ (\ feed\: :ref:`CameraFeed<class_CameraFeed>`\ ) :ref:`🔗<class_CameraServer_method_add_feed>`

Aggiunge il ``feed`` di fotocamera al server di telecamera.

.. rst-class:: classref-item-separator

----

.. _class_CameraServer_method_feeds:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`CameraFeed<class_CameraFeed>`\] **feeds**\ (\ ) :ref:`🔗<class_CameraServer_method_feeds>`

Restituisce un array di :ref:`CameraFeed<class_CameraFeed>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraServer_method_get_feed:

.. rst-class:: classref-method

:ref:`CameraFeed<class_CameraFeed>` **get_feed**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CameraServer_method_get_feed>`

Restituisce il :ref:`CameraFeed<class_CameraFeed>` corrispondente alla fotocamera con l'``index`` fornito.

.. rst-class:: classref-item-separator

----

.. _class_CameraServer_method_get_feed_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_feed_count**\ (\ ) :ref:`🔗<class_CameraServer_method_get_feed_count>`

Restituisce il numero di :ref:`CameraFeed<class_CameraFeed>` registrati.

.. rst-class:: classref-item-separator

----

.. _class_CameraServer_method_remove_feed:

.. rst-class:: classref-method

|void| **remove_feed**\ (\ feed\: :ref:`CameraFeed<class_CameraFeed>`\ ) :ref:`🔗<class_CameraServer_method_remove_feed>`

Rimuove il ``feed`` della fotocamera specificata.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
