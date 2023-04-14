package web.servie.metods;

import web.models.Company;

import java.util.List;

public interface CompanyMethods {
    Company save(Company company);
    void deleteById(Long id);
    Company findById(Long id);
    List<Company> findAll();
    void update(Company company, Long id);
}
