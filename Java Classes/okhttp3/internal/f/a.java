package okhttp3.internal.f;

import d.l;
import d.r;
import d.s;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

public abstract interface a
{
  public static final a dbK = new a()
  {
    public final void delete(File paramAnonymousFile)
      throws IOException
    {
      if ((!paramAnonymousFile.delete()) && (paramAnonymousFile.exists())) {
        throw new IOException("failed to delete " + paramAnonymousFile);
      }
    }
    
    public final void deleteContents(File paramAnonymousFile)
      throws IOException
    {
      File[] arrayOfFile = paramAnonymousFile.listFiles();
      if (arrayOfFile == null) {
        throw new IOException("not a readable directory: " + paramAnonymousFile);
      }
      int j = arrayOfFile.length;
      int i = 0;
      while (i < j)
      {
        paramAnonymousFile = arrayOfFile[i];
        if (paramAnonymousFile.isDirectory()) {
          deleteContents(paramAnonymousFile);
        }
        if (!paramAnonymousFile.delete()) {
          throw new IOException("failed to delete " + paramAnonymousFile);
        }
        i += 1;
      }
    }
    
    public final boolean exists(File paramAnonymousFile)
    {
      return paramAnonymousFile.exists();
    }
    
    public final s p(File paramAnonymousFile)
      throws FileNotFoundException
    {
      return l.p(paramAnonymousFile);
    }
    
    public final r q(File paramAnonymousFile)
      throws FileNotFoundException
    {
      try
      {
        r localr = l.q(paramAnonymousFile);
        return localr;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        paramAnonymousFile.getParentFile().mkdirs();
      }
      return l.q(paramAnonymousFile);
    }
    
    public final r r(File paramAnonymousFile)
      throws FileNotFoundException
    {
      try
      {
        r localr = l.r(paramAnonymousFile);
        return localr;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        paramAnonymousFile.getParentFile().mkdirs();
      }
      return l.r(paramAnonymousFile);
    }
    
    public final void rename(File paramAnonymousFile1, File paramAnonymousFile2)
      throws IOException
    {
      delete(paramAnonymousFile2);
      if (!paramAnonymousFile1.renameTo(paramAnonymousFile2)) {
        throw new IOException("failed to rename " + paramAnonymousFile1 + " to " + paramAnonymousFile2);
      }
    }
    
    public final long size(File paramAnonymousFile)
    {
      return paramAnonymousFile.length();
    }
  };
  
  public abstract void delete(File paramFile)
    throws IOException;
  
  public abstract void deleteContents(File paramFile)
    throws IOException;
  
  public abstract boolean exists(File paramFile);
  
  public abstract s p(File paramFile)
    throws FileNotFoundException;
  
  public abstract r q(File paramFile)
    throws FileNotFoundException;
  
  public abstract r r(File paramFile)
    throws FileNotFoundException;
  
  public abstract void rename(File paramFile1, File paramFile2)
    throws IOException;
  
  public abstract long size(File paramFile);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/f/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */