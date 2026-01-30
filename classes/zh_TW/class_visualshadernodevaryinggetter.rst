:github_url: hide

.. _class_VisualShaderNodeVaryingGetter:

VisualShaderNodeVaryingGetter
=============================

**繼承：** :ref:`VisualShaderNodeVarying<class_VisualShaderNodeVarying>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於獲取 varying 的視覺化著色器節點。

.. rst-class:: classref-introduction-group

說明
----

讓著色器中定義的 varying 輸出一個值。你需要首先建立可用於該函式的 varying，例如 Fragment 著色器的 varying getter 需要模式為 :ref:`VisualShader.VARYING_MODE_VERTEX_TO_FRAG_LIGHT<class_VisualShader_constant_VARYING_MODE_VERTEX_TO_FRAG_LIGHT>` 的 varying。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
