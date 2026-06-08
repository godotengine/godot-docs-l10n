:github_url: hide

.. _class_ResourceImporterDynamicFont:

ResourceImporterDynamicFont
===========================

**Успадковує:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Імпорт TTF, TTC, OTF, OTC, WOFF або WOFF2 файл шрифту для відтворення шрифту, який адаптується до будь-якого розміру.

.. rst-class:: classref-introduction-group

Опис
--------

На відміну від шрифтів бітма, динамічні шрифти можуть бути негабаритними до будь-якого розміру і все ще виглядають хрусткими. Динамічні шрифти також необов'язково підтримують MSDF шрифти, що дозволяє змінювати часові масштаби без вартості відновлення.

Незважаючи на те, що WOFF і особливо WOFF2, як правило, призводить до менших розмірів файлів, немає універсально "better" формат шрифту. У більшості випадків рекомендується використовувати формат шрифту, який було відправлено на сайті розробника шрифту.

Також :ref:`ResourceImporterBMFont<class_ResourceImporterBMFont>` і :ref:`ResourceImporterImageFont<class_ResourceImporterImageFont>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Динамічні шрифти - Використання шрифтів <../tutorials/ui/gui_using_fonts.html#dynamic-fonts>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`allow_system_fallback<class_ResourceImporterDynamicFont_property_allow_system_fallback>`                           | ``true``  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`antialiasing<class_ResourceImporterDynamicFont_property_antialiasing>`                                             | ``1``     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`compress<class_ResourceImporterDynamicFont_property_compress>`                                                     | ``true``  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`disable_embedded_bitmaps<class_ResourceImporterDynamicFont_property_disable_embedded_bitmaps>`                     | ``true``  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Array<class_Array>`           | :ref:`fallbacks<class_ResourceImporterDynamicFont_property_fallbacks>`                                                   | ``[]``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`force_autohinter<class_ResourceImporterDynamicFont_property_force_autohinter>`                                     | ``false`` |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`generate_mipmaps<class_ResourceImporterDynamicFont_property_generate_mipmaps>`                                     | ``false`` |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`hinting<class_ResourceImporterDynamicFont_property_hinting>`                                                       | ``3``     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`keep_rounding_remainders<class_ResourceImporterDynamicFont_property_keep_rounding_remainders>`                     | ``true``  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`language_support<class_ResourceImporterDynamicFont_property_language_support>`                                     | ``{}``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`modulate_color_glyphs<class_ResourceImporterDynamicFont_property_modulate_color_glyphs>`                           | ``false`` |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`msdf_pixel_range<class_ResourceImporterDynamicFont_property_msdf_pixel_range>`                                     | ``8``     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`msdf_size<class_ResourceImporterDynamicFont_property_msdf_size>`                                                   | ``48``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`multichannel_signed_distance_field<class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field>` | ``false`` |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`opentype_features<class_ResourceImporterDynamicFont_property_opentype_features>`                                   | ``{}``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`oversampling<class_ResourceImporterDynamicFont_property_oversampling>`                                             | ``0.0``   |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Array<class_Array>`           | :ref:`preload<class_ResourceImporterDynamicFont_property_preload>`                                                       | ``[]``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`script_support<class_ResourceImporterDynamicFont_property_script_support>`                                         | ``{}``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`subpixel_positioning<class_ResourceImporterDynamicFont_property_subpixel_positioning>`                             | ``4``     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ResourceImporterDynamicFont_property_allow_system_fallback:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_system_fallback** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_allow_system_fallback>`

Якщо ``true``, автоматично використовуйте шрифти системи в режимі реального часу, якщо гліф не знайдений в цьому динамічному шрифті. Це робить підтримку символів CJK або смайлів більш прямо вперед, оскільки вам не потрібно включати шрифт CJK / смайл у вашому проекті. Дивись також :ref:`fallbacks<class_ResourceImporterDynamicFont_property_fallbacks>`.

\ **Примітка:** Зовнішній вигляд системних шрифтів змінюється на платформах. Завантаження шрифтів системи підтримується тільки на Windows, macOS, Linux, Android та iOS.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_antialiasing:

.. rst-class:: classref-property

:ref:`int<class_int>` **antialiasing** = ``1`` :ref:`🔗<class_ResourceImporterDynamicFont_property_antialiasing>`

Метод згладжування шрифтів, який слід використовувати.

\ **Вимкнено:** Найбільше підходить для шрифтів піксельної графіки, хоча вам не *потрібно* змінювати згладжування зі стандартного значення **Відтінки сірого**, якщо файл шрифту був створений належним чином, і шрифт використовується з цілочисельним кратним його запланованого розміру. Якщо шрифти піксельної графіки мають поганий вигляд при запланованому розмірі, спробуйте встановити для :ref:`subpixel_positioning<class_ResourceImporterDynamicFont_property_subpixel_positioning>` значення **Вимкнено**.

\ **Відтінки сірого:** Використовуйте згладжування у відтінках сірого. Цей підхід використовується операційною системою на macOS, Android та iOS.

\ **Субпіксель РК-дисплеїв:** Використовуйте згладжування з шаблонами субпікселів, щоб зробити шрифти чіткішими на РК-дисплеях. Цей підхід використовується операційною системою на Windows та більшості дистрибутивів Linux. Недоліком є те, що це може призвести до появи «облямівки» по краях, особливо на технологіях відображення, які не використовують стандартні субпікселі RGB (таких як OLED-дисплеї). Розташування субпікселів РК-дисплея глобально контролюється :ref:`ProjectSettings.gui/theme/lcd_subpixel_layout<class_ProjectSettings_property_gui/theme/lcd_subpixel_layout>`, що також дозволяє повернутися до згладжування у градаціях сірого.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_compress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_compress>`

Якщо ``true``, використовує стиснення без втрат для отриманого шрифту.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_disable_embedded_bitmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_embedded_bitmaps** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_disable_embedded_bitmaps>`

Якщо встановити на ``true``, вбудоване завантаження бітма в шрифті вимкнено (розрядні та кольорові шрифти ігнорують цю властивість).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_fallbacks:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **fallbacks** = ``[]`` :ref:`🔗<class_ResourceImporterDynamicFont_property_fallbacks>`

Список резервних шрифтів, які слід використовувати, якщо гліф не знайдено в цьому динамічному шрифті. Спочатку намагаються використовувати шрифти на початку масиву, але Резервні шрифти, які не підтримують мову та шрифт гліфа, намагаються використовувати останніми (див. :ref:`language_support<class_ResourceImporterDynamicFont_property_language_support>` і :ref:`script_support<class_ResourceImporterDynamicFont_property_script_support>`). Див. також :ref:`allow_system_fallback<class_ResourceImporterDynamicFont_property_allow_system_fallback>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_force_autohinter:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_autohinter** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_force_autohinter>`

Якщо ``true``, примусово генерується дані підказок для шрифту за допомогою автоматичного підказника `FreeType <https://freetype.org/>`__. Це зробить :ref:`hinting<class_ResourceImporterDynamicFont_property_hinting>` ефективними для шрифтів, які не містять даних підказок.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_generate_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_mipmaps** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_generate_mipmaps>`

Якщо значення ``true``, для цього шрифту будуть згенеровані міп-мапи. Це запобігає зернистості тексту під час зменшення масштабу :ref:`Control<class_Control>` або під час перегляду :ref:`Label3D<class_Label3D>` з великої відстані (якщо для :ref:`Label3D.texture_filter<class_Label3D_property_texture_filter>` встановлено режим відображення міп-мап).

Увімкнення :ref:`generate_mipmaps<class_ResourceImporterDynamicFont_property_generate_mipmaps>` збільшує час генерації шрифту та використання пам'яті. Увімкніть цей параметр, лише якщо він вам дійсно потрібен.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_hinting:

.. rst-class:: classref-property

:ref:`int<class_int>` **hinting** = ``3`` :ref:`🔗<class_ResourceImporterDynamicFont_property_hinting>`

Режим хінтингу, який слід використовувати. Цей параметр визначає, наскільки точно краї гліфів мають прив’язуватися до пікселів під час растрування шрифту. Залежно від особистих уподобань, ви можете віддати перевагу одному режиму хінтингу над іншим. Режими хінтингу, крім **None**, діють лише в тому випадку, якщо шрифт містить дані хінтингу (див. :ref:`force_autohinter<class_ResourceImporterDynamicFont_property_force_autohinter>`).

\ **None:** Найбільш плавний вигляд, що може зробити шрифт розмитим при малих розмірах.

\ **Light:** Чіткий результат завдяки прив'язці країв гліфів до пікселів лише по осі Y.

\ **Normal:** Найчіткіший результат завдяки прив'язці країв гліфів до пікселів як по осі X, так і по осі Y.

\ **Light (Except Pixel Fonts):** **Вимкнено** для шрифтів піксельного стилю (контури кожного гліфа містять лише прямі горизонтальні та вертикальні лінії), **Легкий** для інших шрифтів.

\ **Нормальний (крім піксельних шрифтів):** **Вимкнено** для шрифтів піксельного стилю (контури кожного гліфа містять лише прямі горизонтальні та вертикальні лінії), **Нормальний** для інших шрифтів.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_keep_rounding_remainders:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_rounding_remainders** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_keep_rounding_remainders>`

Якщо встановлено значення ``true``, під час вирівнювання гліфів до меж пікселів залишки округлення накопичуються для забезпечення більш рівномірного розподілу гліфів. Цей параметр не діє, якщо ввімкнено субпіксельне позиціонування.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_language_support:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **language_support** = ``{}`` :ref:`🔗<class_ResourceImporterDynamicFont_property_language_support>`

Зазначте список мов, що підтримується цим шрифтом. Якщо зліва порожній, це подається метаданих шрифтів. Як правило, немає необхідності змінити це. Дивись ще :ref:`script_support<class_ResourceImporterDynamicFont_property_script_support>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_modulate_color_glyphs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **modulate_color_glyphs** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_modulate_color_glyphs>`

Якщо встановлено значення ``true``, колірна модуляція застосовується під час малювання кольорових гліфів, інакше вона застосовується лише до монохромних гліфів.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_msdf_pixel_range:

