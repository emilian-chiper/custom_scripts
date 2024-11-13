# Install JetBrainsMonoNL
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip \
&& cd ~/.local/share/fonts \
&& unzip JetBrainsMono.zip \
&& rm JetBrainsMono.zip \
&& fc-cache -fv

# Install Plantin MT Pro
wget -P ~/.local/share/fonts https://font.download/dl/font/plantin-mt-pro.zip \
&& cd ~/.local/share/fonts \
&& unzip plantin-mt-pro.zip \
&& rm plantin-mt-pro.zip \
&& fc-cache -fv

