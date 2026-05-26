:github_url: hide

.. _class_StreamPeerExtension:

StreamPeerExtension
===================

**继承：** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

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

方法说明
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

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
