:github_url: hide

.. _class_RichTextEffect:

RichTextEffect
==============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`RichTextLabel<class_RichTextLabel>` 的自訂效果。

.. rst-class:: classref-introduction-group

說明
----

:ref:`RichTextLabel<class_RichTextLabel>` 的自訂效果，可以在 :ref:`RichTextLabel<class_RichTextLabel>` 屬性檢視器中載入或使用 :ref:`RichTextLabel.install_effect()<class_RichTextLabel_method_install_effect>` 載入。

\ **注意：**\ 要使用 **RichTextEffect**\ ，必須在腳本中定義名為 ``bbcode`` 的成員變數作為 BBCode 標籤。


.. tabs::

 .. code-tab:: gdscript

    # 使用 RichTextEffect 的方式是這樣的：`[example]Some text[/example]`
    var bbcode = "example"

 .. code-tab:: csharp

    // 使用 RichTextEffect 的方式是這樣的：`[example]Some text[/example]`
    string bbcode = "example";



\ **注意：**\ 只要 :ref:`RichTextLabel<class_RichTextLabel>` 包含至少一個 **RichTextEffect**\ ，它就會持續處理效果，除非專案暫停。這可能會對電池壽命產生負面影響。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`RichTextLabel 中的 BBCode <../tutorials/ui/bbcode_in_richtextlabel>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_process_custom_fx<class_RichTextEffect_private_method__process_custom_fx>`\ (\ char_fx\: :ref:`CharFXTransform<class_CharFXTransform>`\ ) |virtual| |const| |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RichTextEffect_private_method__process_custom_fx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_process_custom_fx**\ (\ char_fx\: :ref:`CharFXTransform<class_CharFXTransform>`\ ) |virtual| |const| :ref:`🔗<class_RichTextEffect_private_method__process_custom_fx>`

覆蓋該方法以修改 ``char_fx`` 中的屬性。如果字元可以被成功轉換，則該方法必須返回 ``true``\ 。如果該方法返回 ``false``\ ，則它將跳過轉換以避免顯示損壞的文字。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
