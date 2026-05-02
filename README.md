# Flappy Bird - Python Edition

Implementazione del software Flappy Bird sviluppata in linguaggio Python mediante l'utilizzo della libreria Pygame. Il progetto è configurato per l'esecuzione in ambienti containerizzati tramite Podman o Docker, garantendo la portabilità e l'isolamento delle dipendenze su diverse distribuzioni, con particolare ottimizzazione per Fedora.

## Istruzioni per l'avvio

Selezionare la procedura relativa al proprio sistema operativo per l'esecuzione del software.

### Fedora (tramite Podman)
Su sistemi Fedora, si raccomanda l'utilizzo di Podman per l'esecuzione in container, abilitando l'accesso all'accelerazione hardware della GPU locale e la compatibilità con SELinux.

1. **Compilazione dell'immagine:**
   podman build -t flappy-bird-container .

2. **Configurazione dei permessi per l'interfaccia grafica:**
   xhost +local:$(whoami)

3. **Esecuzione del container:**
   podman run -it --rm \   
    --net=host \
    --device /dev/dri:/dev/dri \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
    --security-opt label=disa

### Windows
Requisiti: Python 3.x installato e configurato nel PATH di sistema.

1. **Installazione dipendenze:**
   pip install pygame

2. **Esecuzione:**
   python game.py

### macOS
Requisiti: Python 3.x e gestore pacchetti pip.

1. **Installazione dipendenze:**
   pip3 install pygame

2. **Esecuzione:**
   python3 game.py

## Specifiche Tecniche
* **Linguaggio:** Python 3.x
* **Librerie:** Pygame 2.x
* **Grafica:** Supporto OpenGL richiesto per accelerazione hardware.
* **Containerizzazione:** Supporto nativo per Containerfile e Dockerfile.

## Struttura del Repository
* `game.py`: Script principale contenente la logica di gioco e la gestione degli asset.
* `immagini/`: Directory dedicata alle risorse multimediali.
* `Containerfile`: Configurazione per l'automazione della build in ambienti Linux.
* `requirements.txt`: Elenco delle dipendenze software necessarie per l'ambiente Python.

