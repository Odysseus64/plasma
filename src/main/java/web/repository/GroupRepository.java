package web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import web.model.Group;

public interface GroupRepository extends JpaRepository<Group, Long> {
}
