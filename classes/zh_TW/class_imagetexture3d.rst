:github_url: hide

.. _class_ImageTexture3D:

ImageTexture3D
==============

**繼承：** :ref:`Texture3D<class_Texture3D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

具有 3 個維度的紋理。

.. rst-class:: classref-introduction-group

說明
----

**ImageTexture3D** 是一種具有寬度、高度、和深度的三維 :ref:`ImageTexture<class_ImageTexture>`\ 。另請參閱 :ref:`ImageTextureLayered<class_ImageTextureLayered>`\ 。

3D 紋理通常用於儲存 :ref:`FogMaterial<class_FogMaterial>` 的密度圖、\ :ref:`Environment<class_Environment>` 的色彩校正 LUT、\ :ref:`GPUParticlesAttractorVectorField3D<class_GPUParticlesAttractorVectorField3D>` 的向量場、和 :ref:`GPUParticlesCollisionSDF3D<class_GPUParticlesCollisionSDF3D>` 的碰撞圖。3D 紋理也可用於自訂著色器。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create<class_ImageTexture3D_method_create>`\ (\ format\: :ref:`Format<enum_Image_Format>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, use_mipmaps\: :ref:`bool<class_bool>`, data\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`update<class_ImageTexture3D_method_update>`\ (\ data\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ )                                                                                                                                                                                 |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ImageTexture3D_method_create:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create**\ (\ format\: :ref:`Format<enum_Image_Format>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, use_mipmaps\: :ref:`bool<class_bool>`, data\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) :ref:`🔗<class_ImageTexture3D_method_create>`

建立格式為 ``format``\ 、寬度為 ``width``\ 、高度為 ``height``\ 、色深為 ``depth`` 的 **ImageTexture3D**\ 。如果 ``use_mipmaps`` 為 ``true``\ ，則為該 **ImageTexture3D** 生成 Mipmap。

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture3D_method_update:

.. rst-class:: classref-method

|void| **update**\ (\ data\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) :ref:`🔗<class_ImageTexture3D_method_update>`

將紋理的現有資料替換為 ``data`` 中指定的圖層。\ ``data`` 的大小必須與用於 :ref:`create()<class_ImageTexture3D_method_create>` 的參數一致。換句話說，不能通過呼叫 :ref:`update()<class_ImageTexture3D_method_update>` 來調整紋理的大小或改變其格式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
