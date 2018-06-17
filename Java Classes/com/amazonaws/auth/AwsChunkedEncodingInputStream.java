package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.internal.SdkInputStream;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.StringUtils;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public final class AwsChunkedEncodingInputStream
  extends SdkInputStream
{
  private static final Log alS = LogFactory.getLog(AwsChunkedEncodingInputStream.class);
  private static final byte[] and = new byte[0];
  private final String amU;
  private final byte[] amW;
  private InputStream ane = null;
  private final int anf;
  private final String ang;
  private final String anh;
  private String ani;
  private final AWS4Signer anj;
  private ChunkContentIterator ank;
  private DecodedStreamBuffer anl;
  private boolean anm = true;
  private boolean ann = false;
  
  private AwsChunkedEncodingInputStream(InputStream paramInputStream, int paramInt, byte[] paramArrayOfByte, String paramString1, String paramString2, String paramString3, AWS4Signer paramAWS4Signer)
  {
    if ((paramInputStream instanceof AwsChunkedEncodingInputStream))
    {
      paramInputStream = (AwsChunkedEncodingInputStream)paramInputStream;
      paramInt = Math.max(paramInputStream.anf, 262144);
      this.ane = paramInputStream.ane;
    }
    for (this.anl = paramInputStream.anl; paramInt < 131072; this.anl = null)
    {
      throw new IllegalArgumentException("Max buffer size should not be less than chunk size");
      this.ane = paramInputStream;
    }
    this.anf = paramInt;
    this.amW = paramArrayOfByte;
    this.amU = paramString1;
    this.ang = paramString2;
    this.anh = paramString3;
    this.ani = paramString3;
    this.anj = paramAWS4Signer;
  }
  
  public AwsChunkedEncodingInputStream(InputStream paramInputStream, byte[] paramArrayOfByte, String paramString1, String paramString2, String paramString3, AWS4Signer paramAWS4Signer)
  {
    this(paramInputStream, 262144, paramArrayOfByte, paramString1, paramString2, paramString3, paramAWS4Signer);
  }
  
  private byte[] f(byte[] paramArrayOfByte)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(Integer.toHexString(paramArrayOfByte.length));
    Object localObject2 = BinaryUtils.h(AWS4Signer.a("AWS4-HMAC-SHA256-PAYLOAD\n" + this.amU + "\n" + this.ang + "\n" + this.ani + "\n" + BinaryUtils.h(AWS4Signer.P("")) + "\n" + BinaryUtils.h(AWS4Signer.e(paramArrayOfByte)), this.amW, SigningAlgorithm.anE));
    this.ani = ((String)localObject2);
    ((StringBuilder)localObject1).append("" + ";chunk-signature=" + (String)localObject2);
    ((StringBuilder)localObject1).append("\r\n");
    try
    {
      localObject1 = ((StringBuilder)localObject1).toString().getBytes(StringUtils.avd);
      localObject2 = "\r\n".getBytes(StringUtils.avd);
      byte[] arrayOfByte = new byte[localObject1.length + paramArrayOfByte.length + localObject2.length];
      System.arraycopy(localObject1, 0, arrayOfByte, 0, localObject1.length);
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, localObject1.length, paramArrayOfByte.length);
      System.arraycopy(localObject2, 0, arrayOfByte, localObject1.length + paramArrayOfByte.length, localObject2.length);
      return arrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      throw new AmazonClientException("Unable to sign the chunked data. " + paramArrayOfByte.getMessage(), paramArrayOfByte);
    }
  }
  
  public static long h(long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("Nonnegative content length expected.");
    }
    long l1 = paramLong / 131072L;
    paramLong %= 131072L;
    long l2 = i(131072L);
    if (paramLong > 0L) {}
    for (paramLong = i(paramLong);; paramLong = 0L) {
      return paramLong + l2 * l1 + i(0L);
    }
  }
  
  private static long i(long paramLong)
  {
    return Long.toHexString(paramLong).length() + 17 + 64 + 2 + paramLong + 2L;
  }
  
  private boolean jC()
    throws IOException
  {
    Object localObject1 = new byte[131072];
    int i = 0;
    Object localObject2;
    if (i < 131072)
    {
      if (this.anl != null)
      {
        localObject2 = this.anl;
        if ((((DecodedStreamBuffer)localObject2).pos != -1) && (((DecodedStreamBuffer)localObject2).pos < ((DecodedStreamBuffer)localObject2).anw)) {}
        for (j = 1;; j = 0)
        {
          if (j == 0) {
            break label100;
          }
          localObject2 = this.anl;
          byte[] arrayOfByte = ((DecodedStreamBuffer)localObject2).anv;
          j = ((DecodedStreamBuffer)localObject2).pos;
          ((DecodedStreamBuffer)localObject2).pos = (j + 1);
          localObject1[i] = arrayOfByte[j];
          i += 1;
          break;
        }
      }
      label100:
      int j = this.ane.read((byte[])localObject1, i, 131072 - i);
      if (j != -1)
      {
        if (this.anl != null)
        {
          localObject2 = this.anl;
          ((DecodedStreamBuffer)localObject2).pos = -1;
          if (((DecodedStreamBuffer)localObject2).anw + j <= ((DecodedStreamBuffer)localObject2).anf) {
            break label210;
          }
          if (DecodedStreamBuffer.alS.isDebugEnabled()) {
            DecodedStreamBuffer.alS.debug("Buffer size " + ((DecodedStreamBuffer)localObject2).anf + " has been exceeded and the input stream will not be repeatable. Freeing buffer memory");
          }
          ((DecodedStreamBuffer)localObject2).anx = true;
        }
        for (;;)
        {
          i = j + i;
          break;
          label210:
          System.arraycopy(localObject1, i, ((DecodedStreamBuffer)localObject2).anv, ((DecodedStreamBuffer)localObject2).anw, j);
          ((DecodedStreamBuffer)localObject2).anw += j;
        }
      }
    }
    if (i == 0)
    {
      this.ank = new ChunkContentIterator(f(and));
      return true;
    }
    if (i < 131072)
    {
      localObject2 = new byte[i];
      System.arraycopy(localObject1, 0, localObject2, 0, i);
      localObject1 = localObject2;
    }
    for (;;)
    {
      this.ank = new ChunkContentIterator(f((byte[])localObject1));
      return false;
    }
  }
  
  public final void mark(int paramInt)
  {
    try
    {
      jH();
      if (!this.anm) {
        throw new UnsupportedOperationException("Chunk-encoded stream only supports mark() at the start of the stream.");
      }
    }
    finally {}
    if (this.ane.markSupported())
    {
      if (alS.isDebugEnabled()) {
        alS.debug("AwsChunkedEncodingInputStream marked at the start of the stream (will directly mark the wrapped stream since it's mark-supported).");
      }
      this.ane.mark(Integer.MAX_VALUE);
    }
    for (;;)
    {
      return;
      if (alS.isDebugEnabled()) {
        alS.debug("AwsChunkedEncodingInputStream marked at the start of the stream (initializing the buffer since the wrapped stream is not mark-supported).");
      }
      this.anl = new DecodedStreamBuffer(this.anf);
    }
  }
  
  public final boolean markSupported()
  {
    return true;
  }
  
  public final int read()
    throws IOException
  {
    byte[] arrayOfByte = new byte[1];
    int j = read(arrayOfByte, 0, 1);
    int i = j;
    if (j != -1)
    {
      if (alS.isDebugEnabled()) {
        alS.debug("One byte read from the stream.");
      }
      i = arrayOfByte[0] & 0xFF;
    }
    return i;
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    int i = -1;
    jH();
    if (paramArrayOfByte == null) {
      throw new NullPointerException();
    }
    if ((paramInt1 < 0) || (paramInt2 < 0) || (paramInt2 > paramArrayOfByte.length - paramInt1)) {
      throw new IndexOutOfBoundsException();
    }
    if (paramInt2 == 0) {
      return 0;
    }
    if ((this.ank == null) || (!this.ank.hasNext()))
    {
      if (this.ann) {
        return -1;
      }
      this.ann = jC();
    }
    ChunkContentIterator localChunkContentIterator = this.ank;
    if (paramInt2 == 0) {
      i = 0;
    }
    for (;;)
    {
      if (i > 0)
      {
        this.anm = false;
        if (alS.isDebugEnabled()) {
          alS.debug(i + " byte read from the stream.");
        }
      }
      return i;
      if (localChunkContentIterator.hasNext())
      {
        i = Math.min(localChunkContentIterator.ans.length - localChunkContentIterator.pos, paramInt2);
        System.arraycopy(localChunkContentIterator.ans, localChunkContentIterator.pos, paramArrayOfByte, paramInt1, i);
        localChunkContentIterator.pos += i;
      }
    }
  }
  
  public final void reset()
    throws IOException
  {
    for (;;)
    {
      try
      {
        jH();
        this.ank = null;
        this.ani = this.anh;
        if (this.ane.markSupported())
        {
          if (alS.isDebugEnabled()) {
            alS.debug("AwsChunkedEncodingInputStream reset (will reset the wrapped stream because it is mark-supported).");
          }
          this.ane.reset();
          this.ank = null;
          this.anm = true;
          this.ann = false;
          return;
        }
        if (alS.isDebugEnabled()) {
          alS.debug("AwsChunkedEncodingInputStream reset (will use the buffer of the decoded stream).");
        }
        if (this.anl == null) {
          throw new IOException("Cannot reset the stream because the mark is not set.");
        }
      }
      finally {}
      DecodedStreamBuffer localDecodedStreamBuffer = this.anl;
      if (localDecodedStreamBuffer.anx) {
        throw new AmazonClientException("The input stream is not repeatable since the buffer size " + localDecodedStreamBuffer.anf + " has been exceeded.");
      }
      localDecodedStreamBuffer.pos = 0;
    }
  }
  
  public final long skip(long paramLong)
    throws IOException
  {
    if (paramLong <= 0L) {
      return 0L;
    }
    int i = (int)Math.min(262144L, paramLong);
    byte[] arrayOfByte = new byte[i];
    int j;
    for (long l = paramLong; l > 0L; l -= j)
    {
      j = read(arrayOfByte, 0, i);
      if (j < 0) {
        break;
      }
    }
    return paramLong - l;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/auth/AwsChunkedEncodingInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */