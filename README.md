# Dotfiles

Este repositorio contiene mis dotfiles para Arch Linux, gestionados con [yadm](https://yadm.io/) como dotfile manager. Para clonarlos y mantenerlos sincronizados basta con:

```bash
yadm clone https://github.com/martindios/dotfiles.git
```

---

## Contenido
(hyprland básico, todo lo de X11, bspwm con sxhkd y polybar está deprecado)
- **`.xinitrc`**: configuración de X (inicia automáticamente `sxhkd`, `kitty` y `aw` – [Activity Watch](https://activitywatch.net)).
- **`.gitconfig`**: ajustes de Git, incluyendo el uso de [**delta**](https://github.com/dandavison/delta) para diffs más legibles.
- **`.config/`**  
  - **`bspwm/`**: configuración del Window Manager (inicia `polybar` y `udiskie`).  
  - **`eza/`**: theme.yml para `eza` (sustituto mejorado de `ls` y `tree`).  
  - **`fish/`**: `config.fish` con funciones y alias (reemplaza `ls` y `tree` por `eza`, y `cat` por `bat`).  
  - **`kitty/`**: tema **Darkside**, ajustes de fuente y otras preferencias en `kitty.conf`.  
  - **`nvim/`**: gestor de plugins ([lazy.nvim](https://github.com/folke/lazy.nvim)) y todos mis plugins y settings.  
  - **`polybar/`**: `config.ini` con mi barra de estado personalizada.  
  - **`sxhkd/`**: mapeo de teclas para controlar `bspwm` y lanzar aplicaciones.

---

## Prerrequisitos

Antes de comenzar, asegúrate de tener instalados:

- [**yadm**](https://yadm.io/)
- [**Xorg**](https://wiki.archlinux.org/title/Xorg)  
- [**bspwm**](https://github.com/baskerville/bspwm), [**sxhkd**](https://github.com/baskerville/sxhkd)
- [**kitty**](https://github.com/kovidgoyal/kitty)
- [**polybar**](https://github.com/polybar/polybar)  
- [**udiskie**](https://github.com/coldfix/udiskie)  
- [**fish**](https://fishshell.com/)
- [**eza**](https://github.com/eza-community/eza) 
- [**bat**](https://github.com/sharkdp/bat)  
- [**neovim**](https://neovim.io/)

En Arch Linux puedes instalarlos con:
```bash
sudo pacman -Syu yadm xorg bspwm sxhkd kitty polybar udiskie fish eza bat neovim
```

> ⚠️ Puede que falte algún paquete extra. Si encuentras alguno que falta, por favor redirígete a la sección de **Contribuciones**.

---

## Instalación

1. **Clonar el repositorio**  
   ```bash
   yadm clone https://github.com/martindios/dotfiles.git
   ```
2. **Aplicar configuraciones**  
   Yadm automáticamente hará checkout de todos los archivos en tu `$HOME`.
3. **Shell por defecto**  
   Cambia tu shell a Fish si aún no lo tienes:
   ```bash
   chsh -s /usr/bin/fish
   ```
   
---

## Contribuciones

Si encuentras algún bug, mejora o deseas sugerir cambios:

1. Haz un fork de este repositorio.  
2. Crea una rama (`git checkout -b feature/nombre`).  
3. Haz tus cambios y haz commit (`git commit -m 'Agrega nueva función'`).  
4. Empuja a la rama (`git push origin feature/nombre`).  
5. Abre un Pull Request.

---

## Licencia

Este proyecto está bajo la licencia **Apache-2.0**. Consulta el archivo `LICENSE` para más detalles.
