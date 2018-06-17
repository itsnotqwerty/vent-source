package a.a.a.b;

import a.a.a.i.g;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.net.InetAddress;
import java.util.HashSet;
import java.util.logging.Level;
import java.util.logging.Logger;

public class b
  extends a
{
  public static final d csX = new b();
  
  private b()
  {
    super(b.class.getSimpleName(), 999);
  }
  
  public final String[] FX()
  {
    HashSet localHashSet;
    try
    {
      LineNumberReader localLineNumberReader = new LineNumberReader(new InputStreamReader(Runtime.getRuntime().exec("getprop").getInputStream()));
      localHashSet = new HashSet(6);
      for (;;)
      {
        String str = localLineNumberReader.readLine();
        if (str == null) {
          break;
        }
        int i = str.indexOf("]: [");
        if (i != -1)
        {
          Object localObject = str.substring(1, i);
          str = str.substring(i + 4, str.length() - 1);
          if ((!str.isEmpty()) && ((((String)localObject).endsWith(".dns")) || (((String)localObject).endsWith(".dns1")) || (((String)localObject).endsWith(".dns2")) || (((String)localObject).endsWith(".dns3")) || (((String)localObject).endsWith(".dns4"))))
          {
            localObject = InetAddress.getByName(str);
            if (localObject != null)
            {
              localObject = ((InetAddress)localObject).getHostAddress();
              if ((localObject != null) && (((String)localObject).length() != 0)) {
                localHashSet.add(localObject);
              }
            }
          }
        }
      }
      while (localHashSet.size() <= 0) {}
    }
    catch (IOException localIOException)
    {
      coH.log(Level.WARNING, "Exception in findDNSByExec", localIOException);
      return null;
    }
    String[] arrayOfString = (String[])localHashSet.toArray(new String[localHashSet.size()]);
    return arrayOfString;
  }
  
  public final boolean isAvailable()
  {
    return g.Go();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/b/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */