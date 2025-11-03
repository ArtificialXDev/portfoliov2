#!/usr/bin/env fish

set_color cyan
echo "🌙 Hyprland Setup Wizard — brought to you by ArtificialXDev"
set_color normal
sleep 1

function spinner
    set spin_chars "/ - \\ |"
    while true
        for c in $spin_chars
            echo -n -e "\r$c $argv"
            sleep 0.1
        end
    end
end

function is_installed
    pacman -Qi $argv >/dev/null 2>&1
end

echo ""
set_color yellow
echo "🔍 Checking for required packages: git, base-devel..."
set_color normal

set need_install 0

# Start spinner in background
spinner "Checking system..." &
set pid $last_pid

if not is_installed git
    kill $pid >/dev/null 2>&1
    echo ""
    set_color red
    echo "❌ git not found."
    set need_install 1
    set_color normal
end

if not pacman -Qg base-devel >/dev/null 2>&1
    kill $pid >/dev/null 2>&1
    echo ""
    set_color red
    echo "❌ base-devel group not found."
    set need_install 1
    set_color normal
end

kill $pid >/dev/null 2>&1
echo -e "\r✅ Check complete.             "
sleep 0.5

if test $need_install -eq 1
    set_color yellow
    echo "📦 Installing missing packages..."
    set_color normal
    sudo pacman -S --needed --noconfirm git base-devel
else
    set_color green
    echo "✅ All required packages are already installed!"
    set_color normal
end

sleep 0.5
echo ""
set_color cyan
echo "🚀 Installing dependencies + Hyprland rice..."
set_color normal

spinner "Cloning caelestia repo..." &
set pid $last_pid
git clone --depth=1 https://github.com/caelestia-dots/caelestia.git ~/.local/share/caelestia >/dev/null 2>&1
kill $pid >/dev/null 2>&1
echo -e "\r✅ Clone complete.             "
sleep 0.5

set_color yellow
echo "Running installation script..."
set_color normal
sudo ~/.local/share/caelestia/install.fish

set_color green
echo ""
echo "🎉 Hyprland rice installation complete!"
set_color normal
sleep 0.3
set_color cyan
echo "✨ Enjoy your customized environment!"
echo "💬 For support, join Discord: artificialxdev_"
set_color normal
