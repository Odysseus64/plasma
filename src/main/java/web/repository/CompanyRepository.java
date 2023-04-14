package web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import web.models.Company;

public interface CompanyRepository extends JpaRepository<Company, Long> {
}
