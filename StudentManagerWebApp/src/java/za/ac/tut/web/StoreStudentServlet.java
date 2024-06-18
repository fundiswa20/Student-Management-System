/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import za.ac.tut.model.bl.StudentFacadeLocal;
import za.ac.tut.model.entities.Student;

/**
 *
 * @author USER
 */

@MultipartConfig
public class StoreStudentServlet extends HttpServlet {
    @EJB StudentFacadeLocal sfl;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String strId = request.getParameter("studNum");
        Long id =  Long.parseLong(strId);
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        
        Part part = request.getPart("photo");
        
        //convert iamge to byte[]
        byte[] image_to_byte = convertImage(part);
        
        Student student =  new Student(id, image_to_byte, name, surname);
        
        sfl.create(student);
        
        request.setAttribute("id", id);
        request.setAttribute("name", name);
        request.setAttribute("surname", surname);
        request.setAttribute("image_to_byte", image_to_byte);
        
        RequestDispatcher disp =  request.getRequestDispatcher("store_student_outcome.jsp");
        disp.forward(request, response);
        
    }

    private byte[] convertImage(Part part) {
        byte[] byte_array = null;
        
        try {
            InputStream is = part.getInputStream();
            
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            
            int byte_read =0;
            
            byte[] buffer = new byte[4024];
            
            byte_read = is.read(buffer);
            
            while(byte_read != -1)
            {
                baos.write(buffer, 0, byte_read);
                
                byte_read = is.read(buffer);
                
            }
            
            byte_array = baos.toByteArray();
            
                    
        } catch (IOException ex) {
            System.err.println(ex.getMessage());
        }
        
        return byte_array;
        
    }

}
