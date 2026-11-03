:github_url: hide

.. meta::
	:keywords: background, sky

.. _class_WorldEnvironment:

WorldEnvironment
================

**繼承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

整個場景的預設環境屬性，後期處理效果、照明和背景設定。

.. rst-class:: classref-introduction-group

說明
----

**WorldEnvironment** 節點用於為場景配置預設的 :ref:`Environment<class_Environment>`\ 。

\ **WorldEnvironment** 中定義的參數可以被設定為目前的 :ref:`Camera3D<class_Camera3D>` 上所設定的 :ref:`Environment<class_Environment>` 資源覆蓋。此外，在一個給定場景中，同一時間只能產生實體一個 **WorldEnvironment**\ 。

\ **WorldEnvironment** 允許使用者指定預設的照明參數（例如環境照明）、各種後處理效果（例如 SSAO、DOF、色調對應）、以及如何繪製背景（例如純色、天空盒）。通常，添加這些是為了提高場景的真實感/色彩平衡。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`環境和後期處理 <../tutorials/3d/environment_and_post_processing>`

- `3D 材質測試演示 <https://godotengine.org/asset-library/asset/2742>`__

- `第三人稱射擊（TPS）示範 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

屬性
----

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

屬性說明
--------

.. _class_WorldEnvironment_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_WorldEnvironment_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

:ref:`Camera3D<class_Camera3D>` 上未設定時 :ref:`CameraAttributes<class_CameraAttributes>` 時預設使用的資源。

.. rst-class:: classref-item-separator

----

.. _class_WorldEnvironment_property_compositor:

.. rst-class:: classref-property

:ref:`Compositor<class_Compositor>` **compositor** :ref:`🔗<class_WorldEnvironment_property_compositor>`

.. rst-class:: classref-property-setget

- |void| **set_compositor**\ (\ value\: :ref:`Compositor<class_Compositor>`\ )
- :ref:`Compositor<class_Compositor>` **get_compositor**\ (\ )

:ref:`Camera3D<class_Camera3D>` 上未設定時要使用的預設 :ref:`Compositor<class_Compositor>` 資源。

.. rst-class:: classref-item-separator

----

.. _class_WorldEnvironment_property_environment:

.. rst-class:: classref-property

:ref:`Environment<class_Environment>` **environment** :ref:`🔗<class_WorldEnvironment_property_environment>`

.. rst-class:: classref-property-setget

- |void| **set_environment**\ (\ value\: :ref:`Environment<class_Environment>`\ )
- :ref:`Environment<class_Environment>` **get_environment**\ (\ )

此 **WorldEnvironment** 世界環境所使用的 :ref:`Environment<class_Environment>` 環境資源，定義預設屬性。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
