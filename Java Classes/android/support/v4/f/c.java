package android.support.v4.f;

import java.util.Locale;

public final class c
{
  public static final b DX = new e(null, false);
  public static final b DY = new e(null, true);
  public static final b DZ = new e(b.Eg, false);
  public static final b Ea = new e(b.Eg, true);
  public static final b Eb = new e(a.Ee, false);
  public static final b Ec = f.Ej;
  
  static int al(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 2;
    case 0: 
      return 1;
    }
    return 0;
  }
  
  static int am(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 2;
    case 0: 
    case 14: 
    case 15: 
      return 1;
    }
    return 0;
  }
  
  private static final class a
    implements c.c
  {
    static final a Ee = new a(true);
    static final a Ef = new a(false);
    private final boolean Ed;
    
    private a(boolean paramBoolean)
    {
      this.Ed = paramBoolean;
    }
    
    public final int b(CharSequence paramCharSequence, int paramInt)
    {
      int k = 1;
      int j = 0;
      int i = 0;
      for (;;)
      {
        if (j < paramInt + 0) {
          switch (c.al(Character.getDirectionality(paramCharSequence.charAt(j))))
          {
          default: 
            j += 1;
            break;
          case 0: 
            if (this.Ed) {
              i = 0;
            }
            break;
          }
        }
      }
      do
      {
        do
        {
          return i;
          i = 1;
          break;
          i = k;
        } while (!this.Ed);
        i = 1;
        break;
        if (i == 0) {
          break label108;
        }
        i = k;
      } while (this.Ed);
      return 0;
      label108:
      return 2;
    }
  }
  
  private static final class b
    implements c.c
  {
    static final b Eg = new b();
    
    public final int b(CharSequence paramCharSequence, int paramInt)
    {
      int i = 0;
      int j = 2;
      while ((i < paramInt + 0) && (j == 2))
      {
        j = c.am(Character.getDirectionality(paramCharSequence.charAt(i)));
        i += 1;
      }
      return j;
    }
  }
  
  private static abstract interface c
  {
    public abstract int b(CharSequence paramCharSequence, int paramInt);
  }
  
  private static abstract class d
    implements b
  {
    private final c.c Eh;
    
    d(c.c paramc)
    {
      this.Eh = paramc;
    }
    
    public final boolean a(CharSequence paramCharSequence, int paramInt)
    {
      if ((paramCharSequence == null) || (paramInt < 0) || (paramCharSequence.length() - paramInt < 0)) {
        throw new IllegalArgumentException();
      }
      if (this.Eh == null) {
        return dB();
      }
      switch (this.Eh.b(paramCharSequence, paramInt))
      {
      default: 
        return dB();
      case 0: 
        return true;
      }
      return false;
    }
    
    protected abstract boolean dB();
  }
  
  private static final class e
    extends c.d
  {
    private final boolean Ei;
    
    e(c.c paramc, boolean paramBoolean)
    {
      super();
      this.Ei = paramBoolean;
    }
    
    protected final boolean dB()
    {
      return this.Ei;
    }
  }
  
  private static final class f
    extends c.d
  {
    static final f Ej = new f();
    
    f()
    {
      super();
    }
    
    protected final boolean dB()
    {
      return d.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/f/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */