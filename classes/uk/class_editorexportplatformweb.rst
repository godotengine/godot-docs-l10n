:github_url: hide

.. _class_EditorExportPlatformWeb:

EditorExportPlatformWeb
=======================

**Успадковує:** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Експортер для Web.

.. rst-class:: classref-introduction-group

Опис
--------

Веб-експортер налаштовує, як працює веб-будування. У вікні редактора "Експорт" створюється при додаванні нового "Веб"

\ **Примітка:** Godot на веб-сторінці ``<canvas>`` тег. Нормально, полотно не може розташовуватися або негабаритно вручну, але інакше діє як головна :ref:`Window<class_Window>` застосування.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Експорт веб <../tutorials/export/exporting_for_web>`

- :doc:`Індекс веб-документації <../tutorials/platform/web/index>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`custom_template/debug<class_EditorExportPlatformWeb_property_custom_template/debug>`                                                                         |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`custom_template/release<class_EditorExportPlatformWeb_property_custom_template/release>`                                                                     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`html/canvas_resize_policy<class_EditorExportPlatformWeb_property_html/canvas_resize_policy>`                                                                 |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`html/custom_html_shell<class_EditorExportPlatformWeb_property_html/custom_html_shell>`                                                                       |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`html/experimental_virtual_keyboard<class_EditorExportPlatformWeb_property_html/experimental_virtual_keyboard>`                                               |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`html/export_icon<class_EditorExportPlatformWeb_property_html/export_icon>`                                                                                   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`html/focus_canvas_on_start<class_EditorExportPlatformWeb_property_html/focus_canvas_on_start>`                                                               |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`html/head_include<class_EditorExportPlatformWeb_property_html/head_include>`                                                                                 |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`   | :ref:`progressive_web_app/background_color<class_EditorExportPlatformWeb_property_progressive_web_app/background_color>`                                           |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`progressive_web_app/display<class_EditorExportPlatformWeb_property_progressive_web_app/display>`                                                             |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`progressive_web_app/enabled<class_EditorExportPlatformWeb_property_progressive_web_app/enabled>`                                                             |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`progressive_web_app/ensure_cross_origin_isolation_headers<class_EditorExportPlatformWeb_property_progressive_web_app/ensure_cross_origin_isolation_headers>` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`progressive_web_app/icon_144x144<class_EditorExportPlatformWeb_property_progressive_web_app/icon_144x144>`                                                   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`progressive_web_app/icon_180x180<class_EditorExportPlatformWeb_property_progressive_web_app/icon_180x180>`                                                   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`progressive_web_app/icon_512x512<class_EditorExportPlatformWeb_property_progressive_web_app/icon_512x512>`                                                   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`progressive_web_app/offline_page<class_EditorExportPlatformWeb_property_progressive_web_app/offline_page>`                                                   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`progressive_web_app/orientation<class_EditorExportPlatformWeb_property_progressive_web_app/orientation>`                                                     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`threads/emscripten_pool_size<class_EditorExportPlatformWeb_property_threads/emscripten_pool_size>`                                                           |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`threads/godot_pool_size<class_EditorExportPlatformWeb_property_threads/godot_pool_size>`                                                                     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`variant/extensions_support<class_EditorExportPlatformWeb_property_variant/extensions_support>`                                                               |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`variant/thread_support<class_EditorExportPlatformWeb_property_variant/thread_support>`                                                                       |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`vram_texture_compression/for_desktop<class_EditorExportPlatformWeb_property_vram_texture_compression/for_desktop>`                                           |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`vram_texture_compression/for_mobile<class_EditorExportPlatformWeb_property_vram_texture_compression/for_mobile>`                                             |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_EditorExportPlatformWeb_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformWeb_property_custom_template/debug>`

Файловий шлях до користувацького шаблону експорту, який використовується для збирання. Якщо лівий порожній, використовується шаблон за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformWeb_property_custom_template/release>`

Файловий шлях до користувацького шаблону експорту, який використовується для збірки релізів. Якщо лівий порожній, використовується шаблон за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/canvas_resize_policy:

.. rst-class:: classref-property

:ref:`int<class_int>` **html/canvas_resize_policy** :ref:`🔗<class_EditorExportPlatformWeb_property_html/canvas_resize_policy>`

Визначає, як Godot має змінювати розмір полотна.

- **Ні:** Полотно не змінюється автоматично.

- **Проект:** Розмір полотна залежить від :ref:`ProjectSettings<class_ProjectSettings>`.

- **Адаптивний:** Розмір полотна автоматично змінюється так, щоб вмістити якомога більшу частину веб-сторінки.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/custom_html_shell:

.. rst-class:: classref-property

:ref:`String<class_String>` **html/custom_html_shell** :ref:`🔗<class_EditorExportPlatformWeb_property_html/custom_html_shell>`

Призначена для користувача HTML-сторінка, яка обмотує експортовану веб-будову. Якщо лівий порожній, використовується оболонка за замовчуванням.

Для отримання додаткової інформації див. у :doc:`Customizing HTML5 Shell <../tutorials/platform/web/customizing_html5_shell>` підручник.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/experimental_virtual_keyboard:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **html/experimental_virtual_keyboard** :ref:`🔗<class_EditorExportPlatformWeb_property_html/experimental_virtual_keyboard>`

**Експериментальний:** Ця властивість може бути змінена або усунута у наступних версіях.

Якщо ``true``, посольство підтримує віртуальну клавіатуру на веб-сторінці, яка показана при необхідності на сенсорних пристроях.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/export_icon:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **html/export_icon** :ref:`🔗<class_EditorExportPlatformWeb_property_html/export_icon>`

Якщо ``true``, ікона проекту буде використовуватися як favicon для цієї сторінки програми.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/focus_canvas_on_start:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **html/focus_canvas_on_start** :ref:`🔗<class_EditorExportPlatformWeb_property_html/focus_canvas_on_start>`

Якщо ``true``, полотно буде сфокусовано, щойно програма завантажиться, якщо вікно браузера вже у фокусі.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/head_include:

.. rst-class:: classref-property

:ref:`String<class_String>` **html/head_include** :ref:`🔗<class_EditorExportPlatformWeb_property_html/head_include>`

Додаткові теги HTML, щоб включити всередині ``<head>``, такі як ``<meta>`` теги.

\ **Примітка:** Вам не потрібно додавати ``<title>`` тег, оскільки він автоматично входить на основі назви проекту.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/background_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **progressive_web_app/background_color** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/background_color>`

Колір фону використовується за допомогою веб-додатків.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/display:

.. rst-class:: classref-property

:ref:`int<class_int>` **progressive_web_app/display** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/display>`

`Виберіть режим <https://developer.mozilla.org/en-US/docs/Web/Manifest/display/>`__ для цього прогресивного веб-додатку. Різні веб-переглядачі та платформи не можуть бути однаковими.

\ **Повний екран:** Відображує додаток в повноекранному режимі і приховує всі елементи інтерфейсу браузера.

- **Standalone:** Відображує додаток в окремому вікні і приховує всі елементи інтерфейсу браузера.

- **Minimal UI:** Відображає додаток в окремому вікні і тільки показує елементи інтерфейсу браузера для навігації.

\ **Browser:** Відобразити додаток як нормальну веб-сторінку.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **progressive_web_app/enabled** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/enabled>`

Якщо ``true``, перетворює цю веб-будову в `progressive веб-додаток <https://en.wikipedia.org/wiki/Progressive_web_app>`__ (PWA).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/ensure_cross_origin_isolation_headers:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **progressive_web_app/ensure_cross_origin_isolation_headers** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/ensure_cross_origin_isolation_headers>`

Увімкнено прогресивний веб-додаток переконайтеся, що кожен запит має крос-рігін ізоляційних заголовків (COEP/COOP).

Це може спрощувати налаштування для подачі експортованої гри.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/icon_144x144:

.. rst-class:: classref-property

:ref:`String<class_String>` **progressive_web_app/icon_144x144** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/icon_144x144>`

Шлях файлу до найменшої піктограми для цієї веб-програми. Якщо не визначено, за замовчуванням використовується значок проекту.

\ **Примітка:** Якщо піктограма не має розміру 144 × 144, її розмір буде автоматично змінено для остаточної збірки.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/icon_180x180:

.. rst-class:: classref-property

:ref:`String<class_String>` **progressive_web_app/icon_180x180** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/icon_180x180>`

Шлях файлу до маленької піктограми для цієї веб-програми. Якщо не визначено, за замовчуванням використовується значок проекту.

\ **Примітка:** Якщо піктограма не має розміру 180×180, її розмір буде автоматично змінено для остаточної збірки.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/icon_512x512:

.. rst-class:: classref-property

:ref:`String<class_String>` **progressive_web_app/icon_512x512** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/icon_512x512>`

Шлях файлу до найбільшої піктограми для цієї веб-програми. Якщо не визначено, за замовчуванням використовується значок проекту.

\ **Примітка:** Якщо піктограма не має розміру 512 × 512, її розмір буде автоматично змінено для остаточної збірки.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/offline_page:

.. rst-class:: classref-property

:ref:`String<class_String>` **progressive_web_app/offline_page** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/offline_page>`

Сторінка для відображення, повинна бути доступна на сервері. Ця сторінка зберігається в машині клієнта.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/orientation:

.. rst-class:: classref-property

:ref:`int<class_int>` **progressive_web_app/orientation** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/orientation>`

Консультація на використання при запуску веб-додатку через мобільний пристрій.

\ **Ані:** Немає орієнта примусово.

- **Landscape:** Сил горизонтальний макет (ширше, ніж він високе).

- **Портрет:** Сили вертикальне планування (талер, ніж він ширший).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_threads/emscripten_pool_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **threads/emscripten_pool_size** :ref:`🔗<class_EditorExportPlatformWeb_property_threads/emscripten_pool_size>`

Кількість потоків, які emscripten виділятиме під час запуску. Менше значення виділятиме менше потоків і споживатиме менше системних ресурсів, але ви ризикуєте втратити потоки в пулі та потребуватимете виділити більше потоків під час виконання, що може призвести до блокування.

\ **Примітка:** Деякі браузери мають жорстке обмеження на кількість потоків, які можна виділити, тому краще бути обережним і підтримувати це число низьким.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_threads/godot_pool_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **threads/godot_pool_size** :ref:`🔗<class_EditorExportPlatformWeb_property_threads/godot_pool_size>`

Перевизначення розміру :ref:`WorkerThreadPool<class_WorkerThreadPool>` за замовчуванням. Цей параметр використовується, коли розмір :ref:`ProjectSettings.threading/worker_pool/max_threads<class_ProjectSettings_property_threading/worker_pool/max_threads>` встановлено на ``-1`` (що є значенням за замовчуванням). Цей розмір має бути меншим за :ref:`threads/emscripten_pool_size<class_EditorExportPlatformWeb_property_threads/emscripten_pool_size>`, інакше можуть виникати блокування.

Під час використання потоків цей розмір має бути достатньо великим, щоб вмістити функції, які залежать від наявності окремого потоку, такі як :ref:`ProjectSettings.physics/2d/run_on_separate_thread<class_ProjectSettings_property_physics/2d/run_on_separate_thread>` або :ref:`ProjectSettings.rendering/driver/threads/thread_model<class_ProjectSettings_property_rendering/driver/threads/thread_model>`. Загалом, найкраще переконатися, що він дорівнює щонайменше ``4`` і щонайменше на ``2`` або ``3`` менший за :ref:`threads/emscripten_pool_size<class_EditorExportPlatformWeb_property_threads/emscripten_pool_size>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_variant/extensions_support:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **variant/extensions_support** :ref:`🔗<class_EditorExportPlatformWeb_property_variant/extensions_support>`

Якщо ``true`` дозволяє :ref:`GDExtension<class_GDExtension>` підтримувати цю веб-будову.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_variant/thread_support:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **variant/thread_support** :ref:`🔗<class_EditorExportPlatformWeb_property_variant/thread_support>`

Якщо ``true``, експортована гра буде підтримувати нитки. Для цього потрібен `a "перехресний ізольований" веб-сайт <https://web.dev/articles/coop-coep>`__, який може бути важко налаштувати і обмежений з причин безпеки (наприклад, не здатний спілкуватися з сторонніми веб-сайтами).

Якщо ``false``, експортована гра не підтримує нитки. Як результат, це більш схильний до виконання та аудіо питань, але буде потрібно працювати лише на сайті HTTPS.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_vram_texture_compression/for_desktop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vram_texture_compression/for_desktop** :ref:`🔗<class_EditorExportPlatformWeb_property_vram_texture_compression/for_desktop>`

Якщо ``true``, дозволяє оптимізувати текстури для робочого столу за допомогою алгоритму S3TC/BPTC.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_vram_texture_compression/for_mobile:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vram_texture_compression/for_mobile** :ref:`🔗<class_EditorExportPlatformWeb_property_vram_texture_compression/for_mobile>`

Якщо ``true`` дозволяє оптимізувати текстури для мобільних пристроїв за допомогою алгоритму ETC2/ASTC.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
