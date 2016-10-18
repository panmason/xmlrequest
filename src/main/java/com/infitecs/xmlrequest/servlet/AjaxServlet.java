package com.infitecs.xmlrequest.servlet;

import com.alibaba.fastjson.JSON;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * @author peter pan on 10/18/2016.
 */
public class AjaxServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setStatus(400);
        resp.setCharacterEncoding("utf-8");
        resp.setHeader("complete","complete info");
        Map<String, String> map = new HashMap<>();
        map.put("info", "我们成功了");
        resp.getWriter().print(JSON.toJSON(map));
    }

    @Override
    protected void doHead(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("utf-8");
        resp.setHeader("complete","complete info");
        Map<String, String> map = new HashMap<>();
        map.put("info", "我们成功了");
        resp.getWriter().print(JSON.toJSON(map));
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("utf-8");
        resp.setHeader("complete","complete info");
        Map<String, String> map = new HashMap<>();
        map.put("info", "我们成功了");
        resp.getWriter().print(JSON.toJSON(map));
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("utf-8");
        resp.setHeader("complete","complete info");
        Map<String, String> map = new HashMap<>();
        map.put("info", "我们成功了");
        resp.getWriter().print(JSON.toJSON(map));
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("utf-8");
        resp.setHeader("complete","complete info");
        Map<String, String> map = new HashMap<>();
        map.put("info", "我们成功了");
        resp.getWriter().print(JSON.toJSON(map));
    }

    @Override
    protected void doOptions(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("utf-8");
        resp.setHeader("complete","complete info");
        Map<String, String> map = new HashMap<>();
        map.put("info", "我们成功了");
        resp.getWriter().print(JSON.toJSON(map));
    }
}
