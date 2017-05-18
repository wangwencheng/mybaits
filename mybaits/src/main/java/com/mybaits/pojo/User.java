package com.mybaits.pojo;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class User {
    private Integer id;

    private String userName;

    private String password;

    private Integer age;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public static List<Integer> distinctId(Collection<User> beans) {
        List<Integer> list = new ArrayList<Integer>();
        if (beans == null || beans.isEmpty()) return list;
        if (beans.size() == 1)
        {
            User bean = beans.iterator().next();
            if (bean == null) return list;
            Integer v = bean.getId();
            if (v != null) list.add(v);
            return list;
        }
        Set<Integer> set = new LinkedHashSet<Integer>();
        for (User bean : beans) {
            Integer v = bean.getId();
            if (v != null) set.add(v);
        }
        if (!set.isEmpty()) list.addAll(set);
        return list;
    }

    public static List<String> distinctUserName(Collection<User> beans) {
        List<String> list = new ArrayList<String>();
        if (beans == null || beans.isEmpty()) return list;
        if (beans.size() == 1)
        {
            User bean = beans.iterator().next();
            if (bean == null) return list;
            String v = bean.getUserName();
            if (v != null) list.add(v);
            return list;
        }
        Set<String> set = new LinkedHashSet<String>();
        for (User bean : beans) {
            String v = bean.getUserName();
            if (v != null) set.add(v);
        }
        if (!set.isEmpty()) list.addAll(set);
        return list;
    }

    public static List<Integer> distinctAge(Collection<User> beans) {
        List<Integer> list = new ArrayList<Integer>();
        if (beans == null || beans.isEmpty()) return list;
        if (beans.size() == 1)
        {
            User bean = beans.iterator().next();
            if (bean == null) return list;
            Integer v = bean.getAge();
            if (v != null) list.add(v);
            return list;
        }
        Set<Integer> set = new LinkedHashSet<Integer>();
        for (User bean : beans) {
            Integer v = bean.getAge();
            if (v != null) set.add(v);
        }
        if (!set.isEmpty()) list.addAll(set);
        return list;
    }

    public static User single(Collection<User> beans) {
        if (beans == null || beans.size() != 1) return null;
        return beans.iterator().next();
    }

    public static User first(Collection<User> beans) {
        if (beans == null || beans.isEmpty()) return null;
        return beans.iterator().next();
    }

    public static Map<Integer, User> mapById(Collection<User> beans) {
        Map<Integer, User> map = new LinkedHashMap<Integer,User>();
        if (beans == null || beans.isEmpty()) return map;
        for (User bean : beans) {
            map.put(bean.getId(), bean);
        }
        return map;
    }

    public static Map<Integer, List<User>> mapAllById(Collection<User> beans) {
        Map<Integer, List<User>> map = new LinkedHashMap<Integer, List<User>>();
        if (beans == null || beans.isEmpty()) return map;
        for (User bean : beans) {
            Integer v = bean.getId();
            List<User> list = map.get(v);
            if (list == null) map.put(v, list = new ArrayList<User>());
            list.add(bean);
        }
        return map;
    }

    public static Map<String, User> mapByUserName(Collection<User> beans) {
        Map<String, User> map = new LinkedHashMap<String,User>();
        if (beans == null || beans.isEmpty()) return map;
        for (User bean : beans) {
            map.put(bean.getUserName(), bean);
        }
        return map;
    }

    public static Map<String, List<User>> mapAllByUserName(Collection<User> beans) {
        Map<String, List<User>> map = new LinkedHashMap<String, List<User>>();
        if (beans == null || beans.isEmpty()) return map;
        for (User bean : beans) {
            String v = bean.getUserName();
            List<User> list = map.get(v);
            if (list == null) map.put(v, list = new ArrayList<User>());
            list.add(bean);
        }
        return map;
    }

    public static Map<Integer, User> mapByAge(Collection<User> beans) {
        Map<Integer, User> map = new LinkedHashMap<Integer,User>();
        if (beans == null || beans.isEmpty()) return map;
        for (User bean : beans) {
            map.put(bean.getAge(), bean);
        }
        return map;
    }

    public static Map<Integer, List<User>> mapAllByAge(Collection<User> beans) {
        Map<Integer, List<User>> map = new LinkedHashMap<Integer, List<User>>();
        if (beans == null || beans.isEmpty()) return map;
        for (User bean : beans) {
            Integer v = bean.getAge();
            List<User> list = map.get(v);
            if (list == null) map.put(v, list = new ArrayList<User>());
            list.add(bean);
        }
        return map;
    }
}