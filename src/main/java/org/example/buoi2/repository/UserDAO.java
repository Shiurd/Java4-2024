package org.example.buoi2.repository;

import org.example.buoi2.entity.User;
import org.example.buoi2.utility.HibernateConnect;

import java.util.List;

public class UserDAO {

    public List<User> findALl(){
        try (var session = HibernateConnect.getFACTORY().openSession()) {
            return session.createQuery("from User", User.class).list();
    }
    }

}
