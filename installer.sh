#!/bin/bash

GIT="https://raw.githubusercontent.com/OlimpiiaART/qrscan-for-spectacle/main"
INSTALL_PATH="$HOME/.local/bin/qrcodescanning"
DESKTOP_PATH="$HOME/.local/share/applications/qrcodescanning.desktop"
ICON_PATH="/usr/share/icons/hicolor/72x72/apps/qrcodescanning.png"

mkdir -p "$(dirname "$INSTALL_PATH")"
rm -f -- "$INSTALL_PATH"
curl -sSL "$GIT/qrcodescanning" -o "$INSTALL_PATH" || { echo "Ошибка загрузки бинарника"; exit 1; }
chmod +x "$INSTALL_PATH"

mkdir -p "$(dirname "$DESKTOP_PATH")"
rm -f -- "$DESKTOP_PATH"
curl -sSL "$GIT/qrcodescanning.desktop" -o "$DESKTOP_PATH" || { echo "Ошибка загрузки desktop файла"; exit 1; }
chmod 644 "$DESKTOP_PATH"
update-desktop-database ~/.local/share/applications || true

sudo bash -c "
    mkdir -p '$(dirname "$ICON_PATH")'
    rm -f -- '$ICON_PATH'
    curl -sSL '$GIT/qrcodescanning.png' -o '$ICON_PATH' || exit 1
    gtk-update-icon-cache /usr/share/icons/hicolor
"

echo "✅ Установка завершена!"
