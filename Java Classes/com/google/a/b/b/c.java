package com.google.a.b.b;

import com.google.a.l;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

final class c
  extends b
{
  private static Class bjY;
  private final Object bjZ = vH();
  private final Field bka = vI();
  
  private boolean b(AccessibleObject paramAccessibleObject)
  {
    if ((this.bjZ != null) && (this.bka != null)) {
      try
      {
        long l = ((Long)bjY.getMethod("objectFieldOffset", new Class[] { Field.class }).invoke(this.bjZ, new Object[] { this.bka })).longValue();
        bjY.getMethod("putBoolean", new Class[] { Object.class, Long.TYPE, Boolean.TYPE }).invoke(this.bjZ, new Object[] { paramAccessibleObject, Long.valueOf(l), Boolean.valueOf(true) });
        return true;
      }
      catch (Exception paramAccessibleObject) {}
    }
    return false;
  }
  
  private static Object vH()
  {
    try
    {
      Object localObject = Class.forName("sun.misc.Unsafe");
      bjY = (Class)localObject;
      localObject = ((Class)localObject).getDeclaredField("theUnsafe");
      ((Field)localObject).setAccessible(true);
      localObject = ((Field)localObject).get(null);
      return localObject;
    }
    catch (Exception localException) {}
    return null;
  }
  
  private static Field vI()
  {
    try
    {
      Field localField = AccessibleObject.class.getDeclaredField("override");
      return localField;
    }
    catch (NoSuchFieldException localNoSuchFieldException) {}
    return null;
  }
  
  public final void a(AccessibleObject paramAccessibleObject)
  {
    if (!b(paramAccessibleObject)) {}
    try
    {
      paramAccessibleObject.setAccessible(true);
      return;
    }
    catch (SecurityException localSecurityException)
    {
      throw new l("Gson couldn't modify fields for " + paramAccessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", localSecurityException);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/b/b/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */