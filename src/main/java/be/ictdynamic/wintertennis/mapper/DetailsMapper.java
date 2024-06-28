package be.ictdynamic.wintertennis.mapper;

import be.ictdynamic.wintertennis.domain.BaseEntity;
import be.ictdynamic.wintertennis.dto.BaseDetails;

/**
 * @param <T> The entity type
 * @param <U> The details type
 */
public abstract class DetailsMapper<T extends BaseEntity, U> {

    public abstract U map(T entity);

    protected final <U extends BaseDetails> U map(BaseEntity entity, U details) {
        details.setId(entity.getId());
        return details;
    }

}
