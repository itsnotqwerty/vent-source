package com.google.android.gms.dynamite;

import dalvik.system.PathClassLoader;

final class h
  extends PathClassLoader
{
  h(String paramString, ClassLoader paramClassLoader)
  {
    super(paramString, paramClassLoader);
  }
  
  protected final Class<?> loadClass(String paramString, boolean paramBoolean)
    throws ClassNotFoundException
  {
    if ((!paramString.startsWith("java.")) && (!paramString.startsWith("android."))) {
      try
      {
        Class localClass = findClass(paramString);
        return localClass;
      }
      catch (ClassNotFoundException localClassNotFoundException) {}
    }
    return super.loadClass(paramString, paramBoolean);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/dynamite/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */