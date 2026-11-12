:github_url: hide

.. _class_PrimitiveMesh:

PrimitiveMesh
=============

**Успадковує:** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`BoxMesh<class_BoxMesh>`, :ref:`CapsuleMesh<class_CapsuleMesh>`, :ref:`CylinderMesh<class_CylinderMesh>`, :ref:`PlaneMesh<class_PlaneMesh>`, :ref:`PointMesh<class_PointMesh>`, :ref:`PrismMesh<class_PrismMesh>`, :ref:`RibbonTrailMesh<class_RibbonTrailMesh>`, :ref:`SphereMesh<class_SphereMesh>`, :ref:`TextMesh<class_TextMesh>`, :ref:`TorusMesh<class_TorusMesh>`, :ref:`TubeTrailMesh<class_TubeTrailMesh>`

Базовий клас для всіх примітивних сіточок. Руки застосувати :ref:`Material<class_Material>` до примітивної сітки.

.. rst-class:: classref-introduction-group

Опис
--------

Базовий клас для всіх примітивних сіточок. Руки застосувати :ref:`Material<class_Material>` до примітивної сітки. Приклади включають :ref:`BoxMesh<class_BoxMesh>`, :ref:`CapsuleMesh<class_CapsuleMesh>`, :ref:`CylinderMesh<class_CylinderMesh>`, :ref:`PlaneMesh<class_PlaneMesh>`, :ref:`PrismMesh<class_PrismMesh>`, і :ref:`SphereMesh<class_SphereMesh>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`         | :ref:`add_uv2<class_PrimitiveMesh_property_add_uv2>`         | ``false``                  |
   +---------------------------------+--------------------------------------------------------------+----------------------------+
   | :ref:`AABB<class_AABB>`         | :ref:`custom_aabb<class_PrimitiveMesh_property_custom_aabb>` | ``AABB(0, 0, 0, 0, 0, 0)`` |
   +---------------------------------+--------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`         | :ref:`flip_faces<class_PrimitiveMesh_property_flip_faces>`   | ``false``                  |
   +---------------------------------+--------------------------------------------------------------+----------------------------+
   | :ref:`Material<class_Material>` | :ref:`material<class_PrimitiveMesh_property_material>`       |                            |
   +---------------------------------+--------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`       | :ref:`uv2_padding<class_PrimitiveMesh_property_uv2_padding>` | ``2.0``                    |
   +---------------------------------+--------------------------------------------------------------+----------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`_create_mesh_array<class_PrimitiveMesh_private_method__create_mesh_array>`\ (\ ) |virtual| |const| |
   +---------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`get_mesh_arrays<class_PrimitiveMesh_method_get_mesh_arrays>`\ (\ ) |const|                         |
   +---------------------------+----------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`request_update<class_PrimitiveMesh_method_request_update>`\ (\ )                                   |
   +---------------------------+----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_PrimitiveMesh_property_add_uv2:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **add_uv2** = ``false`` :ref:`🔗<class_PrimitiveMesh_property_add_uv2>`

.. rst-class:: classref-property-setget

- |void| **set_add_uv2**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_add_uv2**\ (\ )

Якщо встановити, генерує УФ2 УФ-координати, застосовуючи настройку за допомогою параметра :ref:`uv2_padding<class_PrimitiveMesh_property_uv2_padding>`. УФ2 необхідний для освітлення.

.. rst-class:: classref-item-separator

----

.. _class_PrimitiveMesh_property_custom_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **custom_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_PrimitiveMesh_property_custom_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_custom_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_custom_aabb**\ (\ )

Замінює :ref:`AABB<class_AABB>` на один, визначений користувачем для використання з вибракуванням усеченої точки. Особливо корисно, щоб уникнути несподіваного відсікання під час використання шейдера для зміщення вершин.

.. rst-class:: classref-item-separator

----

.. _class_PrimitiveMesh_property_flip_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_faces** = ``false`` :ref:`🔗<class_PrimitiveMesh_property_flip_faces>`

.. rst-class:: classref-property-setget

- |void| **set_flip_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_faces**\ (\ )

Якщо ``true``, порядок вершин у кожному трикутнику змінюється на протилежний, в результаті чого малюється зворотна сторона сітки.

Це дає той самий результат, що й використання :ref:`BaseMaterial3D.CULL_FRONT<class_BaseMaterial3D_constant_CULL_FRONT>` у :ref:`BaseMaterial3D.cull_mode<class_BaseMaterial3D_property_cull_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_PrimitiveMesh_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_PrimitiveMesh_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

Поточний :ref:`Material<class_Material>` примітивної сітки.

.. rst-class:: classref-item-separator

----

.. _class_PrimitiveMesh_property_uv2_padding:

.. rst-class:: classref-property

:ref:`float<class_float>` **uv2_padding** = ``2.0`` :ref:`🔗<class_PrimitiveMesh_property_uv2_padding>`

.. rst-class:: classref-property-setget

- |void| **set_uv2_padding**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_uv2_padding**\ (\ )

If :ref:`add_uv2<class_PrimitiveMesh_property_add_uv2>` is set, specifies the padding in pixels applied along seams of the mesh. Lower padding values allow making better use of the lightmap texture (resulting in higher texel density), but may introduce visible lightmap bleeding along edges.

If the size of the lightmap texture can't be determined when generating the mesh, UV2 is calculated assuming a texture size of 1024×1024.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_PrimitiveMesh_private_method__create_mesh_array:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **_create_mesh_array**\ (\ ) |virtual| |const| :ref:`🔗<class_PrimitiveMesh_private_method__create_mesh_array>`

Визначте цей метод, щоб налаштувати, як генерується ця примітивна сітка. Поверніть :ref:`Array<class_Array>`, де кожен елемент є іншим Армуванням значень, необхідних для сітки (див. :ref:`ArrayType<enum_Mesh_ArrayType>` константи).

.. rst-class:: classref-item-separator

----

.. _class_PrimitiveMesh_method_get_mesh_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_mesh_arrays**\ (\ ) |const| :ref:`🔗<class_PrimitiveMesh_method_get_mesh_arrays>`

Повертає масиви сіток, які використовуються для створення поверхні цієї примітивної сітки. 

\ **Приклад: ** Передайте результат до :ref:`ArrayMesh.add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`, щоб створити нову поверхню: 


.. tabs:: 

 .. code-tab:: gdscript
 
    var c = CylinderMesh new(). 
    var arr_mesh = ArrayMesh.new() 
    arr_mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, c.get_mesh_arrays())  

 .. code-tab:: csharp
 
    var c = new CylinderMesh(); 
    var arrMesh = новий ArrayMesh(); 
    arrMesh.AddSurfaceFromArrays(Mesh.PrimitiveType.Triangles, c.GetMeshArrays());  



.. rst-class:: classref-item-separator

----

.. _class_PrimitiveMesh_method_request_update:

.. rst-class:: classref-method

|void| **request_update**\ (\ ) :ref:`🔗<class_PrimitiveMesh_method_request_update>`

Запитайте оновлення цієї примітивної сітки на основі її властивостей.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
