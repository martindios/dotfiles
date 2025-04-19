# Dotfiles

Este repositorio contiene mis dotfiles para Arch Linux, gestionados con [yadm](https://yadm.io/) como dotfile manager. Para clonarlos y mantenerlos sincronizados basta con:

```bash
yadm clone git@github.com:martindios/dotfiles.git
```

---

## 📋 Contenido

- **`.xinitrc`**  
  Configuración de X (inicia automáticamente `sxhkd`, `kitty` y `aw` – Activity Watch).
- **`.gitconfig`**  
  Ajustes de Git, incluyendo el uso de **delta** para diffs más legibles.
- **`.config/`**  
  - **`bspwm/`**: configuración del Window Manager (inicia `polybar` y `udiskie` para detección automática de USBs).  
  - **`eza/`**: theme.yml para `eza` (sustituto mejorado de `ls` y `tree`).  
  - **`fish/`**: `config.fish` con funciones y alias (reemplaza `ls` y `tree` por `eza`, y `cat` por `bat`).  
  - **`kitty/`**: tema **Darkside**, ajustes de fuente y otras preferencias en `kitty.conf`.  
  - **`nvim/`**: gestor de plugins [lazy.nvim] y todos mis plugins y settings.  
  - **`polybar/`**: `config.ini` con mi barra de estado personalizada.  
  - **`sxhkd/`**: mapeo de teclas para controlar `bspwm` y lanzar aplicaciones.

---

## ⚙️ Prerrequisitos

Antes de comenzar, asegúrate de tener instalados:

- **yadm**  
- **Xorg**  
- **bspwm**, **sxhkd**  
- **kitty**  
- **polybar**  
- **udiskie**  
- **fish**  
- **eza**  
- **bat**  
- **neovim**  

En Arch Linux puedes instalarlos con:
```bash
sudo pacman -S yadm xorg bspwm sxhkd kitty polybar udiskie fish eza bat neovim
```

---

## 🚀 Instalación

1. **Clonar el repositorio**  
   ```bash
   yadm clone git@github.com:TU_USUARIO/dotfiles.git
   ```
2. **Aplicar configuraciones**  
   Yadm automáticamente hará checkout de todos los archivos en tu `$HOME`.
3. **Shell por defecto**  
   Cambia tu shell a Fish si aún no lo tienes:
   ```bash
   chsh -s /usr/bin/fish
   ```

---

## 🗂️ Estructura del repositorio

```
.
├── .gitconfig
├── .xinitrc
├── .config/
│   ├── bspwm/
│   │   ├── bspwmrc
│   │   └── polybar/…
│   ├── eza/
│   │   └── theme.yml
│   ├── fish/
│   │   └── config.fish
│   ├── kitty/
│   │   └── kitty.conf
│   ├── nvim/
│   │   ├── init.lua
│   │   └── lua/…
│   ├── polybar/
│   │   └── config.ini
│   └── sxhkd/
│       └── sxhkdrc
└── README.md
```

---

## 🔧 Detalle de configuraciones

### .xinitrc  
– Inicia tu entorno gráfico con:
```bash
exec bspwm &
sxhkd &
kitty &
aw &
```

### .gitconfig  
– Integra **delta** para diffs:
```ini
[core]
    pager = delta
[interactive]
    diffFilter = delta --color-only
```

### bspwm  
– `bspwmrc` lanza:
```bash
polybar mybar &
udiskie --tray &
```

### eza  
– `theme.yml` define paleta de colores y símbolos para listados `eza -T` (estructura tipo árbol).

### fish  
– En `config.fish` creé funciones:
```fish
function ls;    eza $argv; end
function tree;  eza --tree $argv; end
function cat;   bat $argv; end
```

### kitty  
– Tema **Darkside** y ajustes de fuente en `kitty.conf`:
```conf
font_family Fira Code
include themes/Darkside.conf
```

### neovim  
– Uso [lazy.nvim] como plugin manager. Mi `init.lua` carga plugins de LSP, temática, statusline, etc.

### polybar  
– `config.ini` con secciones de módulos (CPU, red, volumen, reloj…) y estilo personalizado.

### sxhkd  
– Atajos para mover ventanas, cambiar escritorios y lanzar aplicaciones con atajos tipo `Super + J/K/H/L`, `Super + Enter`, etc.

---

## 📝 Uso

- **Arranca tu sesión**  
  ```bash
  startx
  ```
- **Recarga configuración de bspwm**  
  ```bash
  bspc wm --reload
  ```
- **Actualizar plugins de Neovim**  
  Dentro de Neovim:
  ```vim
  :Lazy sync
  ```

---

## 🤝 Contribuciones

Si encuentras algún bug, mejora o deseas sugerir cambios:

1. Haz un fork de este repositorio.  
2. Crea una rama (`git checkout -b feature/nombre`).  
3. Haz tus cambios y haz commit (`git commit -m 'Agrega nueva función'`).  
4. Empuja a la rama (`git push origin feature/nombre`).  
5. Abre un Pull Request.

---

## 📄 Licencia

Este proyecto está bajo la licencia **MIT**. Consulta el archivo `LICENSE` para más detalles.
