:github_url: hide

.. _class_CanvasGroup:

CanvasGroup
===========

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

將若干 2D 節點合併至單次繪製操作。

.. rst-class:: classref-introduction-group

說明
----

**CanvasGroup** 的所有子 :ref:`CanvasItem<class_CanvasItem>` 節點會作為一個單獨的物件繪製。它允許在不混合的情況下繪製重疊的半透明 2D 節點（設定 **CanvasGroup** 的 :ref:`CanvasItem.self_modulate<class_CanvasItem_property_self_modulate>` 屬性來實作這一效果）。

\ **注意：**\ **CanvasGroup** 使用一個自訂著色器從背景緩衝區讀取以繪製其子節點。為 **CanvasGroup** 指定一個 :ref:`Material<class_Material>` 會覆蓋內建著色器。要在自訂 :ref:`Shader<class_Shader>` 中複製內建著色器的行為，請使用以下方法：

::

    shader_type canvas_item;
    render_mode unshaded;

    uniform sampler2D screen_texture : hint_screen_texture, repeat_disable, filter_nearest;

    void fragment() {
        vec4 c = textureLod(screen_texture, SCREEN_UV, 0.0);

        if (c.a > 0.0001) {
            c.rgb /= c.a;
        }

        COLOR *= c;
    }

\ **注意：**\ 由於 **CanvasGroup** 和 :ref:`CanvasItem.clip_children<class_CanvasItem_property_clip_children>` 都使用後台緩衝區，因此 **CanvasGroup** 的子級如果將其 :ref:`CanvasItem.clip_children<class_CanvasItem_property_clip_children>` 設定為 :ref:`CanvasItem.CLIP_CHILDREN_DISABLED<class_CanvasItem_constant_CLIP_CHILDREN_DISABLED>` 以外的其他值將無法正常工作。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`clear_margin<class_CanvasGroup_property_clear_margin>` | ``10.0``  |
   +---------------------------+--------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`fit_margin<class_CanvasGroup_property_fit_margin>`     | ``10.0``  |
   +---------------------------+--------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`use_mipmaps<class_CanvasGroup_property_use_mipmaps>`   | ``false`` |
   +---------------------------+--------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CanvasGroup_property_clear_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **clear_margin** = ``10.0`` :ref:`🔗<class_CanvasGroup_property_clear_margin>`

.. rst-class:: classref-property-setget

- |void| **set_clear_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_clear_margin**\ (\ )

設定用於擴充該 **CanvasGroup** 清除矩形的邊距大小。會對該 **CanvasGroup** 所使用的後臺緩衝的區域進行擴充。邊距較小時可以減少後臺緩衝的區域大小，從而提升性能，但如果啟用了 :ref:`use_mipmaps<class_CanvasGroup_property_use_mipmaps>`\ ，較小的邊距可能在該 **CanvasGroup** 邊緣造成 mipmap 錯誤。因此，這個值應該儘量調小，但是如果畫布組的邊緣出現問題，就應該將其調大。

.. rst-class:: classref-item-separator

----

.. _class_CanvasGroup_property_fit_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **fit_margin** = ``10.0`` :ref:`🔗<class_CanvasGroup_property_fit_margin>`

.. rst-class:: classref-property-setget

- |void| **set_fit_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fit_margin**\ (\ )

設定用於擴充該 **CanvasGroup** 繪圖矩形的邊距大小。確定該 **CanvasGroup** 大小的方法是：首先框定子節點的矩形區域，然後將該矩形按照 :ref:`fit_margin<class_CanvasGroup_property_fit_margin>` 進行擴展。會增大該 **CanvasGroup** 所使用的後臺緩衝的區域，也會增大該 **CanvasGroup** 所覆蓋的面積，兩者都會降低性能。這個值應該儘量調小，僅在需要時調大（例如自定義著色器效果）。

.. rst-class:: classref-item-separator

----

.. _class_CanvasGroup_property_use_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_mipmaps** = ``false`` :ref:`🔗<class_CanvasGroup_property_use_mipmaps>`

.. rst-class:: classref-property-setget

- |void| **set_use_mipmaps**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_mipmaps**\ (\ )

如果為 ``true``\ ，則會在繪製該 **CanvasGroup** 之前為其後臺緩衝計算 mipmap，附加到該 **CanvasGroup** 的自訂 :ref:`ShaderMaterial<class_ShaderMaterial>` 就可以使用 mipmap。Mipmap 的生成會造成性能消耗，所以應在必要時才啟用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
