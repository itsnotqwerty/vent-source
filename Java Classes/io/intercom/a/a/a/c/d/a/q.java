package io.intercom.a.a.a.c.d.a;

import io.intercom.a.a.a.c.b.a.b;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class q
  extends FilterInputStream
{
  private volatile byte[] buf;
  private final b cIu;
  private int count;
  private int marklimit;
  private int markpos = -1;
  private int pos;
  
  public q(InputStream paramInputStream, b paramb)
  {
    this(paramInputStream, paramb, (byte)0);
  }
  
  private q(InputStream paramInputStream, b paramb, byte paramByte)
  {
    super(paramInputStream);
    this.cIu = paramb;
    this.buf = ((byte[])paramb.a(65536, byte[].class));
  }
  
  private static IOException Jf()
    throws IOException
  {
    throw new IOException("BufferedInputStream is closed");
  }
  
  private int a(InputStream paramInputStream, byte[] paramArrayOfByte)
    throws IOException
  {
    if ((this.markpos == -1) || (this.pos - this.markpos >= this.marklimit))
    {
      i = paramInputStream.read(paramArrayOfByte);
      if (i > 0)
      {
        this.markpos = -1;
        this.pos = 0;
        this.count = i;
      }
      return i;
    }
    int j;
    byte[] arrayOfByte;
    if ((this.markpos == 0) && (this.marklimit > paramArrayOfByte.length) && (this.count == paramArrayOfByte.length))
    {
      j = paramArrayOfByte.length * 2;
      i = j;
      if (j > this.marklimit) {
        i = this.marklimit;
      }
      arrayOfByte = (byte[])this.cIu.a(i, byte[].class);
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
      this.buf = arrayOfByte;
      this.cIu.put(paramArrayOfByte);
      this.pos -= this.markpos;
      this.markpos = 0;
      this.count = 0;
      j = paramInputStream.read(arrayOfByte, this.pos, arrayOfByte.length - this.pos);
      if (j > 0) {
        break label236;
      }
    }
    label236:
    for (int i = this.pos;; i = this.pos + j)
    {
      this.count = i;
      return j;
      arrayOfByte = paramArrayOfByte;
      if (this.markpos <= 0) {
        break;
      }
      System.arraycopy(paramArrayOfByte, this.markpos, paramArrayOfByte, 0, paramArrayOfByte.length - this.markpos);
      arrayOfByte = paramArrayOfByte;
      break;
    }
  }
  
  public final void Jg()
  {
    try
    {
      this.marklimit = this.buf.length;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final int available()
    throws IOException
  {
    try
    {
      InputStream localInputStream = this.in;
      if ((this.buf == null) || (localInputStream == null)) {
        throw Jf();
      }
    }
    finally {}
    int i = this.count;
    int j = this.pos;
    int k = ((InputStream)localObject).available();
    return k + (i - j);
  }
  
  public final void close()
    throws IOException
  {
    if (this.buf != null)
    {
      this.cIu.put(this.buf);
      this.buf = null;
    }
    InputStream localInputStream = this.in;
    this.in = null;
    if (localInputStream != null) {
      localInputStream.close();
    }
  }
  
  public final void mark(int paramInt)
  {
    try
    {
      this.marklimit = Math.max(this.marklimit, paramInt);
      this.markpos = this.pos;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final boolean markSupported()
  {
    return true;
  }
  
  public final int read()
    throws IOException
  {
    int i = -1;
    byte[] arrayOfByte2;
    try
    {
      arrayOfByte2 = this.buf;
      InputStream localInputStream1 = this.in;
      if ((arrayOfByte2 == null) || (localInputStream1 == null)) {
        throw Jf();
      }
    }
    finally {}
    if (this.pos >= this.count)
    {
      int j = a(localInputStream2, arrayOfByte2);
      if (j != -1) {}
    }
    for (;;)
    {
      return i;
      byte[] arrayOfByte1 = arrayOfByte2;
      if (arrayOfByte2 != this.buf)
      {
        arrayOfByte2 = this.buf;
        arrayOfByte1 = arrayOfByte2;
        if (arrayOfByte2 == null) {
          throw Jf();
        }
      }
      if (this.count - this.pos > 0)
      {
        i = this.pos;
        this.pos = (i + 1);
        i = arrayOfByte1[i];
        i &= 0xFF;
      }
    }
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    Object localObject2;
    try
    {
      localObject2 = this.buf;
      if (localObject2 == null) {
        throw Jf();
      }
    }
    finally {}
    if (paramInt2 == 0) {
      paramInt1 = 0;
    }
    for (;;)
    {
      return paramInt1;
      InputStream localInputStream = this.in;
      if (localInputStream == null) {
        throw Jf();
      }
      int i;
      if (this.pos < this.count)
      {
        if (this.count - this.pos >= paramInt2) {}
        for (i = paramInt2;; i = this.count - this.pos)
        {
          System.arraycopy(localObject2, this.pos, paramArrayOfByte, paramInt1, i);
          this.pos += i;
          if (i == paramInt2) {
            break;
          }
          if (localInputStream.available() != 0) {
            break label346;
          }
          break;
        }
      }
      for (;;)
      {
        int k;
        if ((this.markpos == -1) && (i >= localObject2.length))
        {
          paramInt1 = localInputStream.read(paramArrayOfByte, j, i);
          k = paramInt1;
          localObject1 = localObject2;
          if (paramInt1 != -1) {
            break label277;
          }
          if (i != paramInt2) {
            break label370;
          }
          paramInt1 = -1;
          break;
        }
        if (a(localInputStream, (byte[])localObject2) == -1)
        {
          if (i != paramInt2) {
            break label378;
          }
          paramInt1 = -1;
          break;
        }
        Object localObject1 = localObject2;
        if (localObject2 != this.buf)
        {
          localObject2 = this.buf;
          localObject1 = localObject2;
          if (localObject2 == null) {
            throw Jf();
          }
        }
        if (this.count - this.pos >= i) {
          paramInt1 = i;
        }
        for (;;)
        {
          System.arraycopy(localObject1, this.pos, paramArrayOfByte, j, paramInt1);
          this.pos += paramInt1;
          k = paramInt1;
          label277:
          i -= k;
          paramInt1 = paramInt2;
          if (i == 0) {
            break;
          }
          if (localInputStream.available() != 0) {
            break label326;
          }
          paramInt1 = paramInt2 - i;
          break;
          paramInt1 = this.count;
          k = this.pos;
          paramInt1 -= k;
        }
        label326:
        j += k;
        localObject2 = localObject1;
        continue;
        paramInt1 = i;
        break;
        label346:
        int j = paramInt1 + i;
        i = paramInt2 - i;
        continue;
        i = paramInt2;
        j = paramInt1;
      }
      label370:
      paramInt1 = paramInt2 - i;
      continue;
      label378:
      paramInt1 = paramInt2 - i;
    }
  }
  
  public final void release()
  {
    try
    {
      if (this.buf != null)
      {
        this.cIu.put(this.buf);
        this.buf = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void reset()
    throws IOException
  {
    try
    {
      if (this.buf == null) {
        throw new IOException("Stream is closed");
      }
    }
    finally {}
    if (-1 == this.markpos) {
      throw new a("Mark has been invalidated, pos: " + this.pos + " markLimit: " + this.marklimit);
    }
    this.pos = this.markpos;
  }
  
  public final long skip(long paramLong)
    throws IOException
  {
    InputStream localInputStream;
    try
    {
      byte[] arrayOfByte1 = this.buf;
      localInputStream = this.in;
      if (arrayOfByte1 == null) {
        throw Jf();
      }
    }
    finally {}
    if (paramLong < 1L) {
      paramLong = 0L;
    }
    for (;;)
    {
      return paramLong;
      if (localInputStream == null) {
        throw Jf();
      }
      if (this.count - this.pos >= paramLong)
      {
        this.pos = ((int)(this.pos + paramLong));
      }
      else
      {
        long l = this.count - this.pos;
        this.pos = this.count;
        if ((this.markpos != -1) && (paramLong <= this.marklimit))
        {
          if (a(localInputStream, arrayOfByte2) == -1)
          {
            paramLong = l;
          }
          else if (this.count - this.pos >= paramLong - l)
          {
            this.pos = ((int)(paramLong - l + this.pos));
          }
          else
          {
            paramLong = l + this.count - this.pos;
            this.pos = this.count;
          }
        }
        else
        {
          paramLong = localInputStream.skip(paramLong - l);
          paramLong = l + paramLong;
        }
      }
    }
  }
  
  static final class a
    extends IOException
  {
    a(String paramString)
    {
      super();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/a/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */