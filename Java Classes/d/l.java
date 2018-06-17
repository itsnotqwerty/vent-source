package d;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

public final class l
{
  static final Logger logger = Logger.getLogger(l.class.getName());
  
  public static r Nr()
  {
    new r()
    {
      public final t MK()
      {
        return t.dcn;
      }
      
      public final void b(c paramAnonymousc, long paramAnonymousLong)
        throws IOException
      {
        paramAnonymousc.ah(paramAnonymousLong);
      }
      
      public final void close()
        throws IOException
      {}
      
      public final void flush()
        throws IOException
      {}
    };
  }
  
  public static d a(r paramr)
  {
    return new m(paramr);
  }
  
  private static r a(final OutputStream paramOutputStream, t paramt)
  {
    if (paramOutputStream == null) {
      throw new IllegalArgumentException("out == null");
    }
    if (paramt == null) {
      throw new IllegalArgumentException("timeout == null");
    }
    new r()
    {
      public final t MK()
      {
        return l.this;
      }
      
      public final void b(c paramAnonymousc, long paramAnonymousLong)
        throws IOException
      {
        u.checkOffsetAndCount(paramAnonymousc.size, 0L, paramAnonymousLong);
        while (paramAnonymousLong > 0L)
        {
          l.this.throwIfReached();
          o localo = paramAnonymousc.dbZ;
          int i = (int)Math.min(paramAnonymousLong, localo.limit - localo.pos);
          paramOutputStream.write(localo.data, localo.pos, i);
          localo.pos += i;
          long l = paramAnonymousLong - i;
          paramAnonymousc.size -= i;
          paramAnonymousLong = l;
          if (localo.pos == localo.limit)
          {
            paramAnonymousc.dbZ = localo.Nt();
            p.b(localo);
            paramAnonymousLong = l;
          }
        }
      }
      
      public final void close()
        throws IOException
      {
        paramOutputStream.close();
      }
      
      public final void flush()
        throws IOException
      {
        paramOutputStream.flush();
      }
      
      public final String toString()
      {
        return "sink(" + paramOutputStream + ")";
      }
    };
  }
  
  private static s a(final InputStream paramInputStream, t paramt)
  {
    if (paramInputStream == null) {
      throw new IllegalArgumentException("in == null");
    }
    if (paramt == null) {
      throw new IllegalArgumentException("timeout == null");
    }
    new s()
    {
      public final t MK()
      {
        return l.this;
      }
      
      public final long a(c paramAnonymousc, long paramAnonymousLong)
        throws IOException
      {
        if (paramAnonymousLong < 0L) {
          throw new IllegalArgumentException("byteCount < 0: " + paramAnonymousLong);
        }
        if (paramAnonymousLong == 0L) {
          return 0L;
        }
        try
        {
          l.this.throwIfReached();
          o localo = paramAnonymousc.fY(1);
          int i = (int)Math.min(paramAnonymousLong, 8192 - localo.limit);
          i = paramInputStream.read(localo.data, localo.limit, i);
          if (i == -1) {
            return -1L;
          }
          localo.limit += i;
          paramAnonymousc.size += i;
          return i;
        }
        catch (AssertionError paramAnonymousc)
        {
          if (l.isAndroidGetsocknameError(paramAnonymousc)) {
            throw new IOException(paramAnonymousc);
          }
          throw paramAnonymousc;
        }
      }
      
      public final void close()
        throws IOException
      {
        paramInputStream.close();
      }
      
      public final String toString()
      {
        return "source(" + paramInputStream + ")";
      }
    };
  }
  
  public static e b(s params)
  {
    return new n(params);
  }
  
  private static r b(OutputStream paramOutputStream)
  {
    return a(paramOutputStream, new t());
  }
  
  public static r i(Socket paramSocket)
    throws IOException
  {
    if (paramSocket == null) {
      throw new IllegalArgumentException("socket == null");
    }
    if (paramSocket.getOutputStream() == null) {
      throw new IOException("socket's output stream == null");
    }
    a locala = k(paramSocket);
    return new a.1(locala, a(paramSocket.getOutputStream(), locala));
  }
  
  static boolean isAndroidGetsocknameError(AssertionError paramAssertionError)
  {
    return (paramAssertionError.getCause() != null) && (paramAssertionError.getMessage() != null) && (paramAssertionError.getMessage().contains("getsockname failed"));
  }
  
  public static s j(Socket paramSocket)
    throws IOException
  {
    if (paramSocket == null) {
      throw new IllegalArgumentException("socket == null");
    }
    if (paramSocket.getInputStream() == null) {
      throw new IOException("socket's input stream == null");
    }
    a locala = k(paramSocket);
    return new a.2(locala, a(paramSocket.getInputStream(), locala));
  }
  
  private static a k(Socket paramSocket)
  {
    new a()
    {
      protected final IOException newTimeoutException(@Nullable IOException paramAnonymousIOException)
      {
        SocketTimeoutException localSocketTimeoutException = new SocketTimeoutException("timeout");
        if (paramAnonymousIOException != null) {
          localSocketTimeoutException.initCause(paramAnonymousIOException);
        }
        return localSocketTimeoutException;
      }
      
      protected final void timedOut()
      {
        try
        {
          l.this.close();
          return;
        }
        catch (Exception localException)
        {
          l.logger.log(Level.WARNING, "Failed to close timed out socket " + l.this, localException);
          return;
        }
        catch (AssertionError localAssertionError)
        {
          if (l.isAndroidGetsocknameError(localAssertionError))
          {
            l.logger.log(Level.WARNING, "Failed to close timed out socket " + l.this, localAssertionError);
            return;
          }
          throw localAssertionError;
        }
      }
    };
  }
  
  public static s p(File paramFile)
    throws FileNotFoundException
  {
    if (paramFile == null) {
      throw new IllegalArgumentException("file == null");
    }
    return t(new FileInputStream(paramFile));
  }
  
  public static r q(File paramFile)
    throws FileNotFoundException
  {
    if (paramFile == null) {
      throw new IllegalArgumentException("file == null");
    }
    return b(new FileOutputStream(paramFile));
  }
  
  public static r r(File paramFile)
    throws FileNotFoundException
  {
    if (paramFile == null) {
      throw new IllegalArgumentException("file == null");
    }
    return b(new FileOutputStream(paramFile, true));
  }
  
  public static s t(InputStream paramInputStream)
  {
    return a(paramInputStream, new t());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/d/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */