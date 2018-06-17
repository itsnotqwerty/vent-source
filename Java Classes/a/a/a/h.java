package a.a.a;

public abstract class h
  extends IllegalStateException
{
  protected final String name;
  
  protected h(String paramString)
  {
    this.name = paramString;
  }
  
  public static final class a
    extends h
  {
    private final byte[] sY;
    
    public a(String paramString, byte[] paramArrayOfByte)
    {
      super();
      this.sY = paramArrayOfByte;
    }
    
    public final String getMessage()
    {
      return "The DNS name '" + this.name + "' exceeds the maximum name length of 255 octets by " + (this.sY.length - 255) + " octets.";
    }
  }
  
  public static final class b
    extends h
  {
    private final String label;
    
    public b(String paramString1, String paramString2)
    {
      super();
      this.label = paramString2;
    }
    
    public final String getMessage()
    {
      return "The DNS name '" + this.name + "' contains the label '" + this.label + "' which exceeds the maximum label length of 63 octets by " + (this.label.length() - 63) + " octets.";
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */