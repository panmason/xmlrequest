package com.infitecs.xmlrequest.service;

import com.infitecs.xmlrequest.bean.User;

import java.util.ArrayList;
import java.util.List;

/**
 * @author peter pan on 10/18/2016.
 */
public class UserService {

    public List<String[]> getUserList(int size) {
        List<String[]> userList = new ArrayList<>();
        for (int i = 0; i < size; i++) {
            String[] strings = new String[]{ "Trident", "Internet Explorer 4.0", "Win 95+", "4", "X" };
            userList.add(strings);
        }
        return userList;
    }

}
