package b;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class m
{
  private static final Logger bIr = Logger.getLogger(m.class.getName());
  
  public static r a(final Socket paramSocket, k paramk)
    throws IOException
  {
    if (paramSocket == null) {
      throw new IllegalArgumentException("socket == null");
    }
    final a locala = h(paramSocket);
    paramSocket = paramSocket.getOutputStream();
    if (paramSocket == null) {
      throw new IllegalArgumentException("out == null");
    }
    new a.1(locala, new r()
    {
      private WeakReference<k> cUF = new WeakReference(this.cUG);
      
      public final void a(c paramAnonymousc, long paramAnonymousLong)
        throws IOException
      {
        try
        {
          u.a(paramAnonymousc.b, 0L, paramAnonymousLong);
          Object localObject;
          while (paramAnonymousLong > 0L)
          {
            locala.g();
            localObject = paramAnonymousc.cUy;
            int i = (int)Math.min(paramAnonymousLong, ((p)localObject).c - ((p)localObject).b);
            paramSocket.write(((p)localObject).bIG, ((p)localObject).b, i);
            ((p)localObject).b += i;
            long l = paramAnonymousLong - i;
            paramAnonymousc.b -= i;
            paramAnonymousLong = l;
            if (((p)localObject).b == ((p)localObject).c)
            {
              paramAnonymousc.cUy = ((p)localObject).Lp();
              q.b((p)localObject);
              paramAnonymousLong = l;
            }
          }
          return;
        }
        catch (IOException paramAnonymousc)
        {
          localObject = (k)this.cUF.get();
          if (localObject != null) {
            ((k)localObject).b(paramAnonymousc);
          }
          throw paramAnonymousc;
        }
      }
      
      public final void close()
        throws IOException
      {
        paramSocket.close();
      }
      
      public final void flush()
        throws IOException
      {
        paramSocket.flush();
      }
      
      public final String toString()
      {
        return "sink(" + paramSocket + ")";
      }
      
      public final t zA()
      {
        return locala;
      }
    });
  }
  
  public static d b(r paramr)
  {
    if (paramr == null) {
      throw new IllegalArgumentException("sink == null");
    }
    return new n(paramr);
  }
  
  public static e b(s params)
  {
    if (params == null) {
      throw new IllegalArgumentException("source == null");
    }
    return new o(params);
  }
  
  public static s b(final Socket paramSocket, k paramk)
    throws IOException
  {
    if (paramSocket == null) {
      throw new IllegalArgumentException("socket == null");
    }
    final a locala = h(paramSocket);
    paramSocket = paramSocket.getInputStream();
    if (paramSocket == null) {
      throw new IllegalArgumentException("in == null");
    }
    new a.2(locala, new s()
    {
      private WeakReference<k> cUF = new WeakReference(this.cUG);
      
      public final long b(c paramAnonymousc, long paramAnonymousLong)
        throws IOException
      {
        if (paramAnonymousLong < 0L) {
          try
          {
            throw new IllegalArgumentException("byteCount < 0: " + paramAnonymousLong);
          }
          catch (IOException paramAnonymousc)
          {
            localObject = (k)this.cUF.get();
            if (localObject != null) {
              ((k)localObject).b(paramAnonymousc);
            }
            throw paramAnonymousc;
          }
        }
        if (paramAnonymousLong == 0L) {
          return 0L;
        }
        locala.g();
        Object localObject = paramAnonymousc.fI(1);
        int i = (int)Math.min(paramAnonymousLong, 2048 - ((p)localObject).c);
        i = paramSocket.read(((p)localObject).bIG, ((p)localObject).c, i);
        if (i == -1) {
          return -1L;
        }
        ((p)localObject).c += i;
        paramAnonymousc.b += i;
        return i;
      }
      
      public final void close()
        throws IOException
      {
        paramSocket.close();
      }
      
      public final String toString()
      {
        return "source(" + paramSocket + ")";
      }
      
      public final t zA()
      {
        return locala;
      }
    });
  }
  
  public static r f(Socket paramSocket)
    throws IOException
  {
    return a(paramSocket, null);
  }
  
  public static s g(Socket paramSocket)
    throws IOException
  {
    return b(paramSocket, null);
  }
  
  private static a h(Socket paramSocket)
  {
    new a()
    {
      protected final void a()
      {
        try
        {
          this.cUK.close();
          return;
        }
        catch (Exception localException)
        {
          m.Lo().log(Level.WARNING, "Failed to close timed out socket " + this.cUK, localException);
        }
      }
      
      protected final IOException e(IOException paramAnonymousIOException)
      {
        SocketTimeoutException localSocketTimeoutException = new SocketTimeoutException("timeout");
        if (paramAnonymousIOException != null) {
          localSocketTimeoutException.initCause(paramAnonymousIOException);
        }
        return localSocketTimeoutException;
      }
    };
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/b/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */