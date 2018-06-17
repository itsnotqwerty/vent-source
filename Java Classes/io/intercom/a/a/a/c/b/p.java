package io.intercom.a.a.a.c.b;

import android.util.Log;
import io.intercom.a.a.a.c.a;
import io.intercom.a.a.a.c.h;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class p
  extends Exception
{
  private static final StackTraceElement[] cKM = new StackTraceElement[0];
  private h cIL;
  private a cJF;
  private final List<Throwable> cKN;
  private Class<?> csM;
  
  public p(String paramString)
  {
    this(paramString, Collections.emptyList());
  }
  
  public p(String paramString, Throwable paramThrowable)
  {
    this(paramString, Collections.singletonList(paramThrowable));
  }
  
  public p(String paramString, List<Throwable> paramList)
  {
    super(paramString);
    setStackTrace(cKM);
    this.cKN = paramList;
  }
  
  private void a(Appendable paramAppendable)
  {
    a(this, paramAppendable);
    List localList = this.cKN;
    paramAppendable = new a(paramAppendable);
    for (;;)
    {
      int i;
      try
      {
        int j = localList.size();
        i = 0;
        if (i < j)
        {
          paramAppendable.append("Cause (").append(String.valueOf(i + 1)).append(" of ").append(String.valueOf(j)).append("): ");
          Throwable localThrowable = (Throwable)localList.get(i);
          if ((localThrowable instanceof p)) {
            ((p)localThrowable).a(paramAppendable);
          } else {
            a(localThrowable, paramAppendable);
          }
        }
      }
      catch (IOException paramAppendable)
      {
        throw new RuntimeException(paramAppendable);
      }
      return;
      i += 1;
    }
  }
  
  private static void a(Throwable paramThrowable, Appendable paramAppendable)
  {
    try
    {
      paramAppendable.append(paramThrowable.getClass().toString()).append(": ").append(paramThrowable.getMessage()).append('\n');
      return;
    }
    catch (IOException paramAppendable)
    {
      throw new RuntimeException(paramThrowable);
    }
  }
  
  private void a(Throwable paramThrowable, List<Throwable> paramList)
  {
    if ((paramThrowable instanceof p))
    {
      paramThrowable = ((p)paramThrowable).cKN.iterator();
      while (paramThrowable.hasNext()) {
        a((Throwable)paramThrowable.next(), paramList);
      }
    }
    paramList.add(paramThrowable);
  }
  
  final void a(h paramh, a parama, Class<?> paramClass)
  {
    this.cIL = paramh;
    this.cJF = parama;
    this.csM = paramClass;
  }
  
  public final void eX(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    a(this, localArrayList);
    int j = localArrayList.size();
    int i = 0;
    while (i < j)
    {
      Log.i(paramString, "Root cause (" + (i + 1) + " of " + j + ")", (Throwable)localArrayList.get(i));
      i += 1;
    }
  }
  
  public final Throwable fillInStackTrace()
  {
    return this;
  }
  
  public final String getMessage()
  {
    StringBuilder localStringBuilder = new StringBuilder().append(super.getMessage());
    if (this.csM != null)
    {
      str = ", " + this.csM;
      localStringBuilder = localStringBuilder.append(str);
      if (this.cJF == null) {
        break label123;
      }
      str = ", " + this.cJF;
      label75:
      localStringBuilder = localStringBuilder.append(str);
      if (this.cIL == null) {
        break label129;
      }
    }
    label123:
    label129:
    for (String str = ", " + this.cIL;; str = "")
    {
      return str;
      str = "";
      break;
      str = "";
      break label75;
    }
  }
  
  public final void printStackTrace()
  {
    printStackTrace(System.err);
  }
  
  public final void printStackTrace(PrintStream paramPrintStream)
  {
    a(paramPrintStream);
  }
  
  public final void printStackTrace(PrintWriter paramPrintWriter)
  {
    a(paramPrintWriter);
  }
  
  private static final class a
    implements Appendable
  {
    private final Appendable cKO;
    private boolean cKP = true;
    
    a(Appendable paramAppendable)
    {
      this.cKO = paramAppendable;
    }
    
    private static CharSequence y(CharSequence paramCharSequence)
    {
      Object localObject = paramCharSequence;
      if (paramCharSequence == null) {
        localObject = "";
      }
      return (CharSequence)localObject;
    }
    
    public final Appendable append(char paramChar)
      throws IOException
    {
      boolean bool = false;
      if (this.cKP)
      {
        this.cKP = false;
        this.cKO.append("  ");
      }
      if (paramChar == '\n') {
        bool = true;
      }
      this.cKP = bool;
      this.cKO.append(paramChar);
      return this;
    }
    
    public final Appendable append(CharSequence paramCharSequence)
      throws IOException
    {
      paramCharSequence = y(paramCharSequence);
      return append(paramCharSequence, 0, paramCharSequence.length());
    }
    
    public final Appendable append(CharSequence paramCharSequence, int paramInt1, int paramInt2)
      throws IOException
    {
      boolean bool2 = false;
      paramCharSequence = y(paramCharSequence);
      if (this.cKP)
      {
        this.cKP = false;
        this.cKO.append("  ");
      }
      boolean bool1 = bool2;
      if (paramCharSequence.length() > 0)
      {
        bool1 = bool2;
        if (paramCharSequence.charAt(paramInt2 - 1) == '\n') {
          bool1 = true;
        }
      }
      this.cKP = bool1;
      this.cKO.append(paramCharSequence, paramInt1, paramInt2);
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */