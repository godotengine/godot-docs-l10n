:github_url: hide

.. _class_EditorExportPlatformWeb:

EditorExportPlatformWeb
=======================

**Hereda:** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Exportador para la Web.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El exportador web personaliza cómo se gestiona una compilación web. En la ventana "Exportar" del editor, se crea al añadir un nuevo preset "Web".

\ **Nota:** Godot en la Web se renderiza dentro de una etiqueta ``<canvas>``. Normalmente, el canvas no puede posicionarse o redimensionarse manualmente, pero por lo demás actúa como la :ref:`Window<class_Window>` principal de la aplicación.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Exportar para la Web <../tutorials/export/exporting_for_web>`

- :doc:`Índice de documentación web <../tutorials/platform/web/index>`

.. rst-class:: classref-reftable-group

Propiedades
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

Descripciones de Propiedades
--------------------------------------------------------

.. _class_EditorExportPlatformWeb_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformWeb_property_custom_template/debug>`

Ruta del archivo de la plantilla de exportación personalizada utilizada para las compilaciones de depuración. Si se deja vacío, se utiliza la plantilla predeterminada.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformWeb_property_custom_template/release>`

Ruta del archivo de la plantilla de exportación personalizada utilizada para las compilaciones de lanzamiento. Si se deja vacío, se utiliza la plantilla predeterminada.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/canvas_resize_policy:

.. rst-class:: classref-property

:ref:`int<class_int>` **html/canvas_resize_policy** :ref:`🔗<class_EditorExportPlatformWeb_property_html/canvas_resize_policy>`

Determina cómo debe ser redimensionado el canvas por Godot.

- **Ninguno:** El canvas no se redimensiona automáticamente.

- **Proyecto:** El tamaño del canvas depende de la :ref:`ProjectSettings<class_ProjectSettings>`.

- **Adaptativo:** El canvas se redimensiona automáticamente para ajustarse a la mayor parte posible de la página web.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/custom_html_shell:

.. rst-class:: classref-property

:ref:`String<class_String>` **html/custom_html_shell** :ref:`🔗<class_EditorExportPlatformWeb_property_html/custom_html_shell>`

La página HTML personalizada que envuelve la compilación web exportada. Si se deja vacío, se utiliza el shell de HTML predeterminado.

Para más información, consulta el tutorial :doc:`Customizing HTML5 Shell <../tutorials/platform/web/customizing_html5_shell>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/experimental_virtual_keyboard:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **html/experimental_virtual_keyboard** :ref:`🔗<class_EditorExportPlatformWeb_property_html/experimental_virtual_keyboard>`

**Experimental:** Esta propiedad podría ser modificada o eliminada en versiones futuras.

Si es ``true``, se incrusta soporte para un teclado virtual en la página web, el cual se muestra cuando es necesario en dispositivos con pantalla táctil.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/export_icon:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **html/export_icon** :ref:`🔗<class_EditorExportPlatformWeb_property_html/export_icon>`

Si es ``true``, el icono del proyecto se utilizará como favicon para la página web de esta aplicación.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/focus_canvas_on_start:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **html/focus_canvas_on_start** :ref:`🔗<class_EditorExportPlatformWeb_property_html/focus_canvas_on_start>`

Si es ``true``, el canvas se enfocará tan pronto como la aplicación se cargue, si la ventana del navegador ya está enfocada.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_html/head_include:

.. rst-class:: classref-property

:ref:`String<class_String>` **html/head_include** :ref:`🔗<class_EditorExportPlatformWeb_property_html/head_include>`

Etiquetas HTML adicionales para incluir dentro de ``<head>``, como etiquetas ``<meta>``.

\ **Nota:** No necesitas añadir una etiqueta ``<title>``, ya que se incluye automáticamente basándose en el nombre del proyecto.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/background_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **progressive_web_app/background_color** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/background_color>`

El color de fondo utilizado detrás de la aplicación web.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/display:

.. rst-class:: classref-property

:ref:`int<class_int>` **progressive_web_app/display** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/display>`

El `modo de visualización <https://developer.mozilla.org/en-US/docs/Web/Manifest/display/>`__ a utilizar para esta aplicación web progresiva. Diferentes navegadores y plataformas pueden no comportarse de la misma manera.

- **Pantalla completa:** Muestra la aplicación en pantalla completa y oculta todos los elementos de la interfaz de usuario del navegador.

- **Independiente:** Muestra la aplicación en una ventana separada y oculta todos los elementos de la interfaz de usuario del navegador.

- **Interfaz de usuario mínima:** Muestra la aplicación en una ventana separada y solo muestra los elementos de la interfaz de usuario del navegador para la navegación.

- **Navegador:** Muestra la aplicación como una página web normal.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **progressive_web_app/enabled** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/enabled>`

Si es ``true``, convierte esta compilación web en una `aplicación web progresiva <https://en.wikipedia.org/wiki/Progressive_web_app>`__ (PWA).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/ensure_cross_origin_isolation_headers:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **progressive_web_app/ensure_cross_origin_isolation_headers** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/ensure_cross_origin_isolation_headers>`

Cuando está habilitada, la aplicación web progresiva se asegurará de que cada solicitud tenga cabeceras de aislamiento de origen cruzado (COEP/COOP).

Esto puede simplificar la configuración para servir el juego exportado.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/icon_144x144:

