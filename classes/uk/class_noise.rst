:github_url: hide

.. _class_Noise:

Noise
=====

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`FastNoiseLite<class_FastNoiseLite>`

Абстрактний базовий клас шумогенераторів.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас визначає інтерфейс для бібліотечних бібліотек шуму у спадку.

Для бібліотек, які не забезпечують безшовний шум. Ця функція вимагає більшого зображення з методу :ref:`get_image()<class_Noise_method_get_image>`, повертає квадроанти зображення, потім використовує смуги додаткової ширини для змішування над швами.

Для забезпечення більш оптимального алгоритму можна скористатися перевагами шуму.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`                              | :ref:`get_image<class_Noise_method_get_image>`\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, in_3d_space\: :ref:`bool<class_bool>` = false, normalize\: :ref:`bool<class_bool>` = true\ ) |const|                                                            |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] | :ref:`get_image_3d<class_Noise_method_get_image_3d>`\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, normalize\: :ref:`bool<class_bool>` = true\ ) |const|                                                                      |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`get_noise_1d<class_Noise_method_get_noise_1d>`\ (\ x\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                                           |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`get_noise_2d<class_Noise_method_get_noise_2d>`\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                            |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`get_noise_2dv<class_Noise_method_get_noise_2dv>`\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                                                                                                                     |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`get_noise_3d<class_Noise_method_get_noise_3d>`\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, z\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                             |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`get_noise_3dv<class_Noise_method_get_noise_3dv>`\ (\ v\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                                                                                                                     |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`                              | :ref:`get_seamless_image<class_Noise_method_get_seamless_image>`\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, in_3d_space\: :ref:`bool<class_bool>` = false, skirt\: :ref:`float<class_float>` = 0.1, normalize\: :ref:`bool<class_bool>` = true\ ) |const| |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] | :ref:`get_seamless_image_3d<class_Noise_method_get_seamless_image_3d>`\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, skirt\: :ref:`float<class_float>` = 0.1, normalize\: :ref:`bool<class_bool>` = true\ ) |const|           |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Noise_method_get_image:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **get_image**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, in_3d_space\: :ref:`bool<class_bool>` = false, normalize\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Noise_method_get_image>`

Повертаємо увагу, що значення шуму 2D.

\ **Note:** За допомогою ``normalize`` встановлюється до ``false``, реалізація за замовчуванням очікує шумогенератора для повернення значень в діапазоні ``-1.0`` до ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_image_3d:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] **get_image_3d**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, normalize\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Noise_method_get_image_3d>`

Повертаємо :ref:`Array<class_Array>` ``Іmage``, що містить 3D значення шуму для використання з :ref:`ImageTexture3D.create()<class_ImageTexture3D_method_create>`.

\ **Примітка:** З ``normalize`` встановлюється до ``false``, реалізація за замовчуванням очікує шумогенератора, щоб повернути значення в діапазоні ``-1.0`` до ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_noise_1d:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_noise_1d**\ (\ x\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Noise_method_get_noise_1d>`

Повертає значення шуму 1D на даній (x) координаті.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_noise_2d:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_noise_2d**\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Noise_method_get_noise_2d>`

Повертає значення шуму 2D на даній позиції.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_noise_2dv:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_noise_2dv**\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Noise_method_get_noise_2dv>`

Повертає значення шуму 2D на даній позиції.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_noise_3d:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_noise_3d**\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, z\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Noise_method_get_noise_3d>`

Повертає значення шуму 3D на даній позиції.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_noise_3dv:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_noise_3dv**\ (\ v\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Noise_method_get_noise_3dv>`

Повертає значення шуму 3D на даній позиції.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_seamless_image:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **get_seamless_image**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, in_3d_space\: :ref:`bool<class_bool>` = false, skirt\: :ref:`float<class_float>` = 0.1, normalize\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Noise_method_get_seamless_image>`

Повертаємо вашу увагу на те, що безшовні 2D значення шуму.

\ **Примітка:** За допомогою ``normalize`` встановлюється до ``false``, реалізація за замовчуванням очікує шумогенератора для повернення значень в діапазоні ``-1.0`` до ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_seamless_image_3d:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] **get_seamless_image_3d**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, skirt\: :ref:`float<class_float>` = 0.1, normalize\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Noise_method_get_seamless_image_3d>`

Повертаємо :ref:`Array<class_Array>` :ref:`Image<class_Image>`, що містить безшовні 3D значення шуму для використання з :ref:`ImageTexture3D.create()<class_ImageTexture3D_method_create>`.

\ **Примітка:** З ``normalize`` встановлюється до ``false``, реалізація за замовчуванням очікує шумогенератора для повернення значень в діапазоні ``-1.0`` до ``1.0``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
