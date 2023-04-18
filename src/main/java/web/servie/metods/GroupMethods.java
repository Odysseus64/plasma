package web.servie.metods;

import web.models.Groups;

import java.util.List;

public interface GroupMethods {
    List<Groups> findAll();
    Groups save(Groups groups);
    Groups findById(Long id);
    void deleteById(Long id);
}
