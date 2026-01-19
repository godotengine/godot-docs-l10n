:github_url: hide

.. _class_ImporterMesh:

ImporterMesh
============

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`Resource<class_Resource>`, що містить геометрію на основі вертексу в процесі імпорту.

.. rst-class:: classref-introduction-group

Опис
--------

Імпортер Сітка є типом :ref:`Resource<class_Resource>` аналогом :ref:`ArrayMesh<class_ArrayMesh>`. Він містить геометрію на основі вертексу, *розділену на * Кожна поверхня містить повністю окремий масив і матеріал, який використовується для його малювання. Дизайн мудрий, сітка з декількома поверхнями краще для однієї поверхні, тому що об'єкти, створені в 3D програмному забезпеченні, зазвичай містять кілька матеріалів.

На відміну від його аналога runtime, **ImporterMesh** містить дані сітки перед різними кроками імпорту, такими як lod і Shadow Mesh, що утворюються. Перевірити дані поверхні за допомогою виклику :ref:`clear()<class_ImporterMesh_method_clear>`, після чого :ref:`add_surface()<class_ImporterMesh_method_add_surface>` для кожної поверхні.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`add_blend_shape<class_ImporterMesh_method_add_blend_shape>`\ (\ name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                                                                                                                |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`add_surface<class_ImporterMesh_method_add_surface>`\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, arrays\: :ref:`Array<class_Array>`, blend_shapes\: :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] = [], lods\: :ref:`Dictionary<class_Dictionary>` = {}, material\: :ref:`Material<class_Material>` = null, name\: :ref:`String<class_String>` = "", flags\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`clear<class_ImporterMesh_method_clear>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                        |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ImporterMesh<class_ImporterMesh>`         | :ref:`from_mesh<class_ImporterMesh_method_from_mesh>`\ (\ mesh\: :ref:`Mesh<class_Mesh>`\ ) |static|                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`generate_lods<class_ImporterMesh_method_generate_lods>`\ (\ normal_merge_angle\: :ref:`float<class_float>`, normal_split_angle\: :ref:`float<class_float>`, bone_transform_array\: :ref:`Array<class_Array>`\ )                                                                                                                                                                                                      |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_blend_shape_count<class_ImporterMesh_method_get_blend_shape_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` | :ref:`get_blend_shape_mode<class_ImporterMesh_method_get_blend_shape_mode>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                  |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                     | :ref:`get_blend_shape_name<class_ImporterMesh_method_get_blend_shape_name>`\ (\ blend_shape_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                 | :ref:`get_lightmap_size_hint<class_ImporterMesh_method_get_lightmap_size_hint>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>`               | :ref:`get_mesh<class_ImporterMesh_method_get_mesh>`\ (\ base_mesh\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ )                                                                                                                                                                                                                                                                                                            |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                       | :ref:`get_surface_arrays<class_ImporterMesh_method_get_surface_arrays>`\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                       | :ref:`get_surface_blend_shape_arrays<class_ImporterMesh_method_get_surface_blend_shape_arrays>`\ (\ surface_idx\: :ref:`int<class_int>`, blend_shape_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_surface_count<class_ImporterMesh_method_get_surface_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                        |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_surface_format<class_ImporterMesh_method_get_surface_format>`\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_surface_lod_count<class_ImporterMesh_method_get_surface_lod_count>`\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                           |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_surface_lod_indices<class_ImporterMesh_method_get_surface_lod_indices>`\ (\ surface_idx\: :ref:`int<class_int>`, lod_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                      |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`get_surface_lod_size<class_ImporterMesh_method_get_surface_lod_size>`\ (\ surface_idx\: :ref:`int<class_int>`, lod_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                            |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Material<class_Material>`                 | :ref:`get_surface_material<class_ImporterMesh_method_get_surface_material>`\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                     | :ref:`get_surface_name<class_ImporterMesh_method_get_surface_name>`\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                     |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`   | :ref:`get_surface_primitive_type<class_ImporterMesh_method_get_surface_primitive_type>`\ (\ surface_idx\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_blend_shape_mode<class_ImporterMesh_method_set_blend_shape_mode>`\ (\ mode\: :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>`\ )                                                                                                                                                                                                                                                                                  |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_lightmap_size_hint<class_ImporterMesh_method_set_lightmap_size_hint>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_surface_material<class_ImporterMesh_method_set_surface_material>`\ (\ surface_idx\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ )                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_surface_name<class_ImporterMesh_method_set_surface_name>`\ (\ surface_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ImporterMesh_method_add_blend_shape:

.. rst-class:: classref-method

|void| **add_blend_shape**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ImporterMesh_method_add_blend_shape>`

Додає назву для форми переходу, яка буде додана за допомогою :ref:`add_surface()<class_ImporterMesh_method_add_surface>`. Повинен викликатися перед додаванням поверхні.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_add_surface:

.. rst-class:: classref-method

|void| **add_surface**\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, arrays\: :ref:`Array<class_Array>`, blend_shapes\: :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] = [], lods\: :ref:`Dictionary<class_Dictionary>` = {}, material\: :ref:`Material<class_Material>` = null, name\: :ref:`String<class_String>` = "", flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ImporterMesh_method_add_surface>`

Створює нову поверхню. :ref:`Mesh.get_surface_count()<class_Mesh_method_get_surface_count>` стане ``surf_idx`` для цієї нової поверхні.

Поверхні створюються для візуалізації за допомогою ``primitive``, який може бути будь-яким зі значень, визначених у :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`.

Аргумент ``arrays`` — це масив масивів. Кожен з елементів :ref:`Mesh.ARRAY_MAX<class_Mesh_constant_ARRAY_MAX>` містить масив із деякими даними сітки для цієї поверхні, як описано відповідним елементом :ref:`ArrayType<enum_Mesh_ArrayType>` або ``null``, якщо він не використовується поверхні. Наприклад, ``arrays[0]`` — це масив вершин. Цей підмасив перших вершин завжди потрібен; інші необов'язкові. Додавання індексного масиву переводить цю поверхню в «індексний режим», де вершина та інші масиви стають джерелами даних, а індексний масив визначає порядок вершин. Усі підмасиви повинні мати таку ж довжину, як і масив вершин (або бути кратним довжині масиву вершин, якщо кілька елементів підмасиву відповідають одній вершині) або бути порожніми, за винятком :ref:`Mesh.ARRAY_INDEX<class_Mesh_constant_ARRAY_INDEX>`, якщо він використовується.

Аргумент ``blend_shapes`` — це масив даних вершин для кожної фігури змішування. Кожен елемент є масивом такої самої структури, що й ``arrays``, але :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>`, :ref:`Mesh.ARRAY_NORMAL<class_Mesh_constant_ARRAY_NORMAL>` і :ref:`Mesh.ARRAY_TANGENT<class_Mesh_constant_ARRAY_TANGENT>` встановлені тоді та лише тоді, коли вони встановлені в ``arrays`` і всі інші записи мають значення ``null``.

Аргумент ``lods`` — це словник із ключами :ref:`float<class_float>` і значеннями :ref:`PackedInt32Array<class_PackedInt32Array>`. Кожен запис у словнику представляє рівень LOD поверхні, де значенням є масив :ref:`Mesh.ARRAY_INDEX<class_Mesh_constant_ARRAY_INDEX>` для використання рівня LOD, а ключ приблизно пропорційний відстані, на якій використовується статистика LOD. Тобто збільшення ключа LOD також збільшує відстань, на якій об’єкти повинні бути від камери до використання LOD.

Аргумент ``flags`` є порозрядним АБО, якщо потрібно: одне значення :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` зміщено вліво на ``ARRAY_FORMAT_CUSTOMn_SHIFT`` для кожного користувацького каналу, що використовується, :ref:`Mesh.ARRAY_FLAG_USE_DYNAMIC_UPDATE<class_Mesh_constant_ARRAY_FLAG_USE_DYNAMIC_UPDATE>`, :ref:`Mesh.ARRAY_FLAG_USE_8_BONE_WEIGHTS<class_Mesh_constant_ARRAY_FLAG_USE_8_BONE_WEIGHTS>` або :ref:`Mesh.ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY<class_Mesh_constant_ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY>`.

\ **Примітка:** Під час використання індексів рекомендується використовувати лише точки, лінії чи трикутники.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_ImporterMesh_method_clear>`

Видаліть всі поверхні та форми змішування з цього **ImporterMesh**.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_from_mesh:

.. rst-class:: classref-method

:ref:`ImporterMesh<class_ImporterMesh>` **from_mesh**\ (\ mesh\: :ref:`Mesh<class_Mesh>`\ ) |static| :ref:`🔗<class_ImporterMesh_method_from_mesh>`

Перетворює заданий :ref:`Mesh<class_Mesh>` на **ImporterMesh**, копіюючи всі його поверхні, форми поєднання, матеріали та метадані в новий об'єкт **ImporterMesh**.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_generate_lods:

.. rst-class:: classref-method

|void| **generate_lods**\ (\ normal_merge_angle\: :ref:`float<class_float>`, normal_split_angle\: :ref:`float<class_float>`, bone_transform_array\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_ImporterMesh_method_generate_lods>`

Генерує всі lods для цього ImporterMesh. 

\ ``normal_merge_angle`` у градусах і використовується так само, як налаштування імпортера в ``lods``. 

\ ``normal_split_angle`` не використовується і залишається лише для сумісності зі старішими версіями API. 

Доступ до кількості згенерованих lods можна отримати за допомогою :ref:`get_surface_lod_count()<class_ImporterMesh_method_get_surface_lod_count>`, і кожен LOD доступний у :ref:`get_surface_lod_size()<class_ImporterMesh_method_get_surface_lod_size>` і :ref:`get_surface_lod_indices()<class_ImporterMesh_method_get_surface_lod_indices>`. 

\ ``bone_transform_array`` — це :ref:`Array<class_Array>`, який може бути порожнім або містити :ref:`Transform3D<class_Transform3D>`, які для кожного з ідентифікаторів кістки сітки застосовуватимуть скінінг сітки під час генерації варіантів сітки LOD. Зазвичай це використовується для врахування розбіжностей у масштабі між самою сіткою та її даними шкірування.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_blend_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_blend_shape_count**\ (\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_blend_shape_count>`

Повертаємо кількість форм блендера, що має сітки.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_blend_shape_mode:

.. rst-class:: classref-method

:ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` **get_blend_shape_mode**\ (\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_blend_shape_mode>`

Повертає режим форми блендера для цієї сітки.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_blend_shape_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_blend_shape_name**\ (\ blend_shape_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_blend_shape_name>`

Повертає назву форми змішування за цим індексом.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_lightmap_size_hint:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_lightmap_size_hint**\ (\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_lightmap_size_hint>`

Повертає розмір натяка цієї сітки для Lightmap-unwrapping в УФ-просторі.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_mesh:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **get_mesh**\ (\ base_mesh\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ ) :ref:`🔗<class_ImporterMesh_method_get_mesh>`

Повертаємо дані сітки, що представлені цими **ImporterMesh**, як можна використовувати :ref:`ArrayMesh<class_ArrayMesh>`.

Цей метод кешує зворотну сіточку, а наступні дзвінки повернеться до тих пір, поки не називається :ref:`clear()<class_ImporterMesh_method_clear>`.

Якщо ще не передбачено кешування та ``base_mesh``, буде використовуватися ``base_mesh`` і мутований.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_surface_arrays**\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_arrays>`

Повертає масиви для вершин, нормалей, УФів і т.д., які складають необхідну поверхню. Див. :ref:`add_surface()<class_ImporterMesh_method_add_surface>`.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_blend_shape_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_surface_blend_shape_arrays**\ (\ surface_idx\: :ref:`int<class_int>`, blend_shape_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_blend_shape_arrays>`

Повертає єдиний набір масивів форми сумішей для запитуваного індексу форми блендера для поверхні.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_count**\ (\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_count>`

Повертаємо кількість поверхонь, які утримуються сітки.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_format:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_format**\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_format>`

Повертає формат поверхні, яка тримається сітки.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_lod_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_lod_count**\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_lod_count>`

Повертаємо кількість подів, що сітка тримається на даній поверхні.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_lod_indices:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_surface_lod_indices**\ (\ surface_idx\: :ref:`int<class_int>`, lod_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_lod_indices>`

Повертає індексний буфер льоду для поверхні.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_lod_size:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_surface_lod_size**\ (\ surface_idx\: :ref:`int<class_int>`, lod_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_lod_size>`

Повертає коефіцієнт екрана, який активізує лід для поверхні.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **get_surface_material**\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_material>`

Повертаємо :ref:`Material<class_Material>` в даній поверхні. Поверхня подається за допомогою цього матеріалу.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_surface_name**\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_name>`

Отримує назву, призначену цій поверхні.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_primitive_type:

.. rst-class:: classref-method

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **get_surface_primitive_type**\ (\ surface_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ImporterMesh_method_get_surface_primitive_type>`

Повертає примітивний тип запитуваної поверхні (див. :ref:`add_surface()<class_ImporterMesh_method_add_surface>`).

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_set_blend_shape_mode:

.. rst-class:: classref-method

|void| **set_blend_shape_mode**\ (\ mode\: :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>`\ ) :ref:`🔗<class_ImporterMesh_method_set_blend_shape_mode>`

Встановлює режим накладання форми.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_set_lightmap_size_hint:

.. rst-class:: classref-method

|void| **set_lightmap_size_hint**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_ImporterMesh_method_set_lightmap_size_hint>`

Встановлює розмір натяка цієї сітки для Lightmap-unwrapping в УФ-просторі.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_set_surface_material:

.. rst-class:: classref-method

|void| **set_surface_material**\ (\ surface_idx\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ ) :ref:`🔗<class_ImporterMesh_method_set_surface_material>`

Настроювання :ref:`Material<class_Material>` для даної поверхні. Поверхня буде надано за допомогою цього матеріалу.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_set_surface_name:

.. rst-class:: classref-method

|void| **set_surface_name**\ (\ surface_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ImporterMesh_method_set_surface_name>`

Задає назву для заданої поверхні.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