.. rst-class:: classref-property

:ref:`String<class_String>` **progressive_web_app/icon_144x144** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/icon_144x144>`

Ruta del archivo al icono más pequeño para esta aplicación web. Si no se define, se usará el icono del proyecto por defecto.

\ **Nota:** Si el icono no es de 144×144, se redimensionará automáticamente para la compilación final.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/icon_180x180:

.. rst-class:: classref-property

:ref:`String<class_String>` **progressive_web_app/icon_180x180** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/icon_180x180>`

Ruta del archivo al icono pequeño para esta aplicación web. Si no se define, se usa el icono del proyecto por defecto.

\ **Nota:** Si el icono no es de 180×180, se redimensionará automáticamente para la compilación final.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/icon_512x512:

.. rst-class:: classref-property

:ref:`String<class_String>` **progressive_web_app/icon_512x512** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/icon_512x512>`

Ruta del archivo al icono más grande para esta aplicación web. Si no se define, se usa el icono del proyecto por defecto.

\ **Nota:** Si el icono no es de 512×512, se redimensionará automáticamente para la compilación final.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/offline_page:

.. rst-class:: classref-property

:ref:`String<class_String>` **progressive_web_app/offline_page** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/offline_page>`

La página a mostrar si el servidor que aloja la página no está disponible. Esta página se guarda en la máquina del cliente.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_progressive_web_app/orientation:

.. rst-class:: classref-property

:ref:`int<class_int>` **progressive_web_app/orientation** :ref:`🔗<class_EditorExportPlatformWeb_property_progressive_web_app/orientation>`

La orientación a usar cuando la aplicación web se ejecuta en un dispositivo móvil.

- **Cualquiera:** No se fuerza ninguna orientación.

- **Horizontal:** Fuerza un diseño horizontal (más ancho que alto).

- **Vertical:** Fuerza un diseño vertical (más alto que ancho).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_threads/emscripten_pool_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **threads/emscripten_pool_size** :ref:`🔗<class_EditorExportPlatformWeb_property_threads/emscripten_pool_size>`

El número de hilos que Emscripten asignará al inicio. Un valor más pequeño asignará menos hilos y consumirá menos recursos del sistema, pero puedes correr el riesgo de quedarte sin hilos en el pool y necesitar asignar más hilos en tiempo de ejecución, lo que podría causar un interbloqueo.

\ **Nota:** Algunos navegadores tienen un límite estricto en el número de hilos que se pueden asignar, por lo que es mejor ser cauteloso y mantener este número bajo.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_threads/godot_pool_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **threads/godot_pool_size** :ref:`🔗<class_EditorExportPlatformWeb_property_threads/godot_pool_size>`

Sobrescritura del tamaño predeterminado de :ref:`WorkerThreadPool<class_WorkerThreadPool>`. Esta configuración se utiliza cuando el tamaño de :ref:`ProjectSettings.threading/worker_pool/max_threads<class_ProjectSettings_property_threading/worker_pool/max_threads>` se establece en ``-1`` (que es el valor por defecto). Este tamaño debe ser menor que :ref:`threads/emscripten_pool_size<class_EditorExportPlatformWeb_property_threads/emscripten_pool_size>`, de lo contrario podrían producirse interbloqueos.

Cuando se usan hilos, este tamaño debe ser lo suficientemente grande para acomodar características que dependen de tener un hilo dedicado, como :ref:`ProjectSettings.physics/2d/run_on_separate_thread<class_ProjectSettings_property_physics/2d/run_on_separate_thread>` o :ref:`ProjectSettings.rendering/driver/threads/thread_model<class_ProjectSettings_property_rendering/driver/threads/thread_model>`. En general, es mejor asegurarse de que sea al menos ``4`` y al menos ``2`` o ``3`` menos que :ref:`threads/emscripten_pool_size<class_EditorExportPlatformWeb_property_threads/emscripten_pool_size>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_variant/extensions_support:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **variant/extensions_support** :ref:`🔗<class_EditorExportPlatformWeb_property_variant/extensions_support>`

Si es ``true``, habilita la compatibilidad con :ref:`GDExtension<class_GDExtension>` para esta compilación web.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_variant/thread_support:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **variant/thread_support** :ref:`🔗<class_EditorExportPlatformWeb_property_variant/thread_support>`

Si es ``true``, el juego exportado soportará hilos. Requiere `un sitio web "cross-origin isolated" <https://web.dev/articles/coop-coep>`__, lo cual puede ser difícil de configurar y está limitado por razones de seguridad (como no poder comunicarse con sitios web de terceros).

Si es ``false``, el juego exportado no soportará hilos. Como resultado, es más propenso a problemas de rendimiento y audio, pero solo requerirá ejecutarse en un sitio web HTTPS.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_vram_texture_compression/for_desktop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vram_texture_compression/for_desktop** :ref:`🔗<class_EditorExportPlatformWeb_property_vram_texture_compression/for_desktop>`

Si es ``true``, permite que las texturas se optimicen para escritorio mediante el algoritmo S3TC/BPTC.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWeb_property_vram_texture_compression/for_mobile:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vram_texture_compression/for_mobile** :ref:`🔗<class_EditorExportPlatformWeb_property_vram_texture_compression/for_mobile>`

Si es ``true``, permite que las texturas se optimicen para móviles mediante el algoritmo ETC2/ASTC.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
