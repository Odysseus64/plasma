package web.servie;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import web.models.Groups;
import web.servie.metods.GroupMethods;

import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class GroupService implements GroupMethods {

    @Override
    public Groups save(Groups groups) {
        return null;
    }

    @Override
    public void deleteById(Long id) {

    }

    @Override
    public Groups findById(Long id) {
        return null;
    }

    @Override
    public List<Groups> findAll() {
        return null;
    }

    @Override
    public void update(Groups groups, Long id) {

    }
}