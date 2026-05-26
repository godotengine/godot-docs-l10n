:github_url: hide

.. _class_ImageTexture:

ImageTexture
============

**Успадковує:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`Texture2D<class_Texture2D>` на основі :ref:`Image<class_Image>`.

.. rst-class:: classref-introduction-group

Опис
--------

:ref:`Texture2D<class_Texture2D>` на основі :ref:`Image<class_Image>`. Щоб зображення було відображено, з нього потрібно створити **ImageTexture** за допомогою методу :ref:`create_from_image()<class_ImageTexture_method_create_from_image>`: 

::

    Image.load_from_file("res://icon.svg") 
    var texture = ImageTexture.create_from_image(image) 
    $Sprite2D.texture = текстура  

Таким чином текстури можна створювати під час виконання, завантажуючи зображення як із редактора, так і ззовні. 

\ **Попередження:** краще завантажувати імпортовані текстури за допомогою :ref:`@GDScript.load()<class_@GDScript_method_load>`, а не динамічно завантажувати їх із файлової системи за допомогою :ref:`Image.load()<class_Image_method_load>`, оскільки це може не працювати в експортованих проектах: 

::
 
    var texture = load("res://icon.svg") 
    $Sprite2D.texture = текстура  

Це пояснюється тим, що зображення потрібно імпортувати як :ref:`CompressedTexture2D<class_CompressedTexture2D>`, щоб завантажити їх за допомогою :ref:`@GDScript.load()<class_@GDScript_method_load>`. Якщо ви все одно хочете завантажити файл зображення, як і будь-який інший :ref:`Resource<class_Resource>`, імпортуйте його як ресурс :ref:`Image<class_Image>`, а потім завантажте його звичайним способом за допомогою методу :ref:`@GDScript.load()<class_@GDScript_method_load>`. 

\ **Примітка.** Зображення можна отримати з імпортованої текстури за допомогою методу :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>`, який повертає копію зображення: 

::
 
    var texture = load("res://icon.svg") 
    var image = texture.get_image()  

\ **ImageTexture** не призначений для безпосереднього керування з інтерфейсу редактора, і він здебільшого корисний для динамічного відтворення зображень на екрані за допомогою коду. Якщо вам потрібно процедурно генерувати зображення з редактора, розгляньте можливість збереження та імпорту зображень як користувальницьких текстурних ресурсів за допомогою нового :ref:`EditorImportPlugin<class_EditorImportPlugin>`. 

\ **Примітка:** Максимальний розмір текстури становить 16384 × 16384 пікселів через обмеження графічного обладнання.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Імпорт зображень <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ImageTexture<class_ImageTexture>` | :ref:`create_from_image<class_ImageTexture_method_create_from_image>`\ (\ image\: :ref:`Image<class_Image>`\ ) |static| |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`set_image<class_ImageTexture_method_set_image>`\ (\ image\: :ref:`Image<class_Image>`\ )                          |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`set_size_override<class_ImageTexture_method_set_size_override>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )     |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`update<class_ImageTexture_method_update>`\ (\ image\: :ref:`Image<class_Image>`\ )                                |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ImageTexture_method_create_from_image:

.. rst-class:: classref-method

:ref:`ImageTexture<class_ImageTexture>` **create_from_image**\ (\ image\: :ref:`Image<class_Image>`\ ) |static| :ref:`🔗<class_ImageTexture_method_create_from_image>`

Створює нові **ImageTexture** і ініціалізує його шляхом виділення та налаштування даних з :ref:`Image<class_Image>`.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_set_image:

.. rst-class:: classref-method

|void| **set_image**\ (\ image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_ImageTexture_method_set_image>`

Замінює дані текстури з новим :ref:`Image<class_Image>`. Це перетворить нову пам'ять для текстури.

Якщо ви хочете оновити зображення, але не потрібно змінити його параметри (формат, розмір), скористайтеся :ref:`update()<class_ImageTexture_method_update>` замість кращої продуктивності.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_set_size_override:

.. rst-class:: classref-method

|void| **set_size_override**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_ImageTexture_method_set_size_override>`

Зменшення текстури до зазначених розмірів.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_update:

.. rst-class:: classref-method

|void| **update**\ (\ image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_ImageTexture_method_update>`

Замінює дані текстури з новим :ref:`Image<class_Image>`.

\ **Примітка:** Текстура повинна бути створена за допомогою :ref:`create_from_image()<class_ImageTexture_method_create_from_image>` або ініціалізованого першого з методом :ref:`set_image()<class_ImageTexture_method_set_image>` до його можна оновити. Налаштування нових розмірів зображень, форматів та mipmaps повинна відповідати існуючій конфігурації зображення текстури.

Використовуйте цей метод над :ref:`set_image()<class_ImageTexture_method_set_image>`, якщо вам потрібно оновити фактуру часто, що швидше, ніж виділення додаткової пам'яті для нової текстури кожного разу.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
