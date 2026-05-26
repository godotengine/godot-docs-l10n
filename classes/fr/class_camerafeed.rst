:github_url: hide

.. _class_CameraFeed:

CameraFeed
==========

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un flux de caméra vous donne accès à une caméra physique qui est connectée à votre appareil.

.. rst-class:: classref-introduction-group

Description
-----------

A camera feed gives you access to a single physical camera attached to your device. When enabled, Godot will start capturing frames from the camera which can then be used. See also :ref:`CameraServer<class_CameraServer>`.

\ **Note:** Many cameras will return YCbCr images which are split into two textures and need to be combined in a shader. Godot does this automatically for you if you set the environment to show the camera image in the background.

\ **Note:** This class is currently only implemented on Linux, Android, macOS, and iOS. On other platforms no **CameraFeed**\ s will be available. To get a **CameraFeed** on iOS, enable :ref:`EditorExportPlatformIOS.modules/camera<class_EditorExportPlatformIOS_property_modules/camera>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------+------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`feed_is_active<class_CameraFeed_property_feed_is_active>` | ``false``                          |
   +---------------------------------------+-----------------------------------------------------------------+------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`feed_transform<class_CameraFeed_property_feed_transform>` | ``Transform2D(1, 0, 0, -1, 0, 1)`` |
   +---------------------------------------+-----------------------------------------------------------------+------------------------------------+
   | :ref:`Array<class_Array>`             | :ref:`formats<class_CameraFeed_property_formats>`               | ``[]``                             |
   +---------------------------------------+-----------------------------------------------------------------+------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_activate_feed<class_CameraFeed_private_method__activate_feed>`\ (\ ) |virtual|                                                                            |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`_deactivate_feed<class_CameraFeed_private_method__deactivate_feed>`\ (\ ) |virtual|                                                                        |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                         | :ref:`_get_formats<class_CameraFeed_private_method__get_formats>`\ (\ ) |virtual| |const|                                                                        |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_set_format<class_CameraFeed_private_method__set_format>`\ (\ index\: :ref:`int<class_int>`, parameters\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`FeedDataType<enum_CameraFeed_FeedDataType>` | :ref:`get_datatype<class_CameraFeed_method_get_datatype>`\ (\ ) |const|                                                                                          |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_id<class_CameraFeed_method_get_id>`\ (\ ) |const|                                                                                                      |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_name<class_CameraFeed_method_get_name>`\ (\ ) |const|                                                                                                  |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`FeedPosition<enum_CameraFeed_FeedPosition>` | :ref:`get_position<class_CameraFeed_method_get_position>`\ (\ ) |const|                                                                                          |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_texture_tex_id<class_CameraFeed_method_get_texture_tex_id>`\ (\ feed_image_type\: :ref:`FeedImage<enum_CameraServer_FeedImage>`\ )                     |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_external<class_CameraFeed_method_set_external>`\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`\ )                                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`set_format<class_CameraFeed_method_set_format>`\ (\ index\: :ref:`int<class_int>`, parameters\: :ref:`Dictionary<class_Dictionary>`\ )                     |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_name<class_CameraFeed_method_set_name>`\ (\ name\: :ref:`String<class_String>`\ )                                                                      |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_position<class_CameraFeed_method_set_position>`\ (\ position\: :ref:`FeedPosition<enum_CameraFeed_FeedPosition>`\ )                                    |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_rgb_image<class_CameraFeed_method_set_rgb_image>`\ (\ rgb_image\: :ref:`Image<class_Image>`\ )                                                         |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_ycbcr_image<class_CameraFeed_method_set_ycbcr_image>`\ (\ ycbcr_image\: :ref:`Image<class_Image>`\ )                                                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_ycbcr_images<class_CameraFeed_method_set_ycbcr_images>`\ (\ y_image\: :ref:`Image<class_Image>`, cbcr_image\: :ref:`Image<class_Image>`\ )             |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_CameraFeed_signal_format_changed:

.. rst-class:: classref-signal

**format_changed**\ (\ ) :ref:`🔗<class_CameraFeed_signal_format_changed>`

Émis lorsque le format a changé.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_signal_frame_changed:

.. rst-class:: classref-signal

**frame_changed**\ (\ ) :ref:`🔗<class_CameraFeed_signal_frame_changed>`

Émis lorsqu'un nouvelle trame est disponible.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_CameraFeed_FeedDataType:

.. rst-class:: classref-enumeration

enum **FeedDataType**: :ref:`🔗<enum_CameraFeed_FeedDataType>`

.. _class_CameraFeed_constant_FEED_NOIMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **FEED_NOIMAGE** = ``0``

Aucune image définie pour le flux.

.. _class_CameraFeed_constant_FEED_RGB:

.. rst-class:: classref-enumeration-constant

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **FEED_RGB** = ``1``

Le flux fournis des images au format RGB.

.. _class_CameraFeed_constant_FEED_YCBCR:

.. rst-class:: classref-enumeration-constant

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **FEED_YCBCR** = ``2``

Le flux fournis des images au format YCbCr qui doivent être converties en RGB.

.. _class_CameraFeed_constant_FEED_YCBCR_SEP:

.. rst-class:: classref-enumeration-constant

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **FEED_YCBCR_SEP** = ``3``

Fournis des images Y et CbCr séparées qui doivent être combinées puis converties en RGB.

.. _class_CameraFeed_constant_FEED_EXTERNAL:

.. rst-class:: classref-enumeration-constant

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **FEED_EXTERNAL** = ``4``

Le flux fournit une image externe.

.. rst-class:: classref-item-separator

----

.. _enum_CameraFeed_FeedPosition:

.. rst-class:: classref-enumeration

enum **FeedPosition**: :ref:`🔗<enum_CameraFeed_FeedPosition>`

.. _class_CameraFeed_constant_FEED_UNSPECIFIED:

.. rst-class:: classref-enumeration-constant

:ref:`FeedPosition<enum_CameraFeed_FeedPosition>` **FEED_UNSPECIFIED** = ``0``

Position non renseignée.

.. _class_CameraFeed_constant_FEED_FRONT:

.. rst-class:: classref-enumeration-constant

:ref:`FeedPosition<enum_CameraFeed_FeedPosition>` **FEED_FRONT** = ``1``

La caméra est placée à l'avant de l'appareil.

.. _class_CameraFeed_constant_FEED_BACK:

.. rst-class:: classref-enumeration-constant

:ref:`FeedPosition<enum_CameraFeed_FeedPosition>` **FEED_BACK** = ``2``

La caméra est placée à l'arrière de l'appareil.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_CameraFeed_property_feed_is_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **feed_is_active** = ``false`` :ref:`🔗<class_CameraFeed_property_feed_is_active>`

.. rst-class:: classref-property-setget

- |void| **set_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_active**\ (\ )

Si ``true``, le flux est actif.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_property_feed_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **feed_transform** = ``Transform2D(1, 0, 0, -1, 0, 1)`` :ref:`🔗<class_CameraFeed_property_feed_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

La transformation appliquée à l'image de la camera.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_property_formats:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **formats** = ``[]`` :ref:`🔗<class_CameraFeed_property_formats>`

.. rst-class:: classref-property-setget

- :ref:`Array<class_Array>` **get_formats**\ (\ )

Formats supportés par le flux. Chaque entrée est un :ref:`Dictionary<class_Dictionary>` décrivant les paramètres du format.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_CameraFeed_private_method__activate_feed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_activate_feed**\ (\ ) |virtual| :ref:`🔗<class_CameraFeed_private_method__activate_feed>`

Appelée lorsque le flux de la caméra est activé.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_private_method__deactivate_feed:

.. rst-class:: classref-method

|void| **_deactivate_feed**\ (\ ) |virtual| :ref:`🔗<class_CameraFeed_private_method__deactivate_feed>`

Appelée lorsque le flux de la caméra est désactivé.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_private_method__get_formats:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **_get_formats**\ (\ ) |virtual| |const| :ref:`🔗<class_CameraFeed_private_method__get_formats>`

Override this method to define supported formats of the camera feed.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_private_method__set_format:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_set_format**\ (\ index\: :ref:`int<class_int>`, parameters\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| :ref:`🔗<class_CameraFeed_private_method__set_format>`

Override this method to set the format of the camera feed.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_get_datatype:

.. rst-class:: classref-method

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **get_datatype**\ (\ ) |const| :ref:`🔗<class_CameraFeed_method_get_datatype>`

Renvoie le type de données d'images du flux.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_get_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_id**\ (\ ) |const| :ref:`🔗<class_CameraFeed_method_get_id>`

Renvoie l'identifiant unique de ce flux.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_name**\ (\ ) |const| :ref:`🔗<class_CameraFeed_method_get_name>`

Renvoie le nom de la caméra.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_get_position:

.. rst-class:: classref-method

:ref:`FeedPosition<enum_CameraFeed_FeedPosition>` **get_position**\ (\ ) |const| :ref:`🔗<class_CameraFeed_method_get_position>`

Renvoie la position de la caméra sur cet appareil.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_get_texture_tex_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_texture_tex_id**\ (\ feed_image_type\: :ref:`FeedImage<enum_CameraServer_FeedImage>`\ ) :ref:`🔗<class_CameraFeed_method_get_texture_tex_id>`

Renvoie l'ID de backend de la texture (utilisable par certaines bibliothèques externes qui ont besoin d'une handle vers une texture pour écrire des données).

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_external:

