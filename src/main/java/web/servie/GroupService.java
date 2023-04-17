package web.servie;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import web.models.Groups;
import web.repository.GroupRepository;
import web.servie.metods.GroupMethods;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GroupService implements GroupMethods {
    private final GroupRepository gRepo;

    @Override
    public Groups save(Groups groups) {
        return gRepo.save(groups);
    }

    @Override
    public void deleteById(Long id) {
        gRepo.deleteById(id);
    }

    @Override
    public Groups findById(Long id) {
        return gRepo.findById(id).orElse(null);
    }

    @Override
    public List<Groups> findAll() {
        return gRepo.findAll();
    }

    @Override
    public void update(Groups groups, Long id) {
        Groups groups1 = gRepo.getById(id);
        groups1.setGroupName(groups.getGroupName());
        groups1.setDataStart(groups.getDataStart());
        groups1.setDataFinish(groups.getDataFinish());
        gRepo.save(groups1);
    }
}