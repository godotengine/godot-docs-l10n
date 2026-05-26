:github_url: hide

.. _class_ImageTexture:

ImageTexture
============

**Наследует:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`Texture2D<class_Texture2D>` на основе :ref:`Image<class_Image>`.

.. rst-class:: classref-introduction-group

Описание
----------------

:ref:`Texture2D<class_Texture2D>` на основе :ref:`Image<class_Image>`. Для отображения изображения, необходимо создать **ImageTexture** с помощью метода :ref:`create_from_image()<class_ImageTexture_method_create_from_image>`:

::

    var image = Image.load_from_file("res://icon.svg")
    var texture = ImageTexture.create_from_image(image)
    $Sprite2D.texture = texture

Таким образом, текстуры можно создавать во время выполнения, загружая изображения как из редактора, так и извне.

\ **Предупреждение:** Предпочтительнее загружать импортированные текстуры с помощью :ref:`@GDScript.load()<class_@GDScript_method_load>`, чем загружать их из файловой системы динамически с помощью :ref:`Image.load()<class_Image_method_load>`, так как это может не работать в экспортированных проектах:

::

    var texture = load("res://icon.svg")
    $Sprite2D.texture = texture

Это связано с тем, что изображения сначала должны быть импортированы как :ref:`CompressedTexture2D<class_CompressedTexture2D>`, чтобы быть загруженными с помощью :ref:`@GDScript.load()<class_@GDScript_method_load>`. Если вы все равно хотите загрузить файл изображения, как и любой другой :ref:`Resource<class_Resource>`, импортируйте его как ресурс :ref:`Image<class_Image>`, а затем загрузите его обычным образом с помощью метода :ref:`@GDScript.load()<class_@GDScript_method_load>`.

\ **Примечание:** Изображение можно получить из импортированной текстуры с помощью метода :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>`, который возвращает копию изображения:

::

    var texture = load("res://icon.svg")
    var image = texture.get_image()

\ **ImageTexture** не предназначен для управления из интерфейса редактора напрямую и в основном полезен для динамического рендеринга изображений на экране с помощью кода. Если вам нужно создавать изображения процедурно из редактора, рассмотрите возможность сохранения и импорта изображений в качестве пользовательских ресурсов текстур, реализующих новый :ref:`EditorImportPlugin<class_EditorImportPlugin>`.

\ **Примечание:** Максимальный размер текстуры составляет 16384×16384 пикселей из-за ограничений графического оборудования.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Импорт изображений <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
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

Описания метода
------------------------------

.. _class_ImageTexture_method_create_from_image:

.. rst-class:: classref-method

:ref:`ImageTexture<class_ImageTexture>` **create_from_image**\ (\ image\: :ref:`Image<class_Image>`\ ) |static| :ref:`🔗<class_ImageTexture_method_create_from_image>`

Создает новый **ImageTexture** и инициализирует его, выделяя и устанавливая данные из :ref:`Image<class_Image>`.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_set_image:

.. rst-class:: classref-method

|void| **set_image**\ (\ image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_ImageTexture_method_set_image>`

Заменяет данные текстуры новым :ref:`Image<class_Image>`. Это перераспределит новую память для текстуры.

Если вы хотите обновить изображение, но не хотите менять его параметры (формат, размер), используйте :ref:`update()<class_ImageTexture_method_update>` для лучшей производительности.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_set_size_override:

.. rst-class:: classref-method

|void| **set_size_override**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_ImageTexture_method_set_size_override>`

Изменяет размер текстуры до указанных размеров.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_update:

.. rst-class:: classref-method

|void| **update**\ (\ image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_ImageTexture_method_update>`

Заменяет данные текстуры новым :ref:`Image<class_Image>`.

\ **Примечание:** Текстуру необходимо создать с помощью :ref:`create_from_image()<class_ImageTexture_method_create_from_image>` или сначала инициализировать с помощью метода :ref:`set_image()<class_ImageTexture_method_set_image>`, прежде чем ее можно будет обновить. Новые размеры изображения, формат и конфигурация mip-карт должны соответствовать конфигурации изображения существующей текстуры.

Используйте этот метод :ref:`set_image()<class_ImageTexture_method_set_image>`, если вам нужно часто обновлять текстуру, что быстрее, чем выделять дополнительную память для новой текстуры каждый раз.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
