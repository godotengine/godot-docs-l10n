:github_url: hide

.. _class_GLTFSpecGloss:

GLTFSpecGloss
=============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Archived glTF extension for specular/glossy materials.

.. rst-class:: classref-introduction-group

說明
----

KHR_materials_pbrSpecularGlossiness is an archived glTF extension. This means that it is deprecated and not recommended for new files. However, it is still supported for loading old files.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`執行時檔案載入與儲存 <../tutorials/io/runtime_file_loading_and_saving>`

- `KHR_materials_pbrSpecularGlossiness glTF extension spec <https://github.com/KhronosGroup/glTF/blob/main/extensions/2.0/Archived/KHR_materials_pbrSpecularGlossiness>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`diffuse_factor<class_GLTFSpecGloss_property_diffuse_factor>`   | ``Color(1, 1, 1, 1)`` |
   +---------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`Image<class_Image>` | :ref:`diffuse_img<class_GLTFSpecGloss_property_diffuse_img>`         |                       |
   +---------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>` | :ref:`gloss_factor<class_GLTFSpecGloss_property_gloss_factor>`       | ``1.0``               |
   +---------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`Image<class_Image>` | :ref:`spec_gloss_img<class_GLTFSpecGloss_property_spec_gloss_img>`   |                       |
   +---------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`specular_factor<class_GLTFSpecGloss_property_specular_factor>` | ``Color(1, 1, 1, 1)`` |
   +---------------------------+----------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GLTFSpecGloss_property_diffuse_factor:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **diffuse_factor** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_GLTFSpecGloss_property_diffuse_factor>`

.. rst-class:: classref-property-setget

- |void| **set_diffuse_factor**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_diffuse_factor**\ (\ )

該材質反射漫反射係數。

.. rst-class:: classref-item-separator

----

.. _class_GLTFSpecGloss_property_diffuse_img:

.. rst-class:: classref-property

:ref:`Image<class_Image>` **diffuse_img** :ref:`🔗<class_GLTFSpecGloss_property_diffuse_img>`

.. rst-class:: classref-property-setget

- |void| **set_diffuse_img**\ (\ value\: :ref:`Image<class_Image>`\ )
- :ref:`Image<class_Image>` **get_diffuse_img**\ (\ )

漫反射紋理。

.. rst-class:: classref-item-separator

----

.. _class_GLTFSpecGloss_property_gloss_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **gloss_factor** = ``1.0`` :ref:`🔗<class_GLTFSpecGloss_property_gloss_factor>`

.. rst-class:: classref-property-setget

- |void| **set_gloss_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gloss_factor**\ (\ )

材質的光澤度或光滑度。

.. rst-class:: classref-item-separator

----

.. _class_GLTFSpecGloss_property_spec_gloss_img:

.. rst-class:: classref-property

:ref:`Image<class_Image>` **spec_gloss_img** :ref:`🔗<class_GLTFSpecGloss_property_spec_gloss_img>`

.. rst-class:: classref-property-setget

- |void| **set_spec_gloss_img**\ (\ value\: :ref:`Image<class_Image>`\ )
- :ref:`Image<class_Image>` **get_spec_gloss_img**\ (\ )

鏡面光澤度紋理。

.. rst-class:: classref-item-separator

----

.. _class_GLTFSpecGloss_property_specular_factor:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **specular_factor** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_GLTFSpecGloss_property_specular_factor>`

.. rst-class:: classref-property-setget

- |void| **set_specular_factor**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_specular_factor**\ (\ )

材質的鏡面反射 RGB 顏色。不使用 Alpha 通道。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
