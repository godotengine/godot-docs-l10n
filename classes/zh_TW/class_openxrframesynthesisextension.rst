:github_url: hide

.. _class_OpenXRFrameSynthesisExtension:

OpenXRFrameSynthesisExtension
=============================

**繼承：** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

The OpenXR Frame synthesis extension allows for advanced reprojection at low(er) framerates.

.. rst-class:: classref-introduction-group

說明
----

This class implements the `OpenXR Frame synthesis extension <https://registry.khronos.org/OpenXR/specs/1.1/html/xrspec.html#XR_EXT_frame_synthesis>`__. When enabled in the project settings and supported by the XR runtime in use, frame synthesis uses advanced reprojection techniques to inject additional frames so that your XR experience hits the full frame rate of the device.

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_OpenXRFrameSynthesisExtension_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``false`` :ref:`🔗<class_OpenXRFrameSynthesisExtension_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Enable frame synthesis. When ``true`` motion vector and depth data is provided to the XR runtime.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFrameSynthesisExtension_property_relax_frame_interval:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **relax_frame_interval** = ``false`` :ref:`🔗<class_OpenXRFrameSynthesisExtension_property_relax_frame_interval>`

.. rst-class:: classref-property-setget

- |void| **set_relax_frame_interval**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_relax_frame_interval**\ (\ )

If ``true`` this informs the XR runtime we will be providing frames at a greatly reduced rate. Enable this when you expect your application to run at low framerates and wish to inject multiple reprojected frames.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRFrameSynthesisExtension_method_is_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_available**\ (\ ) |const| :ref:`🔗<class_OpenXRFrameSynthesisExtension_method_is_available>`

Returns ``true`` if frame synthesis is enabled in the project settings and the current XR runtime supports frame synthesis. The value returned will only be valid once OpenXR has been initialized.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFrameSynthesisExtension_method_skip_next_frame:

.. rst-class:: classref-method

|void| **skip_next_frame**\ (\ ) :ref:`🔗<class_OpenXRFrameSynthesisExtension_method_skip_next_frame>`

Queues the next frame to be skipped when supplying motion vector and depth data. Call this after teleporting your player or a similar action has moved the player to prevent incorrect reprojection results due to this movement.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
