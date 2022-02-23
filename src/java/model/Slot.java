/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Admin
 */
public class Slot {
    private int SlotID;
    private String SlotName;
    private String Time;

    public int getSlotID() {
        return SlotID;
    }

    public void setSlotID(int SlotID) {
        this.SlotID = SlotID;
    }

    public String getSlotName() {
        return SlotName;
    }

    public void setSlotName(String SlotName) {
        this.SlotName = SlotName;
    }

    public String getTime() {
        return Time;
    }

    public void setTime(String Time) {
        this.Time = Time;
    }
    
}
