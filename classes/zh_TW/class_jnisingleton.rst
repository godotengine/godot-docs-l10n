:github_url: hide

.. _class_JNISingleton:

JNISingleton
============

**繼承：** :ref:`Object<class_Object>`

將引擎與 Android 外掛程式連接起來以與原生 Android 程式碼互動的單例。

.. rst-class:: classref-introduction-group

說明
----

JNISingleton 僅在 Android 匯出中實作。它用於從用 Java 或 Kotlin 編寫的 Android 外掛程式呼叫方法、連接訊號。方法和訊號可以被呼叫並連接到 JNISingleton，就好像它是一個 Node 一樣。有關更多資訊，請參閱 `Java 本地介面 - 維琪百科 <https://zh.wikipedia.org/zh-cn/Java%E6%9C%AC%E5%9C%B0%E6%8E%A5%E5%8F%A3>`__\ 。

.. rst-class:: classref-introduction-group

教學
----

- `建立 Android 外掛程式 <../tutorials/platform/android/android_plugin.html#doc-android-plugin>`__

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
