package be.ictdynamic.wintertennis.dto;

import be.ictdynamic.wintertennis.domain.Player;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class PlayerDetails extends BaseDetails {
    private String fname;
    private String lname;
    private String mobileNumber;
    private Float toPay;
    private Float paid;
    private String active;
    private Player.PlayerType type;
}
