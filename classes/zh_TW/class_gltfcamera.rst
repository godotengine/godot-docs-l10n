:github_url: hide

.. _class_GLTFCamera:

GLTFCamera
==========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表 glTF 相機。

.. rst-class:: classref-introduction-group

說明
----

代表基礎 glTF 規格中定義的相機。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`執行時檔案載入與儲存 <../tutorials/io/runtime_file_loading_and_saving>`

- `glTF 相機的詳細規格 <https://registry.khronos.org/glTF/specs/2.0/glTF-2.0.html#reference-camera>`__

- `glTF 相機規格和範例檔案 <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_015_SimpleCameras.md>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`depth_far<class_GLTFCamera_property_depth_far>`     | ``4000.0``    |
   +---------------------------+-----------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`depth_near<class_GLTFCamera_property_depth_near>`   | ``0.05``      |
   +---------------------------+-----------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`fov<class_GLTFCamera_property_fov>`                 | ``1.3089969`` |
   +---------------------------+-----------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`   | :ref:`perspective<class_GLTFCamera_property_perspective>` | ``true``      |
   +---------------------------+-----------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`size_mag<class_GLTFCamera_property_size_mag>`       | ``0.5``       |
   +---------------------------+-----------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFCamera<class_GLTFCamera>` | :ref:`from_dictionary<class_GLTFCamera_method_from_dictionary>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFCamera<class_GLTFCamera>` | :ref:`from_node<class_GLTFCamera_method_from_node>`\ (\ camera_node\: :ref:`Camera3D<class_Camera3D>`\ ) |static|                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`to_dictionary<class_GLTFCamera_method_to_dictionary>`\ (\ ) |const|                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Camera3D<class_Camera3D>`     | :ref:`to_node<class_GLTFCamera_method_to_node>`\ (\ ) |const|                                                                    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GLTFCamera_property_depth_far:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_far** = ``4000.0`` :ref:`🔗<class_GLTFCamera_property_depth_far>`

.. rst-class:: classref-property-setget

- |void| **set_depth_far**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_far**\ (\ )

該相機與遠剔除邊界的距離，相對於其區域 Z 軸，單位為米。映射到 glTF 的 ``zfar`` 屬性。

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_property_depth_near:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_near** = ``0.05`` :ref:`🔗<class_GLTFCamera_property_depth_near>`

.. rst-class:: classref-property-setget

- |void| **set_depth_near**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_near**\ (\ )

該相機與近剔除邊界的距離，相對於其區域 Z 軸，單位為米。映射到 glTF 的 ``znear`` 屬性。

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_property_fov:

.. rst-class:: classref-property

:ref:`float<class_float>` **fov** = ``1.3089969`` :ref:`🔗<class_GLTFCamera_property_fov>`

.. rst-class:: classref-property-setget

- |void| **set_fov**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fov**\ (\ )

該相機的 FOV。這個類和 glTF 在定義相機 FOV 時使用的都是弧度，但 Godot 使用的是度。映射到 glTF 的 ``yfov`` 屬性。只在透視相機中使用，即 :ref:`perspective<class_GLTFCamera_property_perspective>` 為 ``true`` 時。

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_property_perspective:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **perspective** = ``true`` :ref:`🔗<class_GLTFCamera_property_perspective>`

.. rst-class:: classref-property-setget

- |void| **set_perspective**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_perspective**\ (\ )

如果為 ``true``\ ，則相機處於透視模式。否則相機處於正交模式。映射到 glTF 的相機 ``type`` 屬性。詳見 :ref:`Camera3D.projection<class_Camera3D_property_projection>` 及 glTF 規格。

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_property_size_mag:

.. rst-class:: classref-property

:ref:`float<class_float>` **size_mag** = ``0.5`` :ref:`🔗<class_GLTFCamera_property_size_mag>`

.. rst-class:: classref-property-setget

- |void| **set_size_mag**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_size_mag**\ (\ )

該相機的大小。這個類和 glTF 在定義相機大小尺度時使用的都是半徑的米數，但 Godot 使用的是直徑的米數。映射到 glTF 的 ``ymag`` 屬性。只在正交相機中使用，即 :ref:`perspective<class_GLTFCamera_property_perspective>` 為 ``false`` 時。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GLTFCamera_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFCamera<class_GLTFCamera>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFCamera_method_from_dictionary>`

通過解析給定的 :ref:`Dictionary<class_Dictionary>` 新建 GLTFCamera 實例。

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_method_from_node:

.. rst-class:: classref-method

:ref:`GLTFCamera<class_GLTFCamera>` **from_node**\ (\ camera_node\: :ref:`Camera3D<class_Camera3D>`\ ) |static| :ref:`🔗<class_GLTFCamera_method_from_node>`

從給定的 Godot :ref:`Camera3D<class_Camera3D>` 節點新建 GLTFCamera 實例。

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFCamera_method_to_dictionary>`

將這個 GLTFCamera 實例序列化為 :ref:`Dictionary<class_Dictionary>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_method_to_node:

.. rst-class:: classref-method

:ref:`Camera3D<class_Camera3D>` **to_node**\ (\ ) |const| :ref:`🔗<class_GLTFCamera_method_to_node>`

將這個 GLTFCamera 實例轉換為 Godot :ref:`Camera3D<class_Camera3D>` 節點。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
