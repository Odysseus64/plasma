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
    public void update(Long id, Groups news) {
        Groups group = gRepo.findById(id).orElse(null);
        assert group != null;
        group.setGroupName(news.getGroupName());
        group.setDataStart(news.getDataStart());
        group.setDataFinish(news.getDataFinish());
        gRepo.save(group);
    }

    @Override
    public Groups findById(Long id) {
        return gRepo.findById(id).orElse(null);
    }

    @Override
    public List<Groups> findAll() {
        return gRepo.findAll();
    }


}