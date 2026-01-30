:github_url: hide

.. _class_EditorSceneFormatImporterBlend:

EditorSceneFormatImporterBlend
==============================

**继承：** :ref:`EditorSceneFormatImporter<class_EditorSceneFormatImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Blender 的 ``.blend`` 场景文件格式的导入器。

.. rst-class:: classref-introduction-group

描述
----

通过 glTF 2.0 3D 导入管道导入使用 ``.blend`` 文件格式的 Blender 场景。该导入器要求用户安装 Blender，以便将场景导出为 glTF 2.0。

Blender 可执行文件的位置是通过 :ref:`EditorSettings.filesystem/import/blender/blender_path<class_EditorSettings_property_filesystem/import/blender/blender_path>` 来设置的。

该导入器仅在启用 :ref:`ProjectSettings.filesystem/import/blender/enabled<class_ProjectSettings_property_filesystem/import/blender/enabled>` 时使用，否则不会导入项目文件夹中存在的 ``.blend`` 文件。

Blend 导入需要 Blender 3.0。

在内部，EditorSceneFormatImporterBlend 使用 Blender glTF“使用原始”模式来引用外部纹理。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
