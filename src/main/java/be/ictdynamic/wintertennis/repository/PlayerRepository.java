package be.ictdynamic.wintertennis.repository;

import be.ictdynamic.wintertennis.domain.Player;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PlayerRepository extends JpaRepository<Player, Long> {
//    Player findById(UUID uuid);
}
