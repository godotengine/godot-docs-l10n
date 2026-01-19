:github_url: hide

.. _class_GLTFCamera:

GLTFCamera
==========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Represents a glTF camera.

.. rst-class:: classref-introduction-group

說明
----

Represents a camera as defined by the base glTF spec.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`執行時檔案載入與儲存 <../tutorials/io/runtime_file_loading_and_saving>`

- `glTF camera detailed specification <https://registry.khronos.org/glTF/specs/2.0/glTF-2.0.html#reference-camera>`__

- `glTF camera spec and example file <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_015_SimpleCameras.md>`__

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

The distance to the far culling boundary for this camera relative to its local Z axis, in meters. This maps to glTF's ``zfar`` property.

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_property_depth_near:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_near** = ``0.05`` :ref:`🔗<class_GLTFCamera_property_depth_near>`

.. rst-class:: classref-property-setget

- |void| **set_depth_near**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_near**\ (\ )

The distance to the near culling boundary for this camera relative to its local Z axis, in meters. This maps to glTF's ``znear`` property.

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_property_fov:

.. rst-class:: classref-property

:ref:`float<class_float>` **fov** = ``1.3089969`` :ref:`🔗<class_GLTFCamera_property_fov>`

.. rst-class:: classref-property-setget

- |void| **set_fov**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fov**\ (\ )

The FOV of the camera. This class and glTF define the camera FOV in radians, while Godot uses degrees. This maps to glTF's ``yfov`` property. This value is only used for perspective cameras, when :ref:`perspective<class_GLTFCamera_property_perspective>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_property_perspective:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **perspective** = ``true`` :ref:`🔗<class_GLTFCamera_property_perspective>`

.. rst-class:: classref-property-setget

- |void| **set_perspective**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_perspective**\ (\ )

If ``true``, the camera is in perspective mode. Otherwise, the camera is in orthographic/orthogonal mode. This maps to glTF's camera ``type`` property. See :ref:`Camera3D.projection<class_Camera3D_property_projection>` and the glTF spec for more information.

.. rst-class:: classref-item-separator

----

.. _class_GLTFCamera_property_size_mag:

.. rst-class:: classref-property

:ref:`float<class_float>` **size_mag** = ``0.5`` :ref:`🔗<class_GLTFCamera_property_size_mag>`

.. rst-class:: classref-property-setget

- |void| **set_size_mag**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_size_mag**\ (\ )

The size of the camera. This class and glTF define the camera size magnitude as a radius in meters, while Godot defines it as a diameter in meters. This maps to glTF's ``ymag`` property. This value is only used for orthographic/orthogonal cameras, when :ref:`perspective<class_GLTFCamera_property_perspective>` is ``false``.

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
