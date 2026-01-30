:github_url: hide

.. _class_BitMap:

BitMap
======

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

布尔矩阵。

.. rst-class:: classref-introduction-group

描述
----

布尔值二维数组，可以用来高效存储二进制矩阵（每个矩阵元素只占一个比特位），并使用自然的笛卡尔坐标查询数值。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`                                                        | :ref:`convert_to_image<class_BitMap_method_convert_to_image>`\ (\ ) |const|                                                                                       |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`create<class_BitMap_method_create>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )                                                                           |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`create_from_image_alpha<class_BitMap_method_create_from_image_alpha>`\ (\ image\: :ref:`Image<class_Image>`, threshold\: :ref:`float<class_float>` = 0.1\ ) |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`get_bit<class_BitMap_method_get_bit>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |const|                                                   |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`get_bitv<class_BitMap_method_get_bitv>`\ (\ position\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                           |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                                                  | :ref:`get_size<class_BitMap_method_get_size>`\ (\ ) |const|                                                                                                       |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                            | :ref:`get_true_bit_count<class_BitMap_method_get_true_bit_count>`\ (\ ) |const|                                                                                   |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`grow_mask<class_BitMap_method_grow_mask>`\ (\ pixels\: :ref:`int<class_int>`, rect\: :ref:`Rect2i<class_Rect2i>`\ )                                         |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`opaque_to_polygons<class_BitMap_method_opaque_to_polygons>`\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, epsilon\: :ref:`float<class_float>` = 2.0\ ) |const|    |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`resize<class_BitMap_method_resize>`\ (\ new_size\: :ref:`Vector2i<class_Vector2i>`\ )                                                                       |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_bit<class_BitMap_method_set_bit>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, bit\: :ref:`bool<class_bool>`\ )                            |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_bit_rect<class_BitMap_method_set_bit_rect>`\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, bit\: :ref:`bool<class_bool>`\ )                                    |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_bitv<class_BitMap_method_set_bitv>`\ (\ position\: :ref:`Vector2i<class_Vector2i>`, bit\: :ref:`bool<class_bool>`\ )                                    |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_BitMap_method_convert_to_image:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **convert_to_image**\ (\ ) |const| :ref:`🔗<class_BitMap_method_convert_to_image>`

返回与该位图大小相同且具有 :ref:`Image.FORMAT_L8<class_Image_constant_FORMAT_L8>` 类型的 :ref:`Format<enum_Image_Format>` 的图像。该位图中的 ``true`` 位被转换为白色像素，\ ``false`` 位被转换为黑色像素。

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_create:

.. rst-class:: classref-method

|void| **create**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_BitMap_method_create>`

创建一个指定尺寸的位图，用 ``false`` 填充。

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_create_from_image_alpha:

.. rst-class:: classref-method

|void| **create_from_image_alpha**\ (\ image\: :ref:`Image<class_Image>`, threshold\: :ref:`float<class_float>` = 0.1\ ) :ref:`🔗<class_BitMap_method_create_from_image_alpha>`

创建一个匹配给定图像大小的位图，如果该位图的 Alpha 值等于或小于 ``threshold``\ ，则位图的每个元素都被设置为 ``false``\ ；否则被设置为 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_get_bit:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_bit**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BitMap_method_get_bit>`

返回位图在指定位置的值。

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_get_bitv:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_bitv**\ (\ position\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_BitMap_method_get_bitv>`

返回位图在指定位置的值。

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_size**\ (\ ) |const| :ref:`🔗<class_BitMap_method_get_size>`

返回位图的尺寸。

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_get_true_bit_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_true_bit_count**\ (\ ) |const| :ref:`🔗<class_BitMap_method_get_true_bit_count>`

返回设置为 ``true`` 的位图元素的数量。

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_grow_mask:

.. rst-class:: classref-method

|void| **grow_mask**\ (\ pixels\: :ref:`int<class_int>`, rect\: :ref:`Rect2i<class_Rect2i>`\ ) :ref:`🔗<class_BitMap_method_grow_mask>`

对位图进行形态学膨胀或腐蚀操作。如果 ``pixels`` 为正，则对位图执行膨胀。如果 ``pixels`` 为负，则对位图执行腐蚀。\ ``rect`` 定义进行形态学操作的区域。位于 ``rect``] 之外的像素不会被 :ref:`grow_mask()<class_BitMap_method_grow_mask>` 影响。

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_opaque_to_polygons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **opaque_to_polygons**\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, epsilon\: :ref:`float<class_float>` = 2.0\ ) |const| :ref:`🔗<class_BitMap_method_opaque_to_polygons>`

创建一个多边形 :ref:`Array<class_Array>`\ ，以覆盖位图的矩形部分。它使用行进方块算法，然后使用 Ramer-Douglas-Peucker（RDP）减少顶点数。每个多边形都被描述为其顶点的 :ref:`PackedVector2Array<class_PackedVector2Array>`\ 。

要获取覆盖整个位图的多边形，请传递：

::

    Rect2(Vector2(), get_size())

\ ``epsilon`` 被传递给 RDP，以控制多边形覆盖位图的准确程度：\ ``epsilon`` 越低，对应的多边形中的点越多。

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_resize:

.. rst-class:: classref-method

|void| **resize**\ (\ new_size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_BitMap_method_resize>`

将该图像的大小修改为 ``new_size``\ 。

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_set_bit:

.. rst-class:: classref-method

|void| **set_bit**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, bit\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BitMap_method_set_bit>`

将位图中指定位置的元素设置为指定值。

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_set_bit_rect:

.. rst-class:: classref-method

|void| **set_bit_rect**\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, bit\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BitMap_method_set_bit_rect>`

将位图的矩形部分设置为指定值。

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_set_bitv:

.. rst-class:: classref-method

|void| **set_bitv**\ (\ position\: :ref:`Vector2i<class_Vector2i>`, bit\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BitMap_method_set_bitv>`

将位图中指定位置的元素设置为指定值。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
