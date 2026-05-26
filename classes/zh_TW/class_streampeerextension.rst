:github_url: hide

.. _class_StreamPeerExtension:

StreamPeerExtension
===================

**繼承：** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`_get_available_bytes<class_StreamPeerExtension_private_method__get_available_bytes>`\ (\ ) |virtual| |required| |const|                                                             |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`_get_data<class_StreamPeerExtension_private_method__get_data>`\ (\ r_buffer\: ``uint8_t*``, r_bytes\: :ref:`int<class_int>`, r_received\: ``int32_t*``\ ) |virtual|                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`_get_partial_data<class_StreamPeerExtension_private_method__get_partial_data>`\ (\ r_buffer\: ``uint8_t*``, r_bytes\: :ref:`int<class_int>`, r_received\: ``int32_t*``\ ) |virtual| |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`_put_data<class_StreamPeerExtension_private_method__put_data>`\ (\ data\: ``const uint8_t*``, bytes\: :ref:`int<class_int>`, r_sent\: ``int32_t*``\ ) |virtual|                     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`_put_partial_data<class_StreamPeerExtension_private_method__put_partial_data>`\ (\ data\: ``const uint8_t*``, bytes\: :ref:`int<class_int>`, r_sent\: ``int32_t*``\ ) |virtual|     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_StreamPeerExtension_private_method__get_available_bytes:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_available_bytes**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_StreamPeerExtension_private_method__get_available_bytes>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerExtension_private_method__get_data:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_get_data**\ (\ r_buffer\: ``uint8_t*``, r_bytes\: :ref:`int<class_int>`, r_received\: ``int32_t*``\ ) |virtual| :ref:`🔗<class_StreamPeerExtension_private_method__get_data>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerExtension_private_method__get_partial_data:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_get_partial_data**\ (\ r_buffer\: ``uint8_t*``, r_bytes\: :ref:`int<class_int>`, r_received\: ``int32_t*``\ ) |virtual| :ref:`🔗<class_StreamPeerExtension_private_method__get_partial_data>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerExtension_private_method__put_data:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_put_data**\ (\ data\: ``const uint8_t*``, bytes\: :ref:`int<class_int>`, r_sent\: ``int32_t*``\ ) |virtual| :ref:`🔗<class_StreamPeerExtension_private_method__put_data>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerExtension_private_method__put_partial_data:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_put_partial_data**\ (\ data\: ``const uint8_t*``, bytes\: :ref:`int<class_int>`, r_sent\: ``int32_t*``\ ) |virtual| :ref:`🔗<class_StreamPeerExtension_private_method__put_partial_data>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
