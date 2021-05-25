package com.example.pbproj;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient(url = "https://api.jikan.moe/v3/search/", name = "animeservice")
public interface AnimeService {

    @GetMapping("anime?q={nome}")
    RetornoApi buscarAnime(@PathVariable("nome") String nome);
}
