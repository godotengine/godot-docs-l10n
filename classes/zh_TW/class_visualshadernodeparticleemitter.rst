:github_url: hide

.. _class_VisualShaderNodeParticleEmitter:

VisualShaderNodeParticleEmitter
===============================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`VisualShaderNodeParticleBoxEmitter<class_VisualShaderNodeParticleBoxEmitter>`, :ref:`VisualShaderNodeParticleMeshEmitter<class_VisualShaderNodeParticleMeshEmitter>`, :ref:`VisualShaderNodeParticleRingEmitter<class_VisualShaderNodeParticleRingEmitter>`, :ref:`VisualShaderNodeParticleSphereEmitter<class_VisualShaderNodeParticleSphereEmitter>`

粒子發射器的基底類別。

.. rst-class:: classref-introduction-group

說明
----

粒子發射器節點可被用於粒子著色器的“開始”步驟，它們定義粒子的起始位置。將它們連接到位置輸出埠。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`mode_2d<class_VisualShaderNodeParticleEmitter_property_mode_2d>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeParticleEmitter_property_mode_2d:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mode_2d** = ``false`` :ref:`🔗<class_VisualShaderNodeParticleEmitter_property_mode_2d>`

.. rst-class:: classref-property-setget

- |void| **set_mode_2d**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_mode_2d**\ (\ )

如果為 ``true``\ ，則此發射器的結果將被投影到 2D 空間。預設情況下為 ``false``\ ，適用於 3D 空間。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
