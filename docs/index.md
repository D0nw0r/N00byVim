---
layout: default
title: N00byVim
---

<style>
  body {
    font-family: system-ui, sans-serif;
    text-align: center;
    padding: 4em 1em;
    background: #fdfdfd;
    color: #111;
  }

  h1 {
    font-size: 3rem;
    margin-bottom: 0.3em;
    color: #fff;
  }

  p.subtitle {
    font-size: 1.25rem;
    margin-bottom: 2em;
    color: #267cb9;
  }

    h2 {
    color: #ffffff;
}

  .install-box {
    background: #282c34;
    color: #fff;
    font-family: monospace;
    padding: 1em;
    border-radius: 8px;
    display: inline-block;
    overflow-x: auto;
    user-select: all;
  }

  .note {
    font-size: 0.9rem;
    margin-top: 1em;
    color: #fff;
  }

  @media (prefers-color-scheme: dark) {
    body {
      background: #121212;
      color: #ddd;
    }

    .subtitle {
      color: #fff;
    }

    .install-box {
      background: #1e1e1e;
    }

    .note {
      color: #fff;
    }
  .gallery {
    display: flex;
    gap: 20px;
    justify-content: center;
    padding: 10px 0;
  }
  .gallery img {
    max-height: 220px;
    border-radius: 6px;
    cursor: pointer;
    transition: transform 0.3s ease;
    display: block;
    margin: 0 auto;
  }
  .gallery img:hover {
    transform: scale(1.05);
  }
  .label {
    margin-top: 6px;
    font-size: 0.95rem;
    color: #fff;
    text-align: center;
    font-family: system-ui, sans-serif;
  }
  .gallery-item {
    text-align: center;
    max-width: 220px;
  }

  .overlay {
    position: fixed;
    display: none;
    top: 0; left: 0; right: 0; bottom: 0;
    background: rgba(0,0,0,0.8);
    justify-content: center;
    align-items: center;
    z-index: 9999;
  }
  .overlay img {
    max-width: 90%;
    max-height: 90%;
    border-radius: 8px;
  }
</style>

# N00byVim

<p class="subtitle">A simple preconfigured Neovim setup, based on Kickstart</p>

## Linux/Mac
<div class="install-box">
sh -c "$(curl -fsSL https://raw.githubusercontent.com/D0nw0r/N00byVim/master/setup/setup.sh)"
</div>
<br>
## Windows
<div class="install-box">
iwr -useb https://raw.githubusercontent.com/D0nw0r/N00byVim/master/setup/windows-setup.ps1 | iex
</div>
<br>

# Preview
## Vague Theme

<div class="gallery">
  <div class="gallery-item">
    <img src="{{ site.baseurl }}/images/nvim4.png" alt="Neovim Preview 1" onclick="openOverlay(this.src)">
    <div class="label">Neovim UI screenshot</div>
  </div>
  <div class="gallery-item">
    <img src="{{ site.baseurl }}/images/nvim5.png" alt="Neovim Preview 2" onclick="openOverlay(this.src)">
    <div class="label">Integrated terminal</div>
  </div>
  <div class="gallery-item">
    <img src="{{ site.baseurl }}/images/nvim6.png" alt="Neovim Preview 3" onclick="openOverlay(this.src)">
    <div class="label">Lazygit integration</div>
  </div>
</div>

<div id="overlay" class="overlay" onclick="closeOverlay()">
  <img id="overlay-img" src="" alt="Zoomed image">
</div>
<br>

## Tokyo Theme - Old theme - Commented on ``init.lua``
<div class="gallery">
  <div class="gallery-item">
    <img src="{{ site.baseurl }}/images/nvim1.png" alt="Neovim Preview 1" onclick="openOverlay(this.src)">
    <div class="label">Neovim UI screenshot</div>
  </div>
  <div class="gallery-item">
    <img src="{{ site.baseurl }}/images/nvim2.png" alt="Neovim Preview 2" onclick="openOverlay(this.src)">
    <div class="label">Integrated terminal</div>
  </div>
  <div class="gallery-item">
    <img src="{{ site.baseurl }}/images/nvim3.png" alt="Neovim Preview 3" onclick="openOverlay(this.src)">
    <div class="label">Lazygit integration</div>
  </div>
</div>

<div id="overlay" class="overlay" onclick="closeOverlay()">
  <img id="overlay-img" src="" alt="Zoomed image">
</div>

<script>
  function openOverlay(src) {
    const overlay = document.getElementById('overlay');
    const overlayImg = document.getElementById('overlay-img');
    overlayImg.src = src;
    overlay.style.display = 'flex';
  }
  function closeOverlay() {
    const overlay = document.getElementById('overlay');
    overlay.style.display = 'none';
  }
</script>
