# Presentr

Un'app leggera per montare e proiettare **presentazioni di foto e video** senza caricare niente da nessuna parte: un solo file HTML che gira in Microsoft Edge, sul tuo PC.

## Installazione (Windows)

1. Scarica la cartella (o clona la repository) in una posizione stabile, ad esempio `Documenti\Claude_work\Presentr`.
2. Tasto destro su `installa.ps1` → **Esegui con PowerShell**: crea il collegamento **Presentr** sul Desktop e nel menu Start.
3. Per fissarlo in Start: menu Start → Presentr → tasto destro → *Aggiungi a Start*.

Presentr si apre in una finestra di Edge in modalità app (senza schede né barra degli indirizzi).

## Cosa fa

- **Scaletta per sezioni**: trascina foto, video o intere cartelle; riordina le miniature; comprimi le sezioni per vedere solo i titoli e trascinale per cambiarne l'ordine.
- **Slide affiancate**: trascina una miniatura al centro di un'altra per mostrarle insieme.
- **Slide di testo** con titolo, sottotitolo e testo, che si centrano da sole.
- **Video**: attacco e stacco, velocità, loop fino al clic, senza audio, partenza immediata o al clic. Gli strumenti a destra valgono per tutte le slide selezionate.
- **Nascondi e duplica** slide e sezioni.
- **Presentazione** a schermo intero: il video arriva in pausa e parte al clic; contatore del tempo in basso a sinistra; tasto **B** per il nero, **T** per il tappo.
- **Vista presentatore** su due schermi, con ora, cronometro, barra di avanzamento del video e **Modifica in corsa** (il pubblico continua a vedere la slide attuale mentre tu sistemi la scaletta).
- **Esporta / Apri** in un file `.presentr` leggerissimo (solo ordine e impostazioni): all'apertura indichi la cartella e i file vengono ritrovati per nome, anche se sono stati spostati.
- Impostazioni per font e sfondi, interfaccia chiara/scura, uscita audio, memoria del browser.

## Dove finiscono i file

Foto e video **non vengono caricati online**. Presentr ne tiene una copia nella memoria locale di Edge per riaprire la scaletta così com'era; da *Impostazioni → Libera la memoria del browser* la cancelli quando vuoi (gli originali non vengono toccati).

## File

| File | |
|---|---|
| `Presentr.html` | l'app completa |
| `Presentr.ico`, `Presentr.svg` | icona |
| `installa.ps1` | crea i collegamenti su Desktop e menu Start |
