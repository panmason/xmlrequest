package com.infitecs.xmlrequest.servlet;

import com.alibaba.fastjson.JSON;
import com.infitecs.xmlrequest.bean.User;
import com.infitecs.xmlrequest.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author peter pan on 10/18/2016.
 */
public class XmlHttpRequestServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/xmlhttprequest.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().print(JSON.toJSON(new UserService().getUserList(50)));
    }
}
