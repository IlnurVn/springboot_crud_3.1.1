package com.vish.springboot.crud.springboot_crud.repository;



import com.vish.springboot.crud.springboot_crud.model.User;


import java.util.List;

public interface UserRepository {

    int usersCount();

    List<User> allUsers(int page);

    void add(User user);

    void delete(User user);

    void edit(User user);

    User getById(int id);

    User getUserByName(String name);
}
