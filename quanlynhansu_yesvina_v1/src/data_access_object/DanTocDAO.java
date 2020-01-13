/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data_access_object;

import java.sql.ResultSet;

/**
 *
 * @author cuong
 */
public class DanTocDAO {
    public static ResultSet taiDanhSachdantoc(){
        return DataProvider.instance.executeQuery("select * from danhmucdantoc");
    }
    public static boolean themdantoc(String ten, String chuthich){
        return DataProvider.instance.executeNonQuery( "INSERT INTO `quanlynhansu`.`danhmucdantoc` (`ten`, `chuthich`) VALUES ('"+ten+"', '"+chuthich+"');");
    }
    public static boolean suadantoc(String ten, String chuthich,String ma){
        return DataProvider.instance.executeNonQuery( "UPDATE `quanlynhansu`.`danhmucdantoc` SET `ten` = '"+ten+"', `chuthich` = '"+chuthich+"' WHERE (`ma` = '"+ma+"')");
    }
    public static boolean xoadantoc(String ma){
        return DataProvider.instance.executeNonQuery( "DELETE FROM `quanlynhansu`.`danhmucdantoc` WHERE (`ma` = '"+ma+"');");
    }
}
