:github_url: hide

.. _class_Sky:

Sky
===

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Визначає фон 3D-середовища за допомогою :ref:`Material<class_Material>`.

.. rst-class:: classref-introduction-group

Опис
--------

Клас **Sky** використовує :ref:`Material<class_Material>` для візуалізації фону тривимірного середовища та світла, яке воно випромінює, оновлюючи кубічні карти відбиття/світла.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +--------------------------------------------+--------------------------------------------------------+-------+
   | :ref:`ProcessMode<enum_Sky_ProcessMode>`   | :ref:`process_mode<class_Sky_property_process_mode>`   | ``0`` |
   +--------------------------------------------+--------------------------------------------------------+-------+
   | :ref:`RadianceSize<enum_Sky_RadianceSize>` | :ref:`radiance_size<class_Sky_property_radiance_size>` | ``3`` |
   +--------------------------------------------+--------------------------------------------------------+-------+
   | :ref:`Material<class_Material>`            | :ref:`sky_material<class_Sky_property_sky_material>`   |       |
   +--------------------------------------------+--------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_Sky_RadianceSize:

.. rst-class:: classref-enumeration

enum **RadianceSize**: :ref:`🔗<enum_Sky_RadianceSize>`

.. _class_Sky_constant_RADIANCE_SIZE_32:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_32** = ``0``

Розмір текстури Radiance становить 32×32 пікселя.

.. _class_Sky_constant_RADIANCE_SIZE_64:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_64** = ``1``

Розмір текстури Radiance становить 64×64 пікселя.

.. _class_Sky_constant_RADIANCE_SIZE_128:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_128** = ``2``

Розмір текстури Radiance становить 128×128 пікселів.

.. _class_Sky_constant_RADIANCE_SIZE_256:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_256** = ``3``

Розмір текстури Radiance становить 256×256 пікселів.

.. _class_Sky_constant_RADIANCE_SIZE_512:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_512** = ``4``

Розмір текстури Radiance становить 512×512 пікселів.

.. _class_Sky_constant_RADIANCE_SIZE_1024:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_1024** = ``5``

Розмір текстури Radiance становить 1024 × 1024 пікселів.

.. _class_Sky_constant_RADIANCE_SIZE_2048:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_2048** = ``6``

Розмір текстури Radiance становить 2048×2048 пікселів.

.. _class_Sky_constant_RADIANCE_SIZE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_MAX** = ``7``

Представляє розмір переліку :ref:`RadianceSize<enum_Sky_RadianceSize>`.

.. rst-class:: classref-item-separator

----

.. _enum_Sky_ProcessMode:

.. rst-class:: classref-enumeration

enum **ProcessMode**: :ref:`🔗<enum_Sky_ProcessMode>`

.. _class_Sky_constant_PROCESS_MODE_AUTOMATIC:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Sky_ProcessMode>` **PROCESS_MODE_AUTOMATIC** = ``0``

Автоматично вибирає відповідний режим процесу на основі вашого шейдера неба. Якщо ваш шейдер використовує ``TIME`` або ``POSITION``, буде використано :ref:`PROCESS_MODE_REALTIME<class_Sky_constant_PROCESS_MODE_REALTIME>`. Якщо ваш шейдер використовує будь-яку зі змінних ``LIGHT_*`` або будь-яку спеціальну форму, тут використовується :ref:`PROCESS_MODE_INCREMENTAL<class_Sky_constant_PROCESS_MODE_INCREMENTAL>`. В іншому випадку за замовчуванням :ref:`PROCESS_MODE_QUALITY<class_Sky_constant_PROCESS_MODE_QUALITY>`.

.. _class_Sky_constant_PROCESS_MODE_QUALITY:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Sky_ProcessMode>` **PROCESS_MODE_QUALITY** = ``1``

Використовує якісне значення вибірки для обробки карти променевості. В цілому, це призводить до більш високої якості, ніж :ref:`PROCESS_MODE_REALTIME<class_Sky_constant_PROCESS_MODE_REALTIME>`, але займає набагато довше, щоб генерувати. Якщо ви плануєте змінити небо в режимі runtime. Якщо ви знаходилися, що відбиття недостатньо розмитне і показує блиск або пожежі, спробуйте збільшити :ref:`ProjectSettings.rendering/reflections/sky_reflections/ggx_samples<class_ProjectSettings_property_rendering/reflections/sky_reflections/ggx_samples>`.

