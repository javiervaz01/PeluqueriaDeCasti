package org.peluqueria.samples.petclinic.changelog;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class changelog {
    
    @GetMapping(value = "/changelog")
    public String changelogMethod(Map<String, Object> model){
        return  "changelog/changelog";
    }
}
