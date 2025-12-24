:github_url: hide

.. _class_ShaderInclude:

ShaderInclude
=============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

著色器程式碼片段，能夠在 :ref:`Shader<class_Shader>` 中使用 ``#include`` 引入。

.. rst-class:: classref-introduction-group

說明
----

著色器標頭檔，保存時使用 ``.gdshaderinc`` 副檔名。這個類能夠用於定義自訂著色器程式碼片段，在 :ref:`Shader<class_Shader>` 中可以使用前置處理器指令 ``#include`` 加上檔路徑引入（例如 ``#include "res://shader_lib.gdshaderinc"``\ ）。程式碼片段本身不必是有效的著色器。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`著色器前置處理器 <../tutorials/shaders/shader_reference/shader_preprocessor>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`code<class_ShaderInclude_property_code>` | ``""`` |
   +-----------------------------+------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ShaderInclude_property_code:

.. rst-class:: classref-property

:ref:`String<class_String>` **code** = ``""`` :ref:`🔗<class_ShaderInclude_property_code>`

.. rst-class:: classref-property-setget

- |void| **set_code**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_code**\ (\ )

返回著色器標頭檔的程式碼。返回的文字是使用者所編寫的內容，不是內部使用的完整生成的程式碼。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