.. _class_Sky_constant_PROCESS_MODE_INCREMENTAL:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Sky_ProcessMode>` **PROCESS_MODE_INCREMENTAL** = ``2``

Використовуйте те ж саме високу якість, що важливо для обробки карти променевості, як :ref:`PROCESS_MODE_QUALITY<class_Sky_constant_PROCESS_MODE_QUALITY>`, але оновлення декількох кадрів. Кількість кадрів визначається :ref:`ProjectSettings.rendering/reflections/sky_reflections/roughness_layers<class_ProjectSettings_property_rendering/reflections/sky_reflections/roughness_layers>`. Використовуйте це, коли вам потрібна найвища якість випромінювальних карт, але мають небо, яке повільно оновлюється.

.. _class_Sky_constant_PROCESS_MODE_REALTIME:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Sky_ProcessMode>` **PROCESS_MODE_REALTIME** = ``3``

Використовуйте алгоритм швидкого фільтрування для обробки карти променевості. В цілому це призводить до низької якості, але значно швидше часу запуску. Якщо вам потрібна краща якість, але все ще потрібно оновити небо кожного кадру, розгляньте поворот на :ref:`ProjectSettings.rendering/reflections/sky_reflections/fast_filter_high_quality<class_ProjectSettings_property_rendering/reflections/sky_reflections/fast_filter_high_quality>`.

\ **Примітка:** Швидкий алгоритм фільтрації обмежується 256 × 256 кубиками, тому ``пам'ятний променанс_розмір`` необхідно встановити до :ref:`RADIANCE_SIZE_256<class_Sky_constant_RADIANCE_SIZE_256>`. Інакше, попередження друкується і ігнорується розмір випромінювача.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Sky_property_process_mode:

.. rst-class:: classref-property

:ref:`ProcessMode<enum_Sky_ProcessMode>` **process_mode** = ``0`` :ref:`🔗<class_Sky_property_process_mode>`

.. rst-class:: classref-property-setget

- |void| **set_process_mode**\ (\ value\: :ref:`ProcessMode<enum_Sky_ProcessMode>`\ )
- :ref:`ProcessMode<enum_Sky_ProcessMode>` **get_process_mode**\ (\ )

Метод створення карти яскравості неба. Карта яскравості являє собою кубічну карту зі все більш розмитими версіями неба, що відповідають різним рівням шорсткості. Розрахунок карт яскравості може бути складним.

.. rst-class:: classref-item-separator

----

.. _class_Sky_property_radiance_size:

.. rst-class:: classref-property

:ref:`RadianceSize<enum_Sky_RadianceSize>` **radiance_size** = ``3`` :ref:`🔗<class_Sky_property_radiance_size>`

.. rst-class:: classref-property-setget

- |void| **set_radiance_size**\ (\ value\: :ref:`RadianceSize<enum_Sky_RadianceSize>`\ )
- :ref:`RadianceSize<enum_Sky_RadianceSize>` **get_radiance_size**\ (\ )

Розмір карти сяйва **Sky**. Чим вищий розмір карти сяйва, тим детальнішим буде освітлення від **Sky**.

\ **Примітка:** Деяке обладнання матиме проблеми з вищими розмірами сяйва, особливо :ref:`RADIANCE_SIZE_512<class_Sky_constant_RADIANCE_SIZE_512>` і вище. Використовуйте такі високі значення лише на високопродуктивному обладнанні.

.. rst-class:: classref-item-separator

----

.. _class_Sky_property_sky_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **sky_material** :ref:`🔗<class_Sky_property_sky_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

``Матеріал`` для малювання фону. Може бути :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>`, :ref:`ProceduralSkyMaterial<class_ProceduralSkyMaterial>`, :ref:`PhysicalSkyMaterial<class_PhysicalSkyMaterial>` або навіть :ref:`ShaderMaterial<class_ShaderMaterial>`, якщо ви хочете використовувати свій власний шейдер.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
