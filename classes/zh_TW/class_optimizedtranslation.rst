:github_url: hide

.. _class_OptimizedTranslation:

OptimizedTranslation
====================

**繼承：** :ref:`Translation<class_Translation>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

經過最佳化的翻譯。

.. rst-class:: classref-introduction-group

說明
----

最佳化後的翻譯。它使用即時壓縮翻譯，因此生成的字典非常小。

出於最佳化目的，該類不儲存未翻譯的字串。因此，\ :ref:`Translation.get_message_list()<class_Translation_method_get_message_list>` 始終回傳一個空陣列，而 :ref:`Translation.get_message_count()<class_Translation_method_get_message_count>` 始終回傳 ``0``\ 。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`generate<class_OptimizedTranslation_method_generate>`\ (\ from\: :ref:`Translation<class_Translation>`\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OptimizedTranslation_method_generate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **generate**\ (\ from\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_OptimizedTranslation_method_generate>`

根據給定的 :ref:`Translation<class_Translation>`\ （翻譯）資源，生成並設定一套最佳化後的翻譯。如果操作成功，則回傳 ``true``\ 。

\ **注意：** ``from`` 中的訊息不應使用情境（context）或複數形式。

\ **注意：** 此方法旨在編輯器內使用。在匯出的專案（即打包發佈後的遊戲或應用）中呼叫它不會產生任何效果。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
