:github_url: hide

.. _class_OptimizedTranslation:

OptimizedTranslation
====================

**繼承：** :ref:`Translation<class_Translation>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

An optimized translation.

.. rst-class:: classref-introduction-group

說明
----

An optimized translation. Uses real-time compressed translations, which results in very small dictionaries.

This class does not store the untranslated strings for optimization purposes. Therefore, :ref:`Translation.get_message_list()<class_Translation_method_get_message_list>` always returns an empty array, and :ref:`Translation.get_message_count()<class_Translation_method_get_message_count>` always returns ``0``.

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

Generates and sets an optimized translation from the given :ref:`Translation<class_Translation>` resource. Returns ``true`` if successful.

\ **Note:** Messages in ``from`` should not use context or plural forms.

\ **Note:** This method is intended to be used in the editor. It does nothing when called from an exported project.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
