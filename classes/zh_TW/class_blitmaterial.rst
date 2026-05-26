:github_url: hide

.. _class_BlitMaterial:

BlitMaterial
============

**繼承：** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A material that processes blit calls to a DrawableTexture.

.. rst-class:: classref-introduction-group

說明
----

A material resource that can be used by DrawableTextures when processing blit calls to draw.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------+-----------------------------------------------------------+-------+
   | :ref:`BlendMode<enum_BlitMaterial_BlendMode>` | :ref:`blend_mode<class_BlitMaterial_property_blend_mode>` | ``0`` |
   +-----------------------------------------------+-----------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_BlitMaterial_BlendMode:

.. rst-class:: classref-enumeration

enum **BlendMode**: :ref:`🔗<enum_BlitMaterial_BlendMode>`

.. _class_BlitMaterial_constant_BLEND_MODE_MIX:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_BlitMaterial_BlendMode>` **BLEND_MODE_MIX** = ``0``

混合混合模式。假設顏色與 Alpha 值（不透明度）無關。

.. _class_BlitMaterial_constant_BLEND_MODE_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_BlitMaterial_BlendMode>` **BLEND_MODE_ADD** = ``1``

新增混合模式。

.. _class_BlitMaterial_constant_BLEND_MODE_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_BlitMaterial_BlendMode>` **BLEND_MODE_SUB** = ``2``

減去混合模式。

.. _class_BlitMaterial_constant_BLEND_MODE_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_BlitMaterial_BlendMode>` **BLEND_MODE_MUL** = ``3``

正片疊底混合模式。

.. _class_BlitMaterial_constant_BLEND_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_BlitMaterial_BlendMode>` **BLEND_MODE_DISABLED** = ``4``

No blending mode, direct color copy.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_BlitMaterial_property_blend_mode:

.. rst-class:: classref-property

:ref:`BlendMode<enum_BlitMaterial_BlendMode>` **blend_mode** = ``0`` :ref:`🔗<class_BlitMaterial_property_blend_mode>`

.. rst-class:: classref-property-setget

- |void| **set_blend_mode**\ (\ value\: :ref:`BlendMode<enum_BlitMaterial_BlendMode>`\ )
- :ref:`BlendMode<enum_BlitMaterial_BlendMode>` **get_blend_mode**\ (\ )

The manner in which the newly blitted texture is blended with the original DrawableTexture.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