.. rst-class:: classref-property

:ref:`int<class_int>` **msdf_pixel_range** = ``8`` :ref:`🔗<class_ResourceImporterDynamicFont_property_msdf_pixel_range>`

Ширина діапазону навколо форми між мінімальною і максимальною відкритою Якщо ви використовуєте шрифти, ``пам'ятний msdf_pixel_range`` необхідно встановити принаймні *twice* розмір найбільшого шрифту. ``8`` дозволяє визначити розміри до ``4``, щоб виглядати правильно.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_msdf_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **msdf_size** = ``48`` :ref:`🔗<class_ResourceImporterDynamicFont_property_msdf_size>`

Розмір шрифту джерела використовується для створення текстур MSDF. Найвищі значення дозволяють більш точність, але повільніше рендерити і вимагати більше пам'яті. Тільки збільшити це значення, якщо ви помітили видимий недолік точності в рендерингу glyph. ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **multichannel_signed_distance_field** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field>`

Якщо встановлено значення ``true``, шрифт використовуватиме багатоканальне поле відстані зі знаком (MSDF) для чіткого відтворення будь-якого розміру. Оскільки цей підхід не покладається на растеризацію шрифту щоразу, коли змінюється його розмір, це дозволяє змінювати розмір шрифту в режимі реального часу без будь-яких втрат продуктивності. Текст також не виглядатиме зернистим для :ref:`Control<class_Control>`\ s, які зменшено (або для :ref:`Label3D<class_Label3D>`\ s, які переглядаються з великої відстані). 

Візуалізацію шрифтів MSDF можна поєднати з :ref:`generate_mipmaps<class_ResourceImporterDynamicFont_property_generate_mipmaps>`, щоб ще більше покращити якість відтворення шрифтів у зменшеному масштабі.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_opentype_features:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **opentype_features** = ``{}`` :ref:`🔗<class_ResourceImporterDynamicFont_property_opentype_features>`

Особливості OpenType, щоб увімкнути або встановити значення для цього шрифту. Це може бути використаний для включення додаткових функцій, передбачених шрифтом, таких як лігатури або альтернативні гліфи. Перелік підтриманих функцій OpenType змінюється на основі шрифту.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_oversampling:

.. rst-class:: classref-property

:ref:`float<class_float>` **oversampling** = ``0.0`` :ref:`🔗<class_ResourceImporterDynamicFont_property_oversampling>`

Якщо встановлено додатне значення, перевизначає коефіцієнт передискретизації області перегляду, в якій використовується цей шрифт. Див. :ref:`Viewport.oversampling<class_Viewport_property_oversampling>`. Це значення не перевизначає параметр ``oversampling`` методів ``draw_*``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_preload:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **preload** = ``[]`` :ref:`🔗<class_ResourceImporterDynamicFont_property_preload>`

Гліфові діапазони до пререндеру. Це може уникнути затирання під час гри, коли нові символи повинні бути надані, особливо якщо :ref:`subpixel_positioning<class_ResourceImporterDynamicFont_property_subpixel_positioning>` включений. Знизу використання перевантаження є те, що початкові терміни навантаження проекту будуть збільшуватися, а також використання пам'яті.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_script_support:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **script_support** = ``{}`` :ref:`🔗<class_ResourceImporterDynamicFont_property_script_support>`

Зазначте список мовних сценаріїв, що підтримується цим шрифтом. Якщо зліва порожній, це подається метаданих шрифтів. Як правило, немає необхідності змінити це. Дивись також :ref:`language_support<class_ResourceImporterDynamicFont_property_language_support>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_subpixel_positioning:

.. rst-class:: classref-property

:ref:`int<class_int>` **subpixel_positioning** = ``4`` :ref:`🔗<class_ResourceImporterDynamicFont_property_subpixel_positioning>`

Субпіксельне позиціонування покращує вигляд шрифту, особливо при малих розмірах. Недоліком є те, що початкове відтворення шрифту займає більше часу, що може спричинити затримки під час гри, особливо при використанні великих розмірів шрифту. Для шрифтів у стилі піксель-арту цей параметр слід встановити на **Вимкнено**.

\ **Вимкнено:** Субпіксельне позиціонування не використовується. Найнижча якість, найшвидше відтворення.

\ **Авто:** Використовувати субпіксельне позиціонування при малих розмірах шрифту (вибрана якість залежить від розміру шрифту). Великі шрифти не використовуватимуть субпіксельне позиціонування. Це хороший компроміс між продуктивністю та якістю.

\ **Половина пікселя:** Завжди виконувати проміжне субпіксельне позиціонування незалежно від розміру шрифту. Висока якість, повільне відтворення.

\ **Чверть пікселя:** Завжди виконувати точне субпіксельне позиціонування незалежно від розміру шрифту. Найвища якість, найповільніше відтворення.

\ **Авто (крім піксельних шрифтів):** **Вимкнено** для шрифтів піксельного стилю (контури кожного гліфа містять лише прямі горизонтальні та вертикальні лінії), **Авто** для інших шрифтів.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
