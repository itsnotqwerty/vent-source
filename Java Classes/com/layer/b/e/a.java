package com.layer.b.e;

import java.io.PrintStream;

public final class a
{
  private static b bxx = new a();
  
  public static void a(b paramb)
  {
    bxx = paramb;
  }
  
  public static void a(String paramString)
  {
    bxx.a(paramString);
  }
  
  public static boolean a(int paramInt)
  {
    return bxx.a(paramInt);
  }
  
  public static void b(String paramString)
  {
    bxx.b(paramString);
  }
  
  public static void c(String paramString)
  {
    bxx.c(paramString);
  }
  
  public static void f(String paramString, Throwable paramThrowable)
  {
    bxx.f(paramString, paramThrowable);
  }
  
  public static void g(String paramString, Throwable paramThrowable)
  {
    bxx.g(paramString, paramThrowable);
  }
  
  public static final class a
    implements a.b
  {
    private boolean a = false;
    
    public final void a(String paramString)
    {
      System.out.println(paramString);
    }
    
    public final boolean a(int paramInt)
    {
      return this.a;
    }
    
    public final void b(String paramString)
    {
      System.out.println(paramString);
    }
    
    public final void c(String paramString)
    {
      System.out.println(paramString);
    }
    
    public final void f(String paramString, Throwable paramThrowable)
    {
      System.out.println(paramString);
      paramThrowable.printStackTrace();
    }
    
    public final void g(String paramString, Throwable paramThrowable)
    {
      System.out.println(paramString);
      paramThrowable.printStackTrace();
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(String paramString);
    
    public abstract boolean a(int paramInt);
    
    public abstract void b(String paramString);
    
    public abstract void c(String paramString);
    
    public abstract void f(String paramString, Throwable paramThrowable);
    
    public abstract void g(String paramString, Throwable paramThrowable);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/e/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */