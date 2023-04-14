package web.servie.metods;

import web.models.Groups;

import java.util.List;

public interface GroupMethods {
    Groups save (Groups groups);
    void deleteById(Long id);
    Groups findById(Long id);
    List<Groups> findAll();
    void update (Groups groups, Long id);
}
