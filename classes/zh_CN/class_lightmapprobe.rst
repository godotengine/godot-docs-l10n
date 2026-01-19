:github_url: hide

.. _class_LightmapProbe:

LightmapProbe
=============

**继承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

表示使用 :ref:`LightmapGI<class_LightmapGI>` 进行动态物体照明的单个手动放置的探针。

.. rst-class:: classref-introduction-group

描述
----

**LightmapProbe** 表示单个手动放置探针的位置，用于使用 :ref:`LightmapGI<class_LightmapGI>` 进行动态物体照明。光照贴图探针会影响某些 :ref:`GeometryInstance3D<class_GeometryInstance3D>` 派生节点的照明，这些节点的 :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` 被设置为 :ref:`GeometryInstance3D.GI_MODE_DYNAMIC<class_GeometryInstance3D_constant_GI_MODE_DYNAMIC>`\ 。

通常，通过将 :ref:`LightmapGI.generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>` 设置为 :ref:`LightmapGI.GENERATE_PROBES_DISABLED<class_LightmapGI_constant_GENERATE_PROBES_DISABLED>` 以外的值，来自动放置 :ref:`LightmapGI<class_LightmapGI>` 探针。通过在烘焙光照贴图之前创建 **LightmapProbe** 节点，你可以在特定区域，添加更多探针以获得更多细节，或者禁用自动生成、并仅依赖手动放置的探针。

\ **注意：**\ 烘焙光照贴图后放置的 **LightmapProbe** 节点会被动态对象忽略。必须在创建或修改 **LightmapProbe** 后再次烘焙光照贴图，以使探针生效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
