:github_url: hide

.. _class_AudioEffectInstance:

AudioEffectInstance
===================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`AudioEffectSpectrumAnalyzerInstance<class_AudioEffectSpectrumAnalyzerInstance>`

處理對應效果所接收的音訊。

.. rst-class:: classref-introduction-group

說明
----

音訊效果實例會針對對應效果處理其接收的音訊。該實例於 :ref:`AudioEffect<class_AudioEffect>` 加入匯流排時自動建立，一般不應手動建立；如有需要，可於執行時透過 :ref:`AudioServer.get_bus_effect_instance()<class_AudioServer_method_get_bus_effect_instance>` 取得。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`音訊匯流排 <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_process<class_AudioEffectInstance_private_method__process>`\ (\ src_buffer\: ``const void*``, r_dst_buffer\: ``AudioFrame*``, frame_count\: :ref:`int<class_int>`\ ) |virtual| |required| |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_process_silence<class_AudioEffectInstance_private_method__process_silence>`\ (\ ) |virtual| |const|                                                                                       |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AudioEffectInstance_private_method__process:

.. rst-class:: classref-method

|void| **_process**\ (\ src_buffer\: ``const void*``, r_dst_buffer\: ``AudioFrame*``, frame_count\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_AudioEffectInstance_private_method__process>`

此方法由 :ref:`AudioServer<class_AudioServer>` 呼叫以處理此效果。若未覆寫 :ref:`_process_silence()<class_AudioEffectInstance_private_method__process_silence>` 或其回傳值為 ``false``\ ，僅當匯流排處於作用狀態時才會被呼叫。

\ **注意：** 在 GDScript 或 C# 中覆寫本方法並無實際效益；只有以 GDExtension 實作時才能發揮效用。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectInstance_private_method__process_silence:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_process_silence**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioEffectInstance_private_method__process_silence>`

覆寫此方法可自訂此效果實例的處理行為。

若回傳 ``true``\ ，將強制 :ref:`AudioServer<class_AudioServer>` 無論匯流排是否靜音或不可聽見，都持續呼叫 :ref:`_process()<class_AudioEffectInstance_private_method__process>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
