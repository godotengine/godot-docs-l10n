:github_url: hide

.. _class_RichTextEffect:

RichTextEffect
==============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`RichTextLabel<class_RichTextLabel>` 的自訂效果。

.. rst-class:: classref-introduction-group

說明
----

A custom effect for a :ref:`RichTextLabel<class_RichTextLabel>`, which can be loaded in the :ref:`RichTextLabel<class_RichTextLabel>` inspector or using :ref:`RichTextLabel.install_effect()<class_RichTextLabel_method_install_effect>`.

\ **Note:** For a **RichTextEffect** to be usable, a BBCode tag must be defined as a member variable called ``bbcode`` in the script.


.. tabs::

 .. code-tab:: gdscript

    # The RichTextEffect will be usable like this: `[example]Some text[/example]`
    var bbcode = "example"

 .. code-tab:: csharp

    // The RichTextEffect will be usable like this: `[example]Some text[/example]`
    string bbcode = "example";



\ **Note:** As soon as a :ref:`RichTextLabel<class_RichTextLabel>` contains at least one **RichTextEffect**, it will continuously process the effect unless the project is paused. This may impact battery life negatively.

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
