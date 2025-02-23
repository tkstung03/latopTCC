package com.gr25.thinkpro.service.impl;

import com.gr25.thinkpro.domain.entity.Role;
import com.gr25.thinkpro.repository.RoleRepository;
import com.gr25.thinkpro.service.RoleService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
@RequiredArgsConstructor
public class RoleServiceImpl implements RoleService {

    private final RoleRepository roleRepository;

    @Override
    public void initRoles() {
        if (roleRepository.count() == 0) {
            Role admin = new Role(1, "ROLE_ADMIN", null);
            admin.setCreatedDate(LocalDateTime.now());
            admin.setLastModifiedDate(LocalDateTime.now());
            roleRepository.save(admin);

            Role user = new Role(2, "ROLE_USER", null);
            user.setCreatedDate(LocalDateTime.now());
            user.setLastModifiedDate(LocalDateTime.now());
            roleRepository.save(user);
        }
    }
}
