package web.servie;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import web.models.Company;
import web.repository.CompanyRepository;
import web.servie.metods.CompanyMethods;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CompanyService implements CompanyMethods {
    private final CompanyRepository cRepo;

    @Override
    public Company save(Company company) {
        return cRepo.save(company);
    }

    @Override
    public void deleteById(Long id) {
        cRepo.deleteById(id);
    }

    @Override
    public Company findById(Long id) {
        return cRepo.findById(id).orElse(null);
    }

    @Override
    public List<Company> findAll() {
        return cRepo.findAll();
    }

    @Override
    public void update(Company company, Long id) {
        Company company1 = cRepo.getOne(id);
        company1.setCompanyName(company.getCompanyName());
        company1.setLocatedCountry(company.getLocatedCountry());
        cRepo.save(company1);
    }
}