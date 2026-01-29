---
layout: post
title: About
permalink: /about/
comments: true
---

## As a Conversation Starter

Here are some places I have lived and some of my favorite songs.

<comment>
Flags are from Wikipedia. Album covers are my own images.
</comment>

<style>
.grid-container {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
  gap: 10px;
}

.grid-item {
  text-align: center;
}

.grid-item img {
  width: 100%;
  height: 120px;
  object-fit: contain;
}

.grid-item p {
  margin: 5px 0;
}
</style>

<!-- ===== WHERE I’VE LIVED ===== -->
## Where I’ve Lived
<div class="grid-container" id="location_grid"></div>

<script>
  const locationGrid = document.getElementById("location_grid");
  const WIKI_BASE = "https://upload.wikimedia.org/wikipedia/commons/";

  const locations = [
    {
      flag: "0/01/Flag_of_California.svg",
      title: "California",
      description: "Lived here my entire life"
    }
  ];

  locations.forEach(loc => {
    const item = document.createElement("div");
    item.className = "grid-item";

    const img = document.createElement("img");
    img.src = WIKI_BASE + loc.flag;
    img.alt = loc.title;

    const title = document.createElement("p");
    title.textContent = loc.title;
    title.style.fontWeight = "bold";

    const desc = document.createElement("p");
    desc.textContent = loc.description;
    desc.style.opacity = "0.7";

    item.appendChild(img);
    item.appendChild(title);
    item.appendChild(desc);
    locationGrid.appendChild(item);
  });
</script>

---

<!-- ===== FAVORITE SONGS ===== -->
## 🎵 Favorite Songs
<div class="grid-container" id="music_grid"></div>

<script>
  // Daniel Lv style SITE_BASE
  const SITE_BASE = '{{ site.baseurl | default: "" }}';
  const musicGrid = document.getElementById("music_grid");

  const songs = [
    {
      title: "COME N GO",
      artist: "Yeat",
      image: SITE_BASE + "/images/about/COME N GO - YEAT.png"
    },
    {
      title: "Butterfly Effect",
      artist: "Travis Scott",
      image: SITE_BASE + "/images/about/Butterfly Effect - Travis Scott.png"
    },
    {
      title: "Bad Time",
      artist: "Lil Tecca",
      image: SITE_BASE + "/images/about/BAD TIME - Lil Tecca.png"
    },
    {
      title: "New Drop",
      artist: "Don Toliver",
      image: SITE_BASE + "/images/about/New Drop - Don Toliver.png"
    }
  ];

  songs.forEach(song => {
    const item = document.createElement("div");
    item.className = "grid-item";

    const img = document.createElement("img");
    img.src = song.image;
    img.alt = song.title;

    const title = document.createElement("p");
    title.textContent = song.title;
    title.style.fontWeight = "bold";

    const artist = document.createElement("p");
    artist.textContent = song.artist;
    artist.style.opacity = "0.7";

    item.appendChild(img);
    item.appendChild(title);
    item.appendChild(artist);
    musicGrid.appendChild(item);
  });
</script>

---

## Journey Through Life

- 🏫 Went to Stone Ranch Elementary School  
- 🏫 Went to Oak Valley Middle School  
- 🎓 Currently attend Del Norte High School  
- 🏀 Played basketball my entire life  
- 💻 Member of the CyberAegis club  

---

## Culture, Family, and Fun

- Born in the U.S., family is from India  
- Family of 4: me, my sister, my mom, and my dad  
