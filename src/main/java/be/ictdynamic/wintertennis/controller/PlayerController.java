package be.ictdynamic.wintertennis.controller;

import be.ictdynamic.wintertennis.dto.PlayerDetails;
import be.ictdynamic.wintertennis.service.PlayerService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
@AllArgsConstructor
public class PlayerController {

    private final PlayerService playerService;

    @GetMapping("/players/{id}")
    public ResponseEntity<PlayerDetails> get(@PathVariable Long id) {
        return ResponseEntity.ok(playerService.get(id));
    }

//    @PostMapping("/players/{id}")
//    public ResponseEntity<Player> create(@PathVariable Long id) {
//        return ResponseEntity.ok(playerService.findById(id).get());
//    }
}