.. rst-class:: classref-method

|void| **set_external**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CameraFeed_method_set_external>`

Définit le flux avec un flux externe fourni par une autre bibliothèque.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_format:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_format**\ (\ index\: :ref:`int<class_int>`, parameters\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_CameraFeed_method_set_format>`

Définit les paramètres du format du flux pour l'index ``index`` donné dans le tableau :ref:`formats<class_CameraFeed_property_formats>`. Renvoie ``true`` lors du succès. Par défaut, le flux encodé YUYV est transformé en :ref:`FEED_RGB<class_CameraFeed_constant_FEED_RGB>`. Le format de sortie du flux encodé YUYV peut être modifié en définissant l'entrée ``output`` de ``parameters`` à l'un des éléments suivants :

- ``"separate"`` résultera en :ref:`FEED_YCBCR_SEP<class_CameraFeed_constant_FEED_YCBCR_SEP>`;

- ``"grayscale"`` résultera en un :ref:`FEED_RGB<class_CameraFeed_constant_FEED_RGB>` dé-saturé;

- ``"copy"`` résultera en :ref:`FEED_YCBCR<class_CameraFeed_constant_FEED_YCBCR>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_name:

.. rst-class:: classref-method

|void| **set_name**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CameraFeed_method_set_name>`

Définit le nom de la caméra.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_position:

.. rst-class:: classref-method

|void| **set_position**\ (\ position\: :ref:`FeedPosition<enum_CameraFeed_FeedPosition>`\ ) :ref:`🔗<class_CameraFeed_method_set_position>`

Définit la position de cette caméra.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_rgb_image:

.. rst-class:: classref-method

|void| **set_rgb_image**\ (\ rgb_image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_CameraFeed_method_set_rgb_image>`

Définit l'image RGB pour ce flux.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_ycbcr_image:

.. rst-class:: classref-method

|void| **set_ycbcr_image**\ (\ ycbcr_image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_CameraFeed_method_set_ycbcr_image>`

Définit l'image YCbCr pour ce flux.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_ycbcr_images:

.. rst-class:: classref-method

|void| **set_ycbcr_images**\ (\ y_image\: :ref:`Image<class_Image>`, cbcr_image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_CameraFeed_method_set_ycbcr_images>`

Définit les images Y et CbCr pour ce flux.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
