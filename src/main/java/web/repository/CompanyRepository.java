package web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import web.model.Company;

public interface CompanyRepository extends JpaRepository<Company, Long> {
}
