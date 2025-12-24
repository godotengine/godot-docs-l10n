:github_url: hide

.. _class_AudioEffectAmplify:

AudioEffectAmplify
==================

**繼承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

為音訊匯流排新增一個放大效果。

.. rst-class:: classref-introduction-group

說明
----

提高或降低通過音訊匯流排的音量。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`音訊匯流排 <../tutorials/audio/audio_buses>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`volume_db<class_AudioEffectAmplify_property_volume_db>`         | ``0.0`` |
   +---------------------------+-----------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`volume_linear<class_AudioEffectAmplify_property_volume_linear>` |         |
   +---------------------------+-----------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AudioEffectAmplify_property_volume_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_db** = ``0.0`` :ref:`🔗<class_AudioEffectAmplify_property_volume_db>`

.. rst-class:: classref-property-setget

- |void| **set_volume_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_db**\ (\ )

放大量（dB）。正值使聲音更大，負值則更小，可設定 -80 至 24。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectAmplify_property_volume_linear:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_linear** :ref:`🔗<class_AudioEffectAmplify_property_volume_linear>`

.. rst-class:: classref-property-setget

- |void| **set_volume_linear**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_linear**\ (\ )

以線性值表示的放大量。

\ **注意：** 此屬性為操作便利而同步更新 :ref:`volume_db<class_AudioEffectAmplify_property_volume_db>`\ 。讀取時相當於對 :ref:`volume_db<class_AudioEffectAmplify_property_volume_db>` 執行 :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>`\ ；寫入時則以 :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>` 轉換後指定至 :ref:`volume_db<class_AudioEffectAmplify_property_volume_db>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
