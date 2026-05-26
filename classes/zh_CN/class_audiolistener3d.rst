:github_url: hide

.. meta::
	:keywords: sound

.. _class_AudioListener3D:

AudioListener3D
===============

**继承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

覆盖听到声音的位置。

.. rst-class:: classref-introduction-group

描述
----

一旦添加到场景树并使用 :ref:`make_current()<class_AudioListener3D_method_make_current>` 启用，该节点将覆盖听到声音的位置。这可用于从与 :ref:`Camera3D<class_Camera3D>` 不同的位置聆听。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` | :ref:`doppler_tracking<class_AudioListener3D_property_doppler_tracking>` | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`clear_current<class_AudioListener3D_method_clear_current>`\ (\ )                           |
   +---------------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_listener_transform<class_AudioListener3D_method_get_listener_transform>`\ (\ ) |const| |
   +---------------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_current<class_AudioListener3D_method_is_current>`\ (\ ) |const|                         |
   +---------------------------------------+--------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`make_current<class_AudioListener3D_method_make_current>`\ (\ )                             |
   +---------------------------------------+--------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_AudioListener3D_DopplerTracking:

.. rst-class:: classref-enumeration

enum **DopplerTracking**: :ref:`🔗<enum_AudioListener3D_DopplerTracking>`

.. _class_AudioListener3D_constant_DOPPLER_TRACKING_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` **DOPPLER_TRACKING_DISABLED** = ``0``

禁用\ `多普勒效应 <https://en.wikipedia.org/wiki/Doppler_effect>`__\ 模拟（默认）。

.. _class_AudioListener3D_constant_DOPPLER_TRACKING_IDLE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` **DOPPLER_TRACKING_IDLE_STEP** = ``1``

通过在 ``_process`` 中追踪对象位置的变化，来模拟 `Doppler effect <https://en.wikipedia.org/wiki/Doppler_effect>`__ 。这个监听器（listener）与那些对象之间的相对速度变化，会影响音频的听感（具体表现为改变音频的 :ref:`AudioStreamPlayer3D.pitch_scale<class_AudioStreamPlayer3D_property_pitch_scale>` 属性）。

.. _class_AudioListener3D_constant_DOPPLER_TRACKING_PHYSICS_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` **DOPPLER_TRACKING_PHYSICS_STEP** = ``2``

通过在 ``_physics_process`` 中追踪物体位置的变化，来模拟 `Doppler effect <https://en.wikipedia.org/wiki/Doppler_effect>`__\ 。该监听器（listener）与这些物体之间的相对速度变化，会影响音频的听感（具体表现为改变音频的 :ref:`AudioStreamPlayer3D.pitch_scale<class_AudioStreamPlayer3D_property_pitch_scale>` 属性）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AudioListener3D_property_doppler_tracking:

.. rst-class:: classref-property

:ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` **doppler_tracking** = ``0`` :ref:`🔗<class_AudioListener3D_property_doppler_tracking>`

.. rst-class:: classref-property-setget

- |void| **set_doppler_tracking**\ (\ value\: :ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>`\ )
- :ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` **get_doppler_tracking**\ (\ )

如果不是 :ref:`DOPPLER_TRACKING_DISABLED<class_AudioListener3D_constant_DOPPLER_TRACKING_DISABLED>`\ ，则该监听器将在特定的 ``_process`` 方法中，为变化的对象模拟\ `多普勒效应 <https://zh.wikipedia.org/wiki/%E5%A4%9A%E6%99%AE%E5%8B%92%E6%95%88%E5%BA%94>`__\ 。

\ **注意：**\ 多普勒效应仅在 :ref:`AudioStreamPlayer3D.doppler_tracking<class_AudioStreamPlayer3D_property_doppler_tracking>` 未设置为 :ref:`AudioStreamPlayer3D.DOPPLER_TRACKING_DISABLED<class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_DISABLED>` 时才会在 :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>` 上听到。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AudioListener3D_method_clear_current:

.. rst-class:: classref-method

|void| **clear_current**\ (\ ) :ref:`🔗<class_AudioListener3D_method_clear_current>`

禁用该监听器，用当前相机的监听器代替。

.. rst-class:: classref-item-separator

----

.. _class_AudioListener3D_method_get_listener_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_listener_transform**\ (\ ) |const| :ref:`🔗<class_AudioListener3D_method_get_listener_transform>`

返回该监听器的全局正交归一化 :ref:`Transform3D<class_Transform3D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioListener3D_method_is_current:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_current**\ (\ ) |const| :ref:`🔗<class_AudioListener3D_method_is_current>`

如果使用 :ref:`make_current()<class_AudioListener3D_method_make_current>` 将监听器设为当前，则返回 ``true``\ ，否则返回 ``false``\ 。

\ **注意：**\ 场景树中标记为“当前”的 AudioListener3D 可能不止一个，但只会使用最后被设置为当前的那个。

.. rst-class:: classref-item-separator

----

.. _class_AudioListener3D_method_make_current:

.. rst-class:: classref-method

|void| **make_current**\ (\ ) :ref:`🔗<class_AudioListener3D_method_make_current>`

启用该监听器。将覆盖当前相机的监听器。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
