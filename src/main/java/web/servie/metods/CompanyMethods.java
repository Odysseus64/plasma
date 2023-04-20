package web.servie.metods;

import web.models.Company;

import java.util.List;

public interface CompanyMethods {
    List<Company> findAll();
    Company save(Company company);
    Company findById(Long id);
    void deleteById(Long id);
    void update(Long id, Company company);
}
