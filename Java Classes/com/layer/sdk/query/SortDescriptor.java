package com.layer.sdk.query;

public class SortDescriptor
{
  private final Queryable.Property a;
  private final Order b;
  
  public SortDescriptor(Queryable.Property paramProperty, Order paramOrder)
  {
    this.a = paramProperty;
    this.b = paramOrder;
  }
  
  public Order getOrder()
  {
    return this.b;
  }
  
  public Queryable.Property getProperty()
  {
    return this.a;
  }
  
  public String toString()
  {
    return "SortDescriptor{Property=" + this.a + ", Order=" + this.b + '}';
  }
  
  public static enum Order
  {
    ASCENDING,  DESCENDING;
    
    private Order() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/query/SortDescriptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */