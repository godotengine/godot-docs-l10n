:github_url: hide

.. _class_RenderSceneBuffersExtension:

RenderSceneBuffersExtension
===========================

**繼承：** :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

此類允許在 GDExtension 中實作 RenderSceneBuffer。

.. rst-class:: classref-introduction-group

說明
----

此類允許在 GDExtension 中實作 RenderSceneBuffer。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_configure<class_RenderSceneBuffersExtension_private_method__configure>`\ (\ config\: :ref:`RenderSceneBuffersConfiguration<class_RenderSceneBuffersConfiguration>`\ ) |virtual|          |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_anisotropic_filtering_level<class_RenderSceneBuffersExtension_private_method__set_anisotropic_filtering_level>`\ (\ anisotropic_filtering_level\: :ref:`int<class_int>`\ ) |virtual| |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_fsr_sharpness<class_RenderSceneBuffersExtension_private_method__set_fsr_sharpness>`\ (\ fsr_sharpness\: :ref:`float<class_float>`\ ) |virtual|                                       |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_texture_mipmap_bias<class_RenderSceneBuffersExtension_private_method__set_texture_mipmap_bias>`\ (\ texture_mipmap_bias\: :ref:`float<class_float>`\ ) |virtual|                     |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_use_debanding<class_RenderSceneBuffersExtension_private_method__set_use_debanding>`\ (\ use_debanding\: :ref:`bool<class_bool>`\ ) |virtual|                                         |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RenderSceneBuffersExtension_private_method__configure:

.. rst-class:: classref-method

|void| **_configure**\ (\ config\: :ref:`RenderSceneBuffersConfiguration<class_RenderSceneBuffersConfiguration>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__configure>`

在 GDExtension 中實作此功能以處理視窗的（重新）大小調整。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersExtension_private_method__set_anisotropic_filtering_level:

.. rst-class:: classref-method

|void| **_set_anisotropic_filtering_level**\ (\ anisotropic_filtering_level\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__set_anisotropic_filtering_level>`

在 GDExtension 中實作該功能以更改各向異性過濾層級。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersExtension_private_method__set_fsr_sharpness:

.. rst-class:: classref-method

|void| **_set_fsr_sharpness**\ (\ fsr_sharpness\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__set_fsr_sharpness>`

在 GDExtension 中實作此功能以記錄新的 FSR 銳利度值。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersExtension_private_method__set_texture_mipmap_bias:

.. rst-class:: classref-method

|void| **_set_texture_mipmap_bias**\ (\ texture_mipmap_bias\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__set_texture_mipmap_bias>`

在 GDExtension 中實作此功能以變更紋理 mipmap 偏差。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersExtension_private_method__set_use_debanding:

.. rst-class:: classref-method

|void| **_set_use_debanding**\ (\ use_debanding\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__set_use_debanding>`

在 GDExtension 中實作此功能以對解帶旗標的變更做出反應。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
