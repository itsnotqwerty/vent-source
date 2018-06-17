package a.a.a.g;

import a.a.a.c.a;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class o
  extends g
{
  public final List<a> cqI;
  
  static
  {
    if (!o.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public o()
  {
    this(Collections.emptyList());
  }
  
  public o(List<a> paramList)
  {
    this.cqI = Collections.unmodifiableList(paramList);
  }
  
  public static o e(DataInputStream paramDataInputStream, int paramInt)
    throws IOException
  {
    Object localObject;
    if (paramInt == 0)
    {
      localObject = Collections.emptyList();
      return new o((List)localObject);
    }
    ArrayList localArrayList = new ArrayList(4);
    int i;
    do
    {
      do
      {
        localObject = localArrayList;
        if (paramInt <= 0) {
          break;
        }
        i = paramDataInputStream.readUnsignedShort();
        int j = paramDataInputStream.readUnsignedShort();
        localObject = new byte[j];
        paramDataInputStream.read((byte[])localObject);
        localArrayList.add(a.b(i, (byte[])localObject));
        i = paramInt - (j + 4);
        paramInt = i;
      } while ($assertionsDisabled);
      paramInt = i;
    } while (i >= 0);
    throw new AssertionError();
  }
  
  protected final void b(DataOutputStream paramDataOutputStream)
    throws IOException
  {
    Iterator localIterator = this.cqI.iterator();
    while (localIterator.hasNext()) {
      ((a)localIterator.next()).a(paramDataOutputStream);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/g/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */