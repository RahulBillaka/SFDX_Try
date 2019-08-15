public virtual class Vehicle 
{
    public String model,type;
    public Integer year, mileage, speed;
    public void model() {
        System.debug('Model of the vehicle' +model);
    }
     public void year() {
        System.debug('year of the vehicle' +year);
    }
     public void type() {
        System.debug('type of the vehicle' +type);
    }
     public void mileage() {
        System.debug('mileage of the vehicle' +mileage);
    }
     public virtual void speed() {
        System.debug('speed of the vehicle' +speed);
    }
    

}