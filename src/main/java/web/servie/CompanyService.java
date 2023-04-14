package web.servie;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import web.models.Company;
import web.repository.CompanyRepository;
import web.servie.metods.CompanyMethods;

import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class CompanyService implements CompanyMethods {
    private final CompanyRepository cRepo;

    @Override
    public Company save(Company company) {
        log.info("The company is saved! {}", company);
        return cRepo.save(company);
    }

    @Override
    public void deleteById(Long id) {
        log.info("Company deleted {}", id);
        cRepo.deleteById(id);
    }

    @Override
    public Company findById(Long id) {
        log.info("Company found {}", id);
        return cRepo.findById(id).orElse(null);
    }

    @Override
    public List<Company> findAll() {
        return cRepo.findAll();
    }

    @Override
    public void update(Company company, Long id) {
        log.info("The company has been successfully updated {}", company);
        Company company1 = cRepo.getById(id);
        company1.setCompanyName(company.getCompanyName());
        company1.setLocatedCountry(company.getLocatedCountry());
        cRepo.save(company1);
    }
}