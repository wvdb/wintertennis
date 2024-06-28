package be.ictdynamic.wintertennis.service;

import be.ictdynamic.wintertennis.domain.Player;
import be.ictdynamic.wintertennis.dto.PlayerDetails;
import be.ictdynamic.wintertennis.mapper.PlayerMapper;
import be.ictdynamic.wintertennis.repository.PlayerRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Slf4j
@Service
@AllArgsConstructor
@Transactional(readOnly = true)
public class PlayerService {

    private final PlayerRepository playerRepository;
    private final PlayerMapper playerMapper;

    public PlayerDetails get(long id) {
        return playerMapper.map(findById(id));
    }

    private Player findById(long id) {
        return playerRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Id " + id + " not found"));
    }

}
