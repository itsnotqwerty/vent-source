package com.google.android.gms.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import javax.net.ssl.SSLSocketFactory;

public final class hf
  extends iy
{
  final SSLSocketFactory sslSocketFactory;
  
  public hf(hz paramhz)
  {
    super(paramhz);
    if (Build.VERSION.SDK_INT < 19) {}
    for (paramhz = new lf();; paramhz = null)
    {
      this.sslSocketFactory = paramhz;
      return;
    }
  }
  
  static byte[] b(HttpURLConnection paramHttpURLConnection)
    throws IOException
  {
    byte[] arrayOfByte = null;
    Object localObject = arrayOfByte;
    ByteArrayOutputStream localByteArrayOutputStream;
    try
    {
      localByteArrayOutputStream = new ByteArrayOutputStream();
      localObject = arrayOfByte;
      paramHttpURLConnection = paramHttpURLConnection.getInputStream();
      localObject = paramHttpURLConnection;
      arrayOfByte = new byte['Ѐ'];
      for (;;)
      {
        localObject = paramHttpURLConnection;
        int i = paramHttpURLConnection.read(arrayOfByte);
        if (i <= 0) {
          break;
        }
        localObject = paramHttpURLConnection;
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
      localObject = paramHttpURLConnection;
    }
    finally
    {
      if (localObject != null) {
        ((InputStream)localObject).close();
      }
    }
    arrayOfByte = localByteArrayOutputStream.toByteArray();
    if (paramHttpURLConnection != null) {
      paramHttpURLConnection.close();
    }
    return arrayOfByte;
  }
  
  public final boolean qe()
  {
    pf();
    Object localObject1 = (ConnectivityManager)getContext().getSystemService("connectivity");
    try
    {
      localObject1 = ((ConnectivityManager)localObject1).getActiveNetworkInfo();
      if ((localObject1 != null) && (((NetworkInfo)localObject1).isConnected())) {
        return true;
      }
    }
    catch (SecurityException localSecurityException)
    {
      for (;;)
      {
        Object localObject2 = null;
      }
    }
    return false;
  }
  
  protected final boolean ri()
  {
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/hf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */