:github_url: hide

.. _class_Projection:

Projection
==========

Матриця 4 × 4 для проекційних трансформацій 3D.

.. rst-class:: classref-introduction-group

Опис
--------

Матриця розміром 4×4, що використовується для 3D-проекційних перетворень. Вона може представляти такі перетворення, як зсув, обертання, масштабування, зсув у площині та перспективне поділення. Складається з чотирьох стовпців типу :ref:`Vector4<class_Vector4>`.

Для суто лінійних перетворень (зсув, обертання та масштабування) рекомендується використовувати :ref:`Transform3D<class_Transform3D>`, оскільки вона є більш продуктивною та вимагає менше пам’яті.

Використовується внутрішньо як матриця проекції :ref:`Camera3D<class_Camera3D>`.

\ **Примітка:** У булевому контексті проекція буде обчислюватися як ``false``, якщо вона дорівнює :ref:`IDENTITY<class_Projection_constant_IDENTITY>`. В іншому випадку проекція завжди обчислюватиметься як ``true``.

.. note::

	Існують значні відмінності при використанні цього API із С#. Більше інформації: ref:`doc_c_sharp_differences`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------+-------------------------+
   | :ref:`Vector4<class_Vector4>` | :ref:`w<class_Projection_property_w>` | ``Vector4(0, 0, 0, 1)`` |
   +-------------------------------+---------------------------------------+-------------------------+
   | :ref:`Vector4<class_Vector4>` | :ref:`x<class_Projection_property_x>` | ``Vector4(1, 0, 0, 0)`` |
   +-------------------------------+---------------------------------------+-------------------------+
   | :ref:`Vector4<class_Vector4>` | :ref:`y<class_Projection_property_y>` | ``Vector4(0, 1, 0, 0)`` |
   +-------------------------------+---------------------------------------+-------------------------+
   | :ref:`Vector4<class_Vector4>` | :ref:`z<class_Projection_property_z>` | ``Vector4(0, 0, 1, 0)`` |
   +-------------------------------+---------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

Конструктори
------------------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`Projection<class_Projection_constructor_Projection>`\ (\ )                                                                                                                                                                 |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`Projection<class_Projection_constructor_Projection>`\ (\ from\: :ref:`Projection<class_Projection>`\ )                                                                                                                     |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`Projection<class_Projection_constructor_Projection>`\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                   |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`Projection<class_Projection_constructor_Projection>`\ (\ x_axis\: :ref:`Vector4<class_Vector4>`, y_axis\: :ref:`Vector4<class_Vector4>`, z_axis\: :ref:`Vector4<class_Vector4>`, w_axis\: :ref:`Vector4<class_Vector4>`\ ) |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_depth_correction<class_Projection_method_create_depth_correction>`\ (\ flip_y\: :ref:`bool<class_bool>`\ ) |static|                                                                                                                                                                                                                                                                       |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_fit_aabb<class_Projection_method_create_fit_aabb>`\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |static|                                                                                                                                                                                                                                                                                         |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_for_hmd<class_Projection_method_create_for_hmd>`\ (\ eye\: :ref:`int<class_int>`, aspect\: :ref:`float<class_float>`, intraocular_dist\: :ref:`float<class_float>`, display_width\: :ref:`float<class_float>`, display_to_lens\: :ref:`float<class_float>`, oversample\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static|     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_frustum<class_Projection_method_create_frustum>`\ (\ left\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static|                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_frustum_aspect<class_Projection_method_create_frustum_aspect>`\ (\ size\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, offset\: :ref:`Vector2<class_Vector2>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static|                                                                            |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_light_atlas_rect<class_Projection_method_create_light_atlas_rect>`\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |static|                                                                                                                                                                                                                                                                       |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_orthogonal<class_Projection_method_create_orthogonal>`\ (\ left\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static|                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_orthogonal_aspect<class_Projection_method_create_orthogonal_aspect>`\ (\ size\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static|                                                                                                              |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_perspective<class_Projection_method_create_perspective>`\ (\ fovy\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static|                                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_perspective_hmd<class_Projection_method_create_perspective_hmd>`\ (\ fovy\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>`, eye\: :ref:`int<class_int>`, intraocular_dist\: :ref:`float<class_float>`, convergence_dist\: :ref:`float<class_float>`\ ) |static| |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`determinant<class_Projection_method_determinant>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`flipped_y<class_Projection_method_flipped_y>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_aspect<class_Projection_method_get_aspect>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`get_far_plane_half_extents<class_Projection_method_get_far_plane_half_extents>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_fov<class_Projection_method_get_fov>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_fovy<class_Projection_method_get_fovy>`\ (\ fovx\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`\ ) |static|                                                                                                                                                                                                                                                                 |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_lod_multiplier<class_Projection_method_get_lod_multiplier>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_pixels_per_meter<class_Projection_method_get_pixels_per_meter>`\ (\ for_pixel_width\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                       |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>`           | :ref:`get_projection_plane<class_Projection_method_get_projection_plane>`\ (\ plane\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                 |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`get_viewport_half_extents<class_Projection_method_get_viewport_half_extents>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_z_far<class_Projection_method_get_z_far>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_z_near<class_Projection_method_get_z_near>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`inverse<class_Projection_method_inverse>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_orthogonal<class_Projection_method_is_orthogonal>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`jitter_offseted<class_Projection_method_jitter_offseted>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                                                                                                                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`perspective_znear_adjusted<class_Projection_method_perspective_znear_adjusted>`\ (\ new_znear\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                                                                             |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Оператори
------------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_Projection_operator_neq_Projection>`\ (\ right\: :ref:`Projection<class_Projection>`\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`operator *<class_Projection_operator_mul_Projection>`\ (\ right\: :ref:`Projection<class_Projection>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`       | :ref:`operator *<class_Projection_operator_mul_Vector4>`\ (\ right\: :ref:`Vector4<class_Vector4>`\ )           |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_Projection_operator_eq_Projection>`\ (\ right\: :ref:`Projection<class_Projection>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`       | :ref:`operator []<class_Projection_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_Projection_Planes:

.. rst-class:: classref-enumeration

enum **Planes**: :ref:`🔗<enum_Projection_Planes>`

.. _class_Projection_constant_PLANE_NEAR:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_NEAR** = ``0``

Індексове значення площини проекції.

.. _class_Projection_constant_PLANE_FAR:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_FAR** = ``1``

Індексове значення дальньої площини проекції.

.. _class_Projection_constant_PLANE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_LEFT** = ``2``

Індексове значення площини лівого віджиму проекції.

.. _class_Projection_constant_PLANE_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_TOP** = ``3``

Індексове значення верхньої площини кліпінгу проекції.

.. _class_Projection_constant_PLANE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_RIGHT** = ``4``

Індекс значення правильної затискної площини проекції.

.. _class_Projection_constant_PLANE_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_BOTTOM** = ``5``

Індексове значення проекції нижнього клипарта.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константи
------------------

.. _class_Projection_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Projection(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)`` :ref:`🔗<class_Projection_constant_IDENTITY>`

**Projection** без визначення перетворення. При нанесенні на інші структури даних не виконується перетворення.

.. _class_Projection_constant_ZERO:

.. rst-class:: classref-constant

**ZERO** = ``Projection(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_Projection_constant_ZERO>`

**Projection** з усіма значеннями, ініціалізованими до 0. При нанесенні на інші структури даних вони будуть нулі.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Projection_property_w:

.. rst-class:: classref-property

:ref:`Vector4<class_Vector4>` **w** = ``Vector4(0, 0, 0, 1)`` :ref:`🔗<class_Projection_property_w>`

Вектор проекції матриць W (кольор 3). Equivalent до індексу масиву ``3``.

.. rst-class:: classref-item-separator

----

.. _class_Projection_property_x:

.. rst-class:: classref-property

:ref:`Vector4<class_Vector4>` **x** = ``Vector4(1, 0, 0, 0)`` :ref:`🔗<class_Projection_property_x>`

Вектор проекції матриць X (кул 0). Equivalent до індексу масиву ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Projection_property_y:

.. rst-class:: classref-property

:ref:`Vector4<class_Vector4>` **y** = ``Vector4(0, 1, 0, 0)`` :ref:`🔗<class_Projection_property_y>`

Вектор проекції матриці Y (кольор 1). Equivalent до індексу масиву ``1``.

.. rst-class:: classref-item-separator

----

.. _class_Projection_property_z:

.. rst-class:: classref-property

:ref:`Vector4<class_Vector4>` **z** = ``Vector4(0, 0, 1, 0)`` :ref:`🔗<class_Projection_property_z>`

Вектор проекції матриць Z (кольоровий 2). Equivalent до індексу масиву ``2``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи конструкторів
--------------------------------------

.. _class_Projection_constructor_Projection:

.. rst-class:: classref-constructor

:ref:`Projection<class_Projection>` **Projection**\ (\ ) :ref:`🔗<class_Projection_constructor_Projection>`

Створює ініціалізований за умовчанням **Projection**, ідентичний :ref:`IDENTITY<class_Projection_constant_IDENTITY>`.

\ **Примітка.** У C# це створює **Projection**, ідентичну :ref:`ZERO<class_Projection_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Projection<class_Projection>` **Projection**\ (\ from\: :ref:`Projection<class_Projection>`\ )

Constructs a **Projection** як копія даної **Projection**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Projection<class_Projection>` **Projection**\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )

Конструктиви проекції як копіювання даної :ref:`Transform3D<class_Transform3D>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Projection<class_Projection>` **Projection**\ (\ x_axis\: :ref:`Vector4<class_Vector4>`, y_axis\: :ref:`Vector4<class_Vector4>`, z_axis\: :ref:`Vector4<class_Vector4>`, w_axis\: :ref:`Vector4<class_Vector4>`\ )

Constructs a Projection від 4 :ref:`Vector4<class_Vector4>` значення (метри матриці матриці).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Projection_method_create_depth_correction:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_depth_correction**\ (\ flip_y\: :ref:`bool<class_bool>`\ ) |static| :ref:`🔗<class_Projection_method_create_depth_correction>`

Створює нові **Projection**, які позиції проекту з глибинного діапазону ``-1`` до ``1`` до того, що коливається від ``0`` до ``1``, і закрилки прозвучані позиції вертикально, відповідно до ``flip_y``.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_fit_aabb:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_fit_aabb**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |static| :ref:`🔗<class_Projection_method_create_fit_aabb>`

Створює нову **Projection**, яка масштабує задану проекцію, щоб відповідати даній :ref:`AABB<class_AABB>` в проекційному просторі.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_for_hmd:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_for_hmd**\ (\ eye\: :ref:`int<class_int>`, aspect\: :ref:`float<class_float>`, intraocular_dist\: :ref:`float<class_float>`, display_width\: :ref:`float<class_float>`, display_to_lens\: :ref:`float<class_float>`, oversample\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_create_for_hmd>`

Створює нову **Projection** для проекційних позицій на заголовку екрана з заданим коефіцієнтом X:Y, відстань між очима, ширина дисплея, відстань до лінзи, перенапруження фактора і глибинним площинами.

\ ``eye`` створює проекцію для лівого ока при встановленні до 1, або правого ока при встановленні до 2.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_frustum:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_frustum**\ (\ left\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_create_frustum>`

Створює нові **Projection**, які виступи проектів у фрусті з заданими площинами кліпінгу.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_frustum_aspect:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_frustum_aspect**\ (\ size\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, offset\: :ref:`Vector2<class_Vector2>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Projection_method_create_frustum_aspect>`

Створює нові **Projection**, які позиції проектів у фрусті з заданим розміром, X:Y співвідношення сторін, зміщення та затискання площин.

\ ``flip_fov`` визначає, чи є поле проекції, що перекривається на його діагоналі.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_light_atlas_rect:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_light_atlas_rect**\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |static| :ref:`🔗<class_Projection_method_create_light_atlas_rect>`

Створює нові **Projection**, які об’єкти надані :ref:`Rect2<class_Rect2>`.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_orthogonal:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_orthogonal**\ (\ left\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_create_orthogonal>`

Створює нові позиції проекту за допомогою ортогональної проекції з заданими площинами.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_orthogonal_aspect:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_orthogonal_aspect**\ (\ size\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Projection_method_create_orthogonal_aspect>`

Створює нові позиції проекту за допомогою ортогональної проекції з заданим розміром, X:Y співвідношення сторін та площини затискання.

\ ``flip_fov`` визначає, чи є поле проекції, що перекривається на його діагоналі.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_perspective:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_perspective**\ (\ fovy\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Projection_method_create_perspective>`

Створює нові позиції проекту за допомогою перспективної проекції з заданим полем Y (в градусах), коефіцієнтом X:Y і площинами затискання.

\ ``flip_fov`` визначає, чи є поле проекції, що перекривається на його діагоналі.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_perspective_hmd:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_perspective_hmd**\ (\ fovy\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>`, eye\: :ref:`int<class_int>`, intraocular_dist\: :ref:`float<class_float>`, convergence_dist\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_create_perspective_hmd>`

Створює нові позиції проекту з використанням перспективної проекції з заданим полем Y (в градусах), коефіцієнтом X:Y, відстані кліпування. Проекція налаштовується для монтованого дисплея з даної відстані між очима і дистанцією до точки, яка може бути зосереджена на.

\ ``eye`` створює проекцію для лівого ока при встановленні до 1, або правого ока при встановленні до 2.

\ ``flip_fov`` визначає, чи є поле проекції, що перекривається на його діагоналі.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_determinant:

.. rst-class:: classref-method

:ref:`float<class_float>` **determinant**\ (\ ) |const| :ref:`🔗<class_Projection_method_determinant>`

Повертає значення скаляра, яка є підписаним фактором, на якому ділянки масштабуються цією матрицею. Якщо знак негативний, матриця закріплює спрямованість ділянки.

Детермінант може використовуватися для розрахунку інвертабельності матриці або розчину лінійних систем рівнянь, що включають матрицю, серед інших додатків.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_flipped_y:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **flipped_y**\ (\ ) |const| :ref:`🔗<class_Projection_method_flipped_y>`

Повертає копію цього **Projection** з ознаками значень колонки Y.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_aspect:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_aspect**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_aspect>`

Повернення X:Y співвідношення сторін цього **Projection**.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_far_plane_half_extents:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_far_plane_half_extents**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_far_plane_half_extents>`

Повертає розміри далекої затискної площини проекції, розділеної на два.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_fov:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fov**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_fov>`

Повертає горизонтальне поле зору проекції (в градусах).

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_fovy:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fovy**\ (\ fovx\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_get_fovy>`

Повертає вертикальне поле огляду проекції (у градусах), пов’язане з даним горизонтальним полем огляду (у градусах) і співвідношенням сторін. 

\ **Примітка:** На відміну від більшості методів **Projection**, очікується, що ``aspect`` дорівнює 1, поділеному на співвідношення X:Y.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_lod_multiplier:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_lod_multiplier**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_lod_multiplier>`

Повертає фактор, за яким видимий рівень деталь масштабується цим **Projection**.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_pixels_per_meter:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_pixels_per_meter**\ (\ for_pixel_width\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Projection_method_get_pixels_per_meter>`

Повертає ``for_pixel_width``, поділений на ширину області перегляду, виміряну в метрах на ближній площині, після застосування цієї **Projection**.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_projection_plane:

.. rst-class:: classref-method

:ref:`Plane<class_Plane>` **get_projection_plane**\ (\ plane\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Projection_method_get_projection_plane>`

Повертає площину кліпінгу **Projection**, індекс якого віддається ``plane``.

\ ``plane`` повинна бути рівним з одним з :ref:`PLANE_NEAR<class_Projection_constant_PLANE_NEAR>`, :ref:`PLANE_FAR<class_Projection_constant_PLANE_FAR>`, :ref:`PLANE_LEFT<class_Projection_constant_PLANE_LEFT>`, :ref:`PLANE_TOP<class_Projection_constant_PLANE_TOP>`, :ref:`PLANE_RIGHT<class_Projection_constant_PLANE_RIGHT>`, або :ref:`PLANE_BOTTOM<class_Projection_constant_PLANE_BOTTOM>`.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_viewport_half_extents:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_viewport_half_extents**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_viewport_half_extents>`

Повертає розміри площини огляду, що це **Projection** позиції проектів на, розділених на два.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_z_far:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_z_far**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_z_far>`

Повертає відстань для цього **Projection** за межі яких позицій затискаються.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_z_near:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_z_near**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_z_near>`

Повертає відстань для цього **Projection** перед якими позиціями затискаються.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_inverse:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **inverse**\ (\ ) |const| :ref:`🔗<class_Projection_method_inverse>`

Повертає об'єкт **Projection**, який виконує обернене проективне перетворення цього об'єкта **Projection**.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_is_orthogonal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_orthogonal**\ (\ ) |const| :ref:`🔗<class_Projection_method_is_orthogonal>`

``true``, якщо це **Projection** виконує ортогональну проекцію.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_jitter_offseted:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **jitter_offseted**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Projection_method_jitter_offseted>`

Повертає **Projection** зі значеннями X та Y з заданого :ref:`Vector2<class_Vector2>`, доданими до першого та другого значень останнього стовпця відповідно.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_perspective_znear_adjusted:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **perspective_znear_adjusted**\ (\ new_znear\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Projection_method_perspective_znear_adjusted>`

Повертаємо вашу увагу на те, що в найближчому відгалуження використовується ``new_znear``.

\ **Примітка:** Оригінальний **Projection** повинен бути перспективним проекції.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_Projection_operator_neq_Projection:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Projection<class_Projection>`\ ) :ref:`🔗<class_Projection_operator_neq_Projection>`

Повертає ``true``, якщо виступи не рівні.

\ **Примітка:** У зв'язку з похибками точної точності, це може повернутися ``true``, навіть якщо проекції практично рівні. ``is_equal_приблизно`` метод може бути додана в майбутньому версії Godot.

.. rst-class:: classref-item-separator

----

.. _class_Projection_operator_mul_Projection:

.. rst-class:: classref-operator

:ref:`Projection<class_Projection>` **operator ***\ (\ right\: :ref:`Projection<class_Projection>`\ ) :ref:`🔗<class_Projection_operator_mul_Projection>`

Повертає **Projection**, який застосовує комбіновані перетворення цього **Projection** та ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Projection_operator_mul_Vector4:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator ***\ (\ right\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_Projection_operator_mul_Vector4>`

Проекти (multiplies) задані :ref:`Vector4<class_Vector4>` за допомогою цієї матриці **Projection**.

.. rst-class:: classref-item-separator

----

.. _class_Projection_operator_eq_Projection:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Projection<class_Projection>`\ ) :ref:`🔗<class_Projection_operator_eq_Projection>`

Повертає ``true``, якщо виступи рівні.

\ **Примітка:** У зв'язку з похибками точної точності, це може повернутися ``false``, навіть якщо проекції практично рівні. ``is_equal_приблизно`` метод може бути додана в майбутньому версії Godot.

.. rst-class:: classref-item-separator

----

.. _class_Projection_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Projection_operator_idx_int>`

Повертає стовпчик **Projection** з вказаним індексом.

Індикатори в порядку: x, y, z, w.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
