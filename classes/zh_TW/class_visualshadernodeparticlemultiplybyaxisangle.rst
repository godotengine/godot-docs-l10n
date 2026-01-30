:github_url: hide

.. _class_VisualShaderNodeParticleMultiplyByAxisAngle:

VisualShaderNodeParticleMultiplyByAxisAngle
===========================================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於將粒子的位置與旋轉相乘的視覺化著色器輔助節點。

.. rst-class:: classref-introduction-group

說明
----

這個節點會幫助將位置輸入向量與指定軸的旋轉相乘。針對發射器使用而設計。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`degrees_mode<class_VisualShaderNodeParticleMultiplyByAxisAngle_property_degrees_mode>` | ``true`` |
   +-------------------------+----------------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeParticleMultiplyByAxisAngle_property_degrees_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **degrees_mode** = ``true`` :ref:`🔗<class_VisualShaderNodeParticleMultiplyByAxisAngle_property_degrees_mode>`

.. rst-class:: classref-property-setget

- |void| **set_degrees_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_degrees_mode**\ (\ )

如果為 ``true``\ ，夾角會被解釋為度數，而不是弧度數。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
