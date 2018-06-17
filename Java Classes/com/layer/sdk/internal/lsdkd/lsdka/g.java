package com.layer.sdk.internal.lsdkd.lsdka;

import android.net.Uri;
import com.layer.sdk.internal.lsdkd.d;
import com.layer.sdk.internal.lsdkd.f;
import com.layer.sdk.internal.lsdkd.h;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;

public class g<T extends d>
  extends AbstractList<T>
{
  private static final k.a a = k.a(g.class);
  private h b;
  private Uri[] c;
  private d[] d;
  
  public T a(int paramInt)
  {
    if (this.c == null) {
      throw new IndexOutOfBoundsException("No IDs set");
    }
    if (this.d == null) {
      this.d = new d[this.c.length];
    }
    d locald = this.d[paramInt];
    if (locald != null) {
      return locald;
    }
    if (this.b == null) {
      throw new IllegalStateException("Null context");
    }
    locald = this.b.m().a(this.c[paramInt], false);
    this.d[paramInt] = locald;
    return locald;
  }
  
  protected List<Uri> a()
  {
    if (this.c == null) {
      return null;
    }
    return Arrays.asList(this.c);
  }
  
  public void a(int paramInt, T paramT)
  {
    throw new RuntimeException("Cannot modify");
  }
  
  protected void a(h paramh)
  {
    if ((this.b != null) && (this.b != paramh)) {
      this.d = null;
    }
    this.b = paramh;
  }
  
  protected void a(Collection<Uri> paramCollection)
  {
    if (((this.c == null) && (paramCollection == null)) || ((this.c != null) && (this.c.equals(paramCollection)))) {}
    for (;;)
    {
      return;
      if (paramCollection == null)
      {
        this.c = null;
        this.d = null;
        return;
      }
      this.c = new Uri[paramCollection.size()];
      this.d = new d[paramCollection.size()];
      paramCollection = paramCollection.iterator();
      int i = 0;
      while (paramCollection.hasNext())
      {
        Uri localUri = (Uri)paramCollection.next();
        this.c[i] = localUri;
        i += 1;
      }
    }
  }
  
  public boolean a(T paramT)
  {
    throw new RuntimeException("Cannot modify");
  }
  
  public boolean addAll(int paramInt, Collection<? extends T> paramCollection)
  {
    throw new RuntimeException("Cannot modify");
  }
  
  public boolean addAll(Collection<? extends T> paramCollection)
  {
    throw new RuntimeException("Cannot modify");
  }
  
  public T b(int paramInt)
  {
    throw new RuntimeException("Cannot modify");
  }
  
  public T b(int paramInt, T paramT)
  {
    throw new RuntimeException("Cannot modify");
  }
  
  protected void b(Collection<T> paramCollection)
  {
    if (paramCollection == null)
    {
      this.c = null;
      this.d = null;
    }
    for (;;)
    {
      return;
      this.c = new Uri[paramCollection.size()];
      this.d = new d[paramCollection.size()];
      paramCollection = paramCollection.iterator();
      int i = 0;
      while (paramCollection.hasNext())
      {
        d locald = (d)paramCollection.next();
        this.c[i] = locald.getId();
        this.d[i] = locald;
        i += 1;
      }
    }
  }
  
  public void clear()
  {
    throw new RuntimeException("Cannot modify");
  }
  
  public Iterator<T> iterator()
  {
    return new a((byte)0);
  }
  
  public ListIterator<T> listIterator()
  {
    return new b(0);
  }
  
  public ListIterator<T> listIterator(int paramInt)
  {
    return new b(paramInt);
  }
  
  public boolean remove(Object paramObject)
  {
    throw new RuntimeException("Cannot modify");
  }
  
  public boolean removeAll(Collection<?> paramCollection)
  {
    throw new RuntimeException("Cannot modify");
  }
  
  public boolean retainAll(Collection<?> paramCollection)
  {
    throw new RuntimeException("Cannot modify");
  }
  
  public int size()
  {
    if (this.c == null) {
      return 0;
    }
    return this.c.length;
  }
  
  private final class a
    implements Iterator<T>
  {
    private int b = 0;
    
    private a() {}
    
    public final boolean hasNext()
    {
      return this.b < g.this.size();
    }
    
    public final void remove()
    {
      throw new RuntimeException("Cannot modify");
    }
  }
  
  private final class b
    implements ListIterator<T>
  {
    private int b;
    
    b(int paramInt)
    {
      if ((paramInt >= 0) && (paramInt <= g.this.size()))
      {
        this.b = (paramInt - 1);
        return;
      }
      throw new IndexOutOfBoundsException();
    }
    
    private T a()
    {
      try
      {
        Object localObject = g.this;
        int i = this.b + 1;
        this.b = i;
        localObject = ((g)localObject).a(i);
        return (T)localObject;
      }
      catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
      {
        throw new NoSuchElementException();
      }
    }
    
    private T b()
    {
      try
      {
        Object localObject = g.this;
        int i = this.b;
        this.b = (i - 1);
        localObject = ((g)localObject).a(i);
        return (T)localObject;
      }
      catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
      {
        throw new NoSuchElementException();
      }
    }
    
    public final boolean hasNext()
    {
      return this.b + 1 < g.this.size();
    }
    
    public final boolean hasPrevious()
    {
      return this.b >= 0;
    }
    
    public final int nextIndex()
    {
      return this.b + 1;
    }
    
    public final int previousIndex()
    {
      return this.b;
    }
    
    public final void remove()
    {
      throw new RuntimeException("Cannot modify");
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/lsdka/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */