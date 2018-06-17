package a.a.a;

import java.util.HashMap;
import java.util.Map;

public final class f
{
  private static final Map<Byte, b> cqj = new HashMap();
  private static final Map<Byte, a> cqk = new HashMap();
  
  public static enum a
  {
    public final String description;
    public final byte value;
    
    private a(int paramInt, String paramString)
    {
      if ((paramInt < 0) || (paramInt > 255)) {
        throw new IllegalArgumentException();
      }
      this.value = ((byte)paramInt);
      this.description = paramString;
      f.FV().put(Byte.valueOf(this.value), this);
    }
    
    public static a c(byte paramByte)
    {
      return (a)f.FV().get(Byte.valueOf(paramByte));
    }
  }
  
  public static enum b
  {
    public final byte cqE;
    public final String description;
    
    private b(int paramInt, String paramString)
    {
      if ((paramInt < 0) || (paramInt > 255)) {
        throw new IllegalArgumentException();
      }
      this.cqE = ((byte)paramInt);
      this.description = paramString;
      f.FU().put(Byte.valueOf(this.cqE), this);
    }
    
    public static b d(byte paramByte)
    {
      return (b)f.FU().get(Byte.valueOf(paramByte));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */