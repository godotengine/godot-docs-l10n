:github_url: hide

.. _class_GLTFLight:

GLTFLight
=========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表 glTF 燈光。

.. rst-class:: classref-introduction-group

說明
----

代表由 ``KHR_lights_punctual`` glTF 擴充定義的燈光。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`執行時檔案載入與儲存 <../tutorials/io/runtime_file_loading_and_saving>`

- `KHR_lights_punctual glTF 擴充規格 <https://github.com/KhronosGroup/glTF/blob/main/extensions/2.0/Khronos/KHR_lights_punctual>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`   | :ref:`color<class_GLTFLight_property_color>`                       | ``Color(1, 1, 1, 1)`` |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`   | :ref:`inner_cone_angle<class_GLTFLight_property_inner_cone_angle>` | ``0.0``               |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`   | :ref:`intensity<class_GLTFLight_property_intensity>`               | ``1.0``               |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>` | :ref:`light_type<class_GLTFLight_property_light_type>`             | ``""``                |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`   | :ref:`outer_cone_angle<class_GLTFLight_property_outer_cone_angle>` | ``0.7853982``         |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`   | :ref:`range<class_GLTFLight_property_range>`                       | ``inf``               |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFLight<class_GLTFLight>`   | :ref:`from_dictionary<class_GLTFLight_method_from_dictionary>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static|                                                     |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFLight<class_GLTFLight>`   | :ref:`from_node<class_GLTFLight_method_from_node>`\ (\ light_node\: :ref:`Light3D<class_Light3D>`\ ) |static|                                                                       |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`get_additional_data<class_GLTFLight_method_get_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`\ )                                                  |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_additional_data<class_GLTFLight_method_set_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`to_dictionary<class_GLTFLight_method_to_dictionary>`\ (\ ) |const|                                                                                                            |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Light3D<class_Light3D>`       | :ref:`to_node<class_GLTFLight_method_to_node>`\ (\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GLTFLight_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_GLTFLight_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

燈光線上性空間中的 :ref:`Color<class_Color>`\ 。預設為白色。如果為黑色則燈光不會產生任何效果。

該值為線性，與 glTF 一致，但是匯入建立 Godot :ref:`Light3D<class_Light3D>` 時會轉換至非線性 sRGB 空間，將 Godot :ref:`Light3D<class_Light3D>` 匯出為 glTF 時會轉換至線性空間。

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_property_inner_cone_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **inner_cone_angle** = ``0.0`` :ref:`🔗<class_GLTFLight_property_inner_cone_angle>`

.. rst-class:: classref-property-setget

- |void| **set_inner_cone_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_inner_cone_angle**\ (\ )

聚光燈下圓錐體的內角。必須小於等於外錐角。

在這個角度內，光線處於全亮狀態。在內錐角和外錐角之間，存在一個從全亮度到零亮度的過渡。建立 Godot :ref:`SpotLight3D<class_SpotLight3D>` 時，內外錐角之間的比率將被來計算光的衰減。

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_property_intensity:

.. rst-class:: classref-property

:ref:`float<class_float>` **intensity** = ``1.0`` :ref:`🔗<class_GLTFLight_property_intensity>`

.. rst-class:: classref-property-setget

- |void| **set_intensity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_intensity**\ (\ )

光的強度。對於點光和聚光，用燭光（流明/立體光）表示；對於平行光，用勒克斯（流明/平方米）表示。在建立 Godot 燈光時，這個值會被轉換為無單位的乘數。

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_property_light_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **light_type** = ``""`` :ref:`🔗<class_GLTFLight_property_light_type>`

.. rst-class:: classref-property-setget

- |void| **set_light_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_light_type**\ (\ )

燈光的型別。Godot接受的值有“point”、“spot”、“directional”，分別對應 Godot 的 :ref:`OmniLight3D<class_OmniLight3D>`\ 、\ :ref:`SpotLight3D<class_SpotLight3D>`\ 、\ :ref:`DirectionalLight3D<class_DirectionalLight3D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_property_outer_cone_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **outer_cone_angle** = ``0.7853982`` :ref:`🔗<class_GLTFLight_property_outer_cone_angle>`

.. rst-class:: classref-property-setget

- |void| **set_outer_cone_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_outer_cone_angle**\ (\ )

聚光燈下圓錐體的外角。必須大於等於內錐角。

在這個角度，光線會下降到零亮度。在內錐角和外錐角之間，存在一個從全亮度到零亮度的過渡。如果這個角度是一個半圓，那麼聚光燈會向所有方向發射。建立一個 Godot :ref:`SpotLight3D<class_SpotLight3D>` 時，外錐角被用作聚光燈的角度。

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_property_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **range** = ``inf`` :ref:`🔗<class_GLTFLight_property_range>`

.. rst-class:: classref-property-setget

- |void| **set_range**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_range**\ (\ )

燈光的範圍，超過這個範圍燈光無效。沒有定義範圍的 glTF 燈光的行為與物理燈光一樣（範圍無限）。建立 Godot 燈光時，範圍限制在 ``4096.0``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GLTFLight_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFLight<class_GLTFLight>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFLight_method_from_dictionary>`

通過解析給定的 :ref:`Dictionary<class_Dictionary>` 新建 GLTFLight 實例。

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_method_from_node:

.. rst-class:: classref-method

:ref:`GLTFLight<class_GLTFLight>` **from_node**\ (\ light_node\: :ref:`Light3D<class_Light3D>`\ ) |static| :ref:`🔗<class_GLTFLight_method_from_node>`

從給定的 Godot :ref:`Light3D<class_Light3D>` 節點新建 GLTFLight 實例。

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_method_get_additional_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_GLTFLight_method_get_additional_data>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_method_set_additional_data:

.. rst-class:: classref-method

|void| **set_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GLTFLight_method_set_additional_data>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFLight_method_to_dictionary>`

將這個 GLTFLight 實例序列化為 :ref:`Dictionary<class_Dictionary>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_method_to_node:

.. rst-class:: classref-method

:ref:`Light3D<class_Light3D>` **to_node**\ (\ ) |const| :ref:`🔗<class_GLTFLight_method_to_node>`

將這個 GLTFLight 實例轉換為 Godot :ref:`Light3D<class_Light3D>` 節點。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
