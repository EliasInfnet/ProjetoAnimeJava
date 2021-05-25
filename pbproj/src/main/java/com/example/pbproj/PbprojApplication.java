package com.example.pbproj;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@EnableFeignClients
@SpringBootApplication
public class PbprojApplication implements CommandLineRunner {

	public static void main(String[] args) {
		SpringApplication.run(PbprojApplication.class, args);
	}

	@Autowired
	AnimeService animeService;

	@Override
	public void run(String... args) throws Exception {
		System.out.println(animeService.buscarAnime("Attack").results.get(0).getTitle());
	}

}
