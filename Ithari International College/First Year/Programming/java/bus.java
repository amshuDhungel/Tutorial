public class Bus{
    private String numberPlate;
    private String color;
    private String route;
    private String customerName;
    private Boolean availablestatus;
    private int rate;

    public Bus(String numberPlate, String color, String route, int rate){
        this.numberPlate = numberPlate;
        this.color = color;
        this.route = route;
        this.rate = rate;
        this.availablestatus = true;
    }

    public String getNumberPlate()
    {
        return numberPlate;
    }
    public void setNumberPlate(String numberPlate)
    {
        this.numberPlate = numberPlate;
    }
    public String getColor()
    {
        return color;
    }
    public void setColor(String route)
    {
        this.color = color;
    }
    public void getRoute()
    {
        return route;
    }
    public String getCustomerName()
    {
        return customerName;
    }
    public void setCustomerName(String customerName)
    {
        this.customerName = customerName;
    }
    public Boolean getAvailable();
    {
        this.availableStatus = availableStatus;
    }
    public int getRate()
    {
        return rate;
    }
    public void setRate(int rate)
    {
        this.rate = rate;
    }
}