package io.intercom.a.a.a.c.c;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import io.intercom.a.a.a.c.a;
import io.intercom.a.a.a.c.a.b;
import io.intercom.a.a.a.c.a.b.a;
import io.intercom.a.a.a.g;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public final class f<Data>
  implements n<File, Data>
{
  private final d<Data> cME;
  
  public f(d<Data> paramd)
  {
    this.cME = paramd;
  }
  
  public static class a<Data>
    implements o<File, Data>
  {
    private final f.d<Data> cMF;
    
    public a(f.d<Data> paramd)
    {
      this.cMF = paramd;
    }
    
    public final n<File, Data> a(r paramr)
    {
      return new f(this.cMF);
    }
  }
  
  public static final class b
    extends f.a<ParcelFileDescriptor>
  {
    public b()
    {
      super()
      {
        public final Class<ParcelFileDescriptor> HU()
        {
          return ParcelFileDescriptor.class;
        }
      };
    }
  }
  
  private static final class c<Data>
    implements b<Data>
  {
    private final f.d<Data> cMF;
    private Data data;
    private final File file;
    
    c(File paramFile, f.d<Data> paramd)
    {
      this.file = paramFile;
      this.cMF = paramd;
    }
    
    public final a HT()
    {
      return a.cHC;
    }
    
    public final Class<Data> HU()
    {
      return this.cMF.HU();
    }
    
    public final void a(g paramg, b.a<? super Data> parama)
    {
      try
      {
        this.data = this.cMF.n(this.file);
        parama.as(this.data);
        return;
      }
      catch (FileNotFoundException paramg)
      {
        if (Log.isLoggable("FileLoader", 3)) {
          Log.d("FileLoader", "Failed to open file", paramg);
        }
        parama.i(paramg);
      }
    }
    
    public final void cancel() {}
    
    public final void cleanup()
    {
      if (this.data != null) {}
      try
      {
        this.cMF.ar(this.data);
        return;
      }
      catch (IOException localIOException) {}
    }
  }
  
  public static abstract interface d<Data>
  {
    public abstract Class<Data> HU();
    
    public abstract void ar(Data paramData)
      throws IOException;
    
    public abstract Data n(File paramFile)
      throws FileNotFoundException;
  }
  
  public static final class e
    extends f.a<InputStream>
  {
    public e()
    {
      super()
      {
        public final Class<InputStream> HU()
        {
          return InputStream.class;
        }
      };
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */