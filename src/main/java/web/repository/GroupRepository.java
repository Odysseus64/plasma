package web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import web.models.Groups;

public interface GroupRepository extends JpaRepository<Groups, Long> {
}
