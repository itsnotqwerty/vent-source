package a.a.a.b;

import a.a.a.i.g;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class c
  extends a
{
  public static final d csX = new c();
  
  protected c()
  {
    super(c.class.getSimpleName(), 1000);
  }
  
  public final String[] FX()
  {
    for (;;)
    {
      int i;
      try
      {
        Object localObject1 = Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class });
        ArrayList localArrayList = new ArrayList(5);
        i = 0;
        if (i < 4)
        {
          Object localObject2 = (String)((Method)localObject1).invoke(null, new Object[] { new String[] { "net.dns1", "net.dns2", "net.dns3", "net.dns4" }[i] });
          if ((localObject2 == null) || (((String)localObject2).length() == 0) || (localArrayList.contains(localObject2))) {
            break label191;
          }
          localObject2 = InetAddress.getByName((String)localObject2);
          if (localObject2 == null) {
            break label191;
          }
          localObject2 = ((InetAddress)localObject2).getHostAddress();
          if ((localObject2 == null) || (((String)localObject2).length() == 0) || (localArrayList.contains(localObject2))) {
            break label191;
          }
          localArrayList.add(localObject2);
          break label191;
        }
        if (localArrayList.size() > 0)
        {
          localObject1 = (String[])localArrayList.toArray(new String[localArrayList.size()]);
          return (String[])localObject1;
        }
      }
      catch (Exception localException)
      {
        coH.log(Level.WARNING, "Exception in findDNSByReflection", localException);
      }
      return null;
      label191:
      i += 1;
    }
  }
  
  public final boolean isAvailable()
  {
    return g.Go();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/b/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */