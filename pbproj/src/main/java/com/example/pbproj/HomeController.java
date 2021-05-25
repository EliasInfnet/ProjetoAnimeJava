package com.example.pbproj;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@SpringBootApplication
public class HomeController {

    @Autowired
    AnimeService animeService;

    @RequestMapping("/")
    public String home(Model model) {
        List<AnimeAux> lista = animeService.buscarAnime("Attack").results;
        model.addAttribute("lista", lista);
        return "index";
    }
}
