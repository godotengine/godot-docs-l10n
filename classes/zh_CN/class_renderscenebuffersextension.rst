:github_url: hide

.. _class_RenderSceneBuffersExtension:

RenderSceneBuffersExtension
===========================

**继承：** :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

该类允许在 GDExtension 中实现 RenderSceneBuffer。

.. rst-class:: classref-introduction-group

描述
----

该类允许在 GDExtension 中实现 RenderSceneBuffer。

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

方法说明
--------

.. _class_RenderSceneBuffersExtension_private_method__configure:

.. rst-class:: classref-method

|void| **_configure**\ (\ config\: :ref:`RenderSceneBuffersConfiguration<class_RenderSceneBuffersConfiguration>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__configure>`

在 GDExtension 中实现它来处理视口的（重新）大小调整。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersExtension_private_method__set_anisotropic_filtering_level:

.. rst-class:: classref-method

|void| **_set_anisotropic_filtering_level**\ (\ anisotropic_filtering_level\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__set_anisotropic_filtering_level>`

在 GDExtension 中实现该功能以更改各向异性过滤级别。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersExtension_private_method__set_fsr_sharpness:

.. rst-class:: classref-method

|void| **_set_fsr_sharpness**\ (\ fsr_sharpness\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__set_fsr_sharpness>`

在 GDExtension 中实现该功能以记录新的 FSR 锐度值。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersExtension_private_method__set_texture_mipmap_bias:

.. rst-class:: classref-method

|void| **_set_texture_mipmap_bias**\ (\ texture_mipmap_bias\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__set_texture_mipmap_bias>`

在 GDExtension 中实现该功能以更改纹理多级渐远纹理偏置。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersExtension_private_method__set_use_debanding:

.. rst-class:: classref-method

|void| **_set_use_debanding**\ (\ use_debanding\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__set_use_debanding>`

在 GDExtension 中实现该功能以对去色带标志的更改做出反应。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
