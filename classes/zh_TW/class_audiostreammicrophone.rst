:github_url: hide

.. _class_AudioStreamMicrophone:

AudioStreamMicrophone
=====================

**繼承：** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

播放即時音訊輸入資料。

.. rst-class:: classref-introduction-group

說明
----

當直接在 :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` 節點中使用時，\ **AudioStreamMicrophone** 會即時播放麥克風的輸入。這可以配合 :ref:`AudioEffectCapture<class_AudioEffectCapture>` 使用，以處理資料或保存資料。

\ **注意：**\ :ref:`ProjectSettings.audio/driver/enable_input<class_ProjectSettings_property_audio/driver/enable_input>` 必須為 ``true`` 音訊輸入才能正常工作。另請參閱該設定的說明，瞭解與許可權和操作系統隱私設定相關的注意事項。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用麥克風錄音 <../tutorials/audio/recording_with_microphone>`

- `音訊麥克風錄音演示 <https://github.com/godotengine/godot-demo-projects/tree/master/audio/mic_record>`__

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
