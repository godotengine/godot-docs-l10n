:github_url: hide

.. _class_OpenXRFrameSynthesisExtension:

OpenXRFrameSynthesisExtension
=============================

**继承：** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

OpenXR 帧合成扩展允许在较低帧率下进行高级重投影。

.. rst-class:: classref-introduction-group

描述
----

该类实现了 `OpenXR 帧合成扩展 <https://registry.khronos.org/OpenXR/specs/1.1/html/xrspec.html#XR_EXT_frame_synthesis>`__\ 。如果在项目设置中启用，并且所使用的 XR 运行时也支持时，则帧合成技术会使用先进的重投影技术来插入额外的帧，从而使你的 XR 体验达到设备的完整帧率。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`enabled<class_OpenXRFrameSynthesisExtension_property_enabled>`                           | ``false`` |
   +-------------------------+------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`relax_frame_interval<class_OpenXRFrameSynthesisExtension_property_relax_frame_interval>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_available<class_OpenXRFrameSynthesisExtension_method_is_available>`\ (\ ) |const| |
   +-------------------------+--------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`skip_next_frame<class_OpenXRFrameSynthesisExtension_method_skip_next_frame>`\ (\ )   |
   +-------------------------+--------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_OpenXRFrameSynthesisExtension_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``false`` :ref:`🔗<class_OpenXRFrameSynthesisExtension_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

启用帧合成功能。为 ``true`` 时，运动矢量和深度数据将提供给 XR 运行时。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFrameSynthesisExtension_property_relax_frame_interval:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **relax_frame_interval** = ``false`` :ref:`🔗<class_OpenXRFrameSynthesisExtension_property_relax_frame_interval>`

.. rst-class:: classref-property-setget

- |void| **set_relax_frame_interval**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_relax_frame_interval**\ (\ )

如果为 ``true``\ ，则通知 XR 运行时我们将以大大降低的帧率提供帧数据。如果你预计应用程序将以较低的帧率运行，并且希望注入多个重投影帧时，请启用该选项。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRFrameSynthesisExtension_method_is_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_available**\ (\ ) |const| :ref:`🔗<class_OpenXRFrameSynthesisExtension_method_is_available>`

如果项目设置中启用了帧合成功能，并且当前的 XR 运行时支持帧合成，则返回 ``true``\ 。返回的值仅在 OpenXR 初始化后才有效。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFrameSynthesisExtension_method_skip_next_frame:

.. rst-class:: classref-method

|void| **skip_next_frame**\ (\ ) :ref:`🔗<class_OpenXRFrameSynthesisExtension_method_skip_next_frame>`

在提供运动矢量和深度数据时，将下一帧加入队列以跳过。在玩家瞬移或执行类似操作导致玩家位置发生变化后调用该函数，以防止由于该移动导致重投影结果不正确。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
