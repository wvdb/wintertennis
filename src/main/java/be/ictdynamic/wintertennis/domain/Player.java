package be.ictdynamic.wintertennis.domain;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.antlr.v4.runtime.misc.NotNull;

@Getter
@Setter
@Entity
@Table(uniqueConstraints = {
        @UniqueConstraint(columnNames = {"id"})
})
public class Player extends BaseEntity {

    /**
     * Default constructor for reflection libraries only.
     * Don't use this to create new objects!
     */
//    @Deprecated
//    public Player() {
//    }

    @NotNull
    @Column(name = "fname")
    private String fName;
    @NotNull
    @Column(name = "lname")
    private String lName;
    @NotNull
    private String mobileNumber;

    private Float toPay;
    private Float paid;
    private String active;
    @Enumerated(EnumType.STRING)
    private PlayerType type;

//    @Deprecated
//    public Player(Long id) {
//        super(id);
//    }

    @Override
    public final String toString() {
        return getClass().getSimpleName() + " " + getId();
    }

    public enum PlayerType {
        FULL_TIME("full time"),
        PART_TIME("part time");

        private String type;

        PlayerType(String type) {
            this.type = type;
        }
    }

}
