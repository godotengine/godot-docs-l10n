:github_url: hide

.. _class_Cubemap:

Cubemap
=======

**Eredita:** :ref:`ImageTextureLayered<class_ImageTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Sei texture quadrate che rappresentano le facce di un cubo. Comunemente usato come skybox.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una cubemap è composta da 6 texture organizzate in livelli. Servono solitamente per simulare i riflessi nel rendering 3D (vedi :ref:`ReflectionProbe<class_ReflectionProbe>`). Servono per far sembrare che un oggetto rifletta l'ambiente circostante. Questo di solito offre prestazioni molto migliori rispetto ad altri metodi di riflessione.

Questa risorsa in genere funge da uniforme negli shader personalizzati. Pochi metodi principali in Godot utilizzano le risorse **Cubemap**.

Per creare manualmente un file texture di questo tipo, reimporta i file immagine tramite le preimpostazioni di importazione nel pannello Filesystem. Per creare un CubemapArray da codice, usa :ref:`ImageTextureLayered.create_from_images()<class_ImageTextureLayered_method_create_from_images>` su un'istanza della classe CubemapArray.

L'ordine previsto delle immagini è X+, X-, Y+, Y-, Z+, Z- (nel sistema di coordinate di Godot, quindi Y+ è "su" e Z- è "avanti"). Puoi usare uno dei seguenti modelli come base:

- `Modello di cubemap 2×3 (opzione di layout predefinita) <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_2x3.webp>`__\ 

- `Modello di cubemap 3×2 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_3x2.webp>`__\ 

- `Modello di cubemap 1×6 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_1x6.webp>`__\ 

- `Modello di cubemap 6×1 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_6x1.webp>`__\ 

\ **Nota:** Godot non supporta l'uso di cubemap in un :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>`. Per usare una cubemap come skybox, converti il :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>` predefinito in uno :ref:`ShaderMaterial<class_ShaderMaterial>` tramite l'opzione **Converti in ShaderMaterial** nel menu a discesa delle risorse, quindi sostituisci il suo codice con il seguente:

.. code:: text

    shader_type sky;

    uniform samplerCube source_panorama : filter_linear, source_color, hint_default_black;
    uniform float exposure : hint_range(0, 128) = 1.0;

    void sky() {
        // If importing a cubemap from another engine, you may need to flip one of the `EYEDIR` components below
        // by replacing it with `-EYEDIR`.
        vec3 eyedir = vec3(EYEDIR.x, EYEDIR.y, EYEDIR.z);
        COLOR = texture(source_panorama, eyedir).rgb * exposure;
    }

Dopo aver sostituito il codice shader e salvato, specifica la risorsa Cubemap importata nella sezione Parametri shader dello ShaderMaterial nell'Ispettore.

In alternativa, è possibile usare `questo strumento <https://danilw.github.io/GLSL-howto/cubemap_to_panorama_js/cubemap_to_panorama.html>`__ per convertire una cubemap in una mappa del cielo equirettangolare e utilizzare :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>` come al solito.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`create_placeholder<class_Cubemap_method_create_placeholder>`\ (\ ) |const| |
   +---------------------------------+----------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Cubemap_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Cubemap_method_create_placeholder>`

Crea una versione segnaposto di questa risorsa (:ref:`PlaceholderCubemap<class_PlaceholderCubemap>`).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
