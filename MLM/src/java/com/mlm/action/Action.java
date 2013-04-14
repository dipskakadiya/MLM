/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
public interface Action {
        public String execute(HttpServletRequest req,HttpServletResponse res);

}
