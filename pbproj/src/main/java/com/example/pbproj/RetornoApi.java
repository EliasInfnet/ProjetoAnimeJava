package com.example.pbproj;

import java.util.List;
import com.fasterxml.jackson.annotation.JsonProperty;

public class RetornoApi {

    @JsonProperty("results")
    public List<AnimeAux> results;

}
