package be.ictdynamic.wintertennis.domain;

import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Getter
@Setter
@MappedSuperclass
public class BaseEntity {
    @EqualsAndHashCode.Include
    @Id
    @Column(nullable = false, updatable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

//    public BaseEntity(Long id) {
//        this.id = id;
//    }
}
