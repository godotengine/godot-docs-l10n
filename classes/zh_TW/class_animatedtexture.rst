:github_url: hide

.. _class_AnimatedTexture:

AnimatedTexture
===============

**已棄用：** This class does not work properly in current versions and may be removed in the future. There is currently no equivalent workaround.

**繼承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於簡單影格動畫的代理紋理。

.. rst-class:: classref-introduction-group

說明
----

**AnimatedTexture** 是影格式動畫的資源格式，可讓多張紋理依每影格預設的延遲自動串接播放。與 :ref:`AnimationPlayer<class_AnimationPlayer>` 或 :ref:`AnimatedSprite2D<class_AnimatedSprite2D>` 不同，它不是 :ref:`Node<class_Node>`\ ，因此可在任何接受 :ref:`Texture2D<class_Texture2D>` 的地方使用，例如 :ref:`TileSet<class_TileSet>`\ 。

動畫播放受 :ref:`speed_scale<class_AnimatedTexture_property_speed_scale>` 與各影格持續時間（見 :ref:`set_frame_duration()<class_AnimatedTexture_method_set_frame_duration>`\ ）控制。動畫會循環播放，播放完最後一影格後會自動回到影格 0。

\ **AnimatedTexture** 要求所有影格的紋理尺寸相同，否則尺寸較大的影格將被裁切以符合最小尺寸。

\ **注意：**\ **AnimatedTexture** 不支援 :ref:`AtlasTexture<class_AtlasTexture>`\ ；每一影格必須是獨立的 :ref:`Texture2D<class_Texture2D>`\ 。

\ **警告：** 目前的實作對現代繪圖管線的效率不佳。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`current_frame<class_AnimatedTexture_property_current_frame>` |                                                                                        |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`frames<class_AnimatedTexture_property_frames>`               | ``1``                                                                                  |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`one_shot<class_AnimatedTexture_property_one_shot>`           | ``false``                                                                              |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`pause<class_AnimatedTexture_property_pause>`                 | ``false``                                                                              |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | resource_local_to_scene                                            | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`speed_scale<class_AnimatedTexture_property_speed_scale>`     | ``1.0``                                                                                |
   +---------------------------+--------------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`get_frame_duration<class_AnimatedTexture_method_get_frame_duration>`\ (\ frame\: :ref:`int<class_int>`\ ) |const|                                    |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`get_frame_texture<class_AnimatedTexture_method_get_frame_texture>`\ (\ frame\: :ref:`int<class_int>`\ ) |const|                                      |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_frame_duration<class_AnimatedTexture_method_set_frame_duration>`\ (\ frame\: :ref:`int<class_int>`, duration\: :ref:`float<class_float>`\ )      |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_frame_texture<class_AnimatedTexture_method_set_frame_texture>`\ (\ frame\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_AnimatedTexture_constant_MAX_FRAMES:

.. rst-class:: classref-constant

**MAX_FRAMES** = ``256`` :ref:`🔗<class_AnimatedTexture_constant_MAX_FRAMES>`

「\ **AnimatedTexture**\ 」可支援的最大影格數；若動畫需要更多影格，請改用 :ref:`AnimationPlayer<class_AnimationPlayer>` 或 :ref:`AnimatedSprite2D<class_AnimatedSprite2D>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AnimatedTexture_property_current_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **current_frame** :ref:`🔗<class_AnimatedTexture_property_current_frame>`

.. rst-class:: classref-property-setget

- |void| **set_current_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_current_frame**\ (\ )

設定目前可見的影格；在播放期間設定會重設該影格計時，因而讓新選擇的影格完整播放其設定的持續時間。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_property_frames:

.. rst-class:: classref-property

:ref:`int<class_int>` **frames** = ``1`` :ref:`🔗<class_AnimatedTexture_property_frames>`

.. rst-class:: classref-property-setget

- |void| **set_frames**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frames**\ (\ )

動畫所使用的影格總數。雖可透過 :ref:`set_frame_texture()<class_AnimatedTexture_method_set_frame_texture>` 個別新增影格，但仍須設定此值才能讓動畫納入新影格。最大值為 :ref:`MAX_FRAMES<class_AnimatedTexture_constant_MAX_FRAMES>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_AnimatedTexture_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_one_shot**\ (\ )

若為 ``true``\ ，動畫僅播放一次，結束後不會回到第一影格；到達末尾並不會自動將 :ref:`pause<class_AnimatedTexture_property_pause>` 設為 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_property_pause:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pause** = ``false`` :ref:`🔗<class_AnimatedTexture_property_pause>`

.. rst-class:: classref-property-setget

- |void| **set_pause**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_pause**\ (\ )

若為 ``true``\ ，動畫會在目前位置（\ :ref:`current_frame<class_AnimatedTexture_property_current_frame>`\ ）暫停；改回 ``false`` 時會從該處繼續播放。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_AnimatedTexture_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

動畫速度會乘以此值；若為負值則反向播放。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AnimatedTexture_method_get_frame_duration:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_frame_duration**\ (\ frame\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimatedTexture_method_get_frame_duration>`

回傳指定 ``frame`` 的持續時間（秒）。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_method_get_frame_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_frame_texture**\ (\ frame\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimatedTexture_method_get_frame_texture>`

回傳指定影格的 :ref:`Texture2D<class_Texture2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_method_set_frame_duration:

.. rst-class:: classref-method

|void| **set_frame_duration**\ (\ frame\: :ref:`int<class_int>`, duration\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AnimatedTexture_method_set_frame_duration>`

設定指定 ``frame`` 的持續時間，最終時間會再乘以 :ref:`speed_scale<class_AnimatedTexture_property_speed_scale>`\ 。若設為 ``0``\ ，播放時會跳過該影格。

.. rst-class:: classref-item-separator

----

.. _class_AnimatedTexture_method_set_frame_texture:

.. rst-class:: classref-method

|void| **set_frame_texture**\ (\ frame\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_AnimatedTexture_method_set_frame_texture>`

將 :ref:`Texture2D<class_Texture2D>` 指定給目標影格。影格 ID 從 0 開始，第一格為 0，最後一格為 :ref:`frames<class_AnimatedTexture_property_frames>` - 1。

最多可設定 :ref:`MAX_FRAMES<class_AnimatedTexture_constant_MAX_FRAMES>` 張紋理，但只有 0 至 :ref:`frames<class_AnimatedTexture_property_frames>` - 1 的影格會參與播放。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
