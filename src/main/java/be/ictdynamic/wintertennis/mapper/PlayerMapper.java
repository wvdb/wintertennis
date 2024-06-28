package be.ictdynamic.wintertennis.mapper;

import be.ictdynamic.wintertennis.domain.Player;
import be.ictdynamic.wintertennis.dto.PlayerDetails;
import org.springframework.stereotype.Component;

@Component
public class PlayerMapper extends DetailsMapper<Player, PlayerDetails> {

    public final PlayerDetails map(Player player) {
        PlayerDetails details = map(player, new PlayerDetails());
        details.setFname(player.getFName());
        details.setLname(player.getLName());
        details.setMobileNumber(player.getMobileNumber());
        details.setToPay(player.getToPay());
        details.setPaid(player.getPaid());
        details.setActive(player.getActive());
        return details;
    }

}
