/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nhanqt.dao;

import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import nhanqt.dto.Employee;
import nhanqt.utill.DBContext;

/**
 *
 * @author pc
 */
public class LoadEmp {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Employee> getAllEmp() {
        String query = "select * from Employeetbl \n"
                + "where isDelete = 1";
        List<Employee> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection(); //b1.mo ket noi
            ps = conn.prepareStatement(query); //b2.nem cau lenh tu netbean sang sqlserver
            rs = ps.executeQuery(); //b3.nhan ket qua tra ve
            while (rs.next()) {
                list.add(new Employee(rs.getString(1), rs.getString(2),
                        rs.getString(3), rs.getString(4), rs.getString(5),
                        rs.getDate(6), rs.getBoolean(7)));
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Employee> findById(String empID) {
        String query = "select * from Employeetbl\n"
                + "where EmpID = ?";
        List<Employee> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection(); //b1.mo ket noi
            ps = conn.prepareStatement(query); //b2.nem cau lenh tu netbean sang sqlserver
            ps.setString(1, empID);
            rs = ps.executeQuery(); //b3.nhan ket qua tra ve         
            while (rs.next()) {
                list.add(new Employee(rs.getString(1), rs.getString(2),
                        rs.getString(3), rs.getString(4), rs.getString(5),
                        rs.getDate(6), rs.getBoolean(7)));
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public int addEmp(Employee emp) {
        String query = "insert into Employeetbl values(?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, emp.getEmpID());
            ps.setString(2, emp.getFullname());
            ps.setString(3, emp.getPhone());
            ps.setString(4, emp.getEmail());
            ps.setString(5, emp.getAddress());
            java.sql.Date sqlDate = new java.sql.Date(emp.getDOB().getTime());
            ps.setDate(6, sqlDate);
            ps.setBoolean(7, emp.isIsDelete());
            return ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int updateEmp(String fullname, String phone, String email, String address, Date dob, String id) {
        String query = "update Employeetbl set Fullname = ?, Phone = ?,\n"
                + "Email = ?, Address  = ?,DateOfBirth = ?\n"
                + "where EmpID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, fullname);
            ps.setString(2, phone);
            ps.setString(3, email);
            ps.setString(4, address);
            java.sql.Date sqlDate = new java.sql.Date(dob.getTime());
            ps.setDate(5, sqlDate);
            ps.setString(6, id);
            return ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public boolean checkDuplicate(String id) {
        String query = "select * from Employeetbl \n"
                + "where EmpID = ?";
        try {
            List<Employee> list = new ArrayList<>();
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeQuery();
            while (rs.next()) {
                list.add(new Employee(rs.getString(1), rs.getString(2),
                        rs.getString(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getBoolean(7)));
            }
            if (list.isEmpty()) {
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    public int delete( String ID) {
        String query = "UPDATE Employeetbl set isDelete = 0\n"
                + "where EmpID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, ID);
            return ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
