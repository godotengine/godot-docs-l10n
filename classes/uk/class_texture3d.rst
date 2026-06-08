:github_url: hide

.. _class_Texture3D:

Texture3D
=========

**Успадковує:** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`CompressedTexture3D<class_CompressedTexture3D>`, :ref:`ImageTexture3D<class_ImageTexture3D>`, :ref:`NoiseTexture3D<class_NoiseTexture3D>`, :ref:`PlaceholderTexture3D<class_PlaceholderTexture3D>`, :ref:`Texture3DRD<class_Texture3DRD>`

Базовий клас для тривимірних фактур.

.. rst-class:: classref-introduction-group

Опис
--------

Базовий клас для :ref:`ImageTexture3D<class_ImageTexture3D>` та :ref:`CompressedTexture3D<class_CompressedTexture3D>`. Не можна використовувати безпосередньо, але містить всі функції, необхідні для доступу до отриманих типів ресурсів. **Texture3D** - базовий клас для всіх 3-вимірних типів текстур. Дивись також :ref:`TextureLayered<class_TextureLayered>`.

Всі зображення повинні мати однакову ширину, висоту і кількість рівнів mipmap.

Щоб створити такий фактурний файл самостійно, переімпортуйте файли зображень за допомогою пресетів Godot Editor.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] | :ref:`_get_data<class_Texture3D_private_method__get_data>`\ (\ ) |virtual| |required| |const|       |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`_get_depth<class_Texture3D_private_method__get_depth>`\ (\ ) |virtual| |required| |const|     |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Format<enum_Image_Format>`                       | :ref:`_get_format<class_Texture3D_private_method__get_format>`\ (\ ) |virtual| |required| |const|   |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`_get_height<class_Texture3D_private_method__get_height>`\ (\ ) |virtual| |required| |const|   |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`_get_width<class_Texture3D_private_method__get_width>`\ (\ ) |virtual| |required| |const|     |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`_has_mipmaps<class_Texture3D_private_method__has_mipmaps>`\ (\ ) |virtual| |required| |const| |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                        | :ref:`create_placeholder<class_Texture3D_method_create_placeholder>`\ (\ ) |const|                  |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] | :ref:`get_data<class_Texture3D_method_get_data>`\ (\ ) |const|                                      |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_depth<class_Texture3D_method_get_depth>`\ (\ ) |const|                                    |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Format<enum_Image_Format>`                       | :ref:`get_format<class_Texture3D_method_get_format>`\ (\ ) |const|                                  |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_height<class_Texture3D_method_get_height>`\ (\ ) |const|                                  |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_width<class_Texture3D_method_get_width>`\ (\ ) |const|                                    |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`has_mipmaps<class_Texture3D_method_has_mipmaps>`\ (\ ) |const|                                |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Texture3D_private_method__get_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] **_get_data**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__get_data>`

Зателефоновано при перерахуванні даних **Texture3D**.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_private_method__get_depth:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_depth**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__get_depth>`

Зателефоновано, коли глибина **Texture3D** передається.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_private_method__get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **_get_format**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__get_format>`

Зателефоновано, коли передається формат **Texture3D**.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_private_method__get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_height**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__get_height>`

Зателефоновано при висоті **Texture3D**.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_private_method__get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_width**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__get_width>`

Зателефонуйте, коли ширина **Texture3D** передається.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_private_method__has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_mipmaps**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__has_mipmaps>`

Зателефоновано при наявності mipmaps в **Texture3D** передається.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_create_placeholder>`

Створює заповнювач для цього ресурсу (:ref:`PlaceholderTexture3D<class_PlaceholderTexture3D>`).

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_get_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] **get_data**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_get_data>`

Повертає дані **Texture3D** як масив об'єктів :ref:`Image<class_Image>`. Кожен :ref:`Image<class_Image>` являє собою *slice* (розріз) **Texture3D**, причому різні розрізи відповідають різним рівням глибини (вісі Z).

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_get_depth:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_depth**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_get_depth>`

Повертає глибину **Texture3D** у пікселях. Глибина, як правило, представлена осі Z (розмір не присутній в :ref:`Texture2D<class_Texture2D>`).

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **get_format**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_get_format>`

Повертає поточний формат, що використовується цією текстурою.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_height**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_get_height>`

Повертає висоту **Texture3D** у пікселях. Ширина зазвичай представлена осі Y.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_width**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_get_width>`

Повертає ширину **Texture3D** у пікселях. Ширина зазвичай представлена осі X.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_mipmaps**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_has_mipmaps>`

``true``, якщо **Texture3D** генерував mipmaps.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
