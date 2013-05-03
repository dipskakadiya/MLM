    /*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlm.model;

import com.mlm.action.Action;
import com.mlm.bean.Product;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author sai
 */
public class ManageProduct implements Action {
    private static final int THRESHOLD_SIZE = 1024 * 1024 * 3; //3 MB
    private static final int MAX_FILE_SIZE = 1024 * 1024 * 10; // 10 MB
    private static final int REQUEST_SIZE = 1024 * 1024 * 50; // 50 MB

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse res) {

        try {
            Product Pr = new Product();
            Pr.setItemid(Integer.parseInt(req.getParameter("item_code")));
            Pr.setItemname(req.getParameter("item_name"));
            Pr.setCtgid(Integer.parseInt(req.getParameter("Category")));
                Pr.setStock(Integer.parseInt(req.getParameter("stock")));
            Pr.setRate(Integer.parseInt(req.getParameter("salesrate")));
            Pr.setPrelevel(Integer.parseInt(req.getParameter("reorderlevel")));
            Pr.setImg(req.getParameter("ProductImage"));
            boolean isMultipart = ServletFileUpload.isMultipartContent(req);
            System.out.println(req.getContextPath());
            if (isMultipart) {
                // configures some settings
                DiskFileItemFactory factory = new DiskFileItemFactory();
                factory.setSizeThreshold(THRESHOLD_SIZE);
                factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

                ServletFileUpload upload = new ServletFileUpload(factory);
                upload.setFileSizeMax(MAX_FILE_SIZE);
                upload.setSizeMax(REQUEST_SIZE);

                // constructs the directory path to store upload file
                String uploadPath = "E:/";

                // creates the directory if it does not exist
                File uploadDir = new File(uploadPath);
                if (!uploadDir.exists()) {
                    uploadDir.mkdir();
                }

                try {
                    // parses the request's content to extract file data
                    List formItems = upload.parseRequest(req);
                    Iterator iter = formItems.iterator();

                    // iterates over form's fields
                    while (iter.hasNext()) {
                        FileItem item = (FileItem) iter.next();
                        // processes only fields that are not form fields
                        if (!item.isFormField()) {
                            String fileName = new File(item.getName()).getName();
                            String filePath = uploadPath + File.separator + fileName;
                            File storeFile = new File(filePath);
                            // saves the file on disk
                            item.write(storeFile);
                        }
                    }
                } catch (Exception ex) {
                    req.setAttribute("message", "There was an error: " + ex.getMessage());
                    ex.printStackTrace();
                }
            }
            
            
            if (req.getParameter("SubAction").equals("Update")) {
                Pr.Update();
            } else {
                Pr.Insert();
            }
            res.sendRedirect("Controller?Action=ShowProduct");
        } catch (Exception ex) {
            ex.getMessage();
        }
        return null;
    }
}
