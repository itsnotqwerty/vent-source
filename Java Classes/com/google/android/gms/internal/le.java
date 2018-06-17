package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.e;
import com.google.android.gms.measurement.AppMeasurement.a;
import com.google.android.gms.measurement.AppMeasurement.e;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import javax.security.auth.x500.X500Principal;

public final class le
  extends iy
{
  private static String[] aXl = { "firebase_" };
  private SecureRandom aXm;
  private final AtomicLong aXn = new AtomicLong(0L);
  private int aXo;
  
  le(hz paramhz)
  {
    super(paramhz);
  }
  
  private final boolean G(String paramString1, String paramString2)
  {
    if (paramString2 == null)
    {
      qP().aTa.j("Name is required and can't be null. Type", paramString1);
      return false;
    }
    if (paramString2.length() == 0)
    {
      qP().aTa.j("Name is required and can't be empty. Type", paramString1);
      return false;
    }
    int i = paramString2.codePointAt(0);
    if ((!Character.isLetter(i)) && (i != 95))
    {
      qP().aTa.e("Name must start with a letter or _ (underscore). Type, name", paramString1, paramString2);
      return false;
    }
    int j = paramString2.length();
    i = Character.charCount(i);
    while (i < j)
    {
      int k = paramString2.codePointAt(i);
      if ((k != 95) && (!Character.isLetterOrDigit(k)))
      {
        qP().aTa.e("Name must consist of letters, digits or _ (underscores). Type, name", paramString1, paramString2);
        return false;
      }
      i += Character.charCount(k);
    }
    return true;
  }
  
  public static boolean H(String paramString1, String paramString2)
  {
    if ((paramString1 == null) && (paramString2 == null)) {
      return true;
    }
    if (paramString1 == null) {
      return false;
    }
    return paramString1.equals(paramString2);
  }
  
  public static Bundle[] U(Object paramObject)
  {
    if ((paramObject instanceof Bundle)) {
      return new Bundle[] { (Bundle)paramObject };
    }
    if ((paramObject instanceof Parcelable[])) {
      return (Bundle[])Arrays.copyOf((Parcelable[])paramObject, ((Parcelable[])paramObject).length, Bundle[].class);
    }
    if ((paramObject instanceof ArrayList))
    {
      paramObject = (ArrayList)paramObject;
      return (Bundle[])((ArrayList)paramObject).toArray(new Bundle[((ArrayList)paramObject).size()]);
    }
    return null;
  }
  
  /* Error */
  public static Object V(Object paramObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: new 120	java/io/ByteArrayOutputStream
    //   9: dup
    //   10: invokespecial 122	java/io/ByteArrayOutputStream:<init>	()V
    //   13: astore_1
    //   14: new 124	java/io/ObjectOutputStream
    //   17: dup
    //   18: aload_1
    //   19: invokespecial 127	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   22: astore_2
    //   23: aload_2
    //   24: aload_0
    //   25: invokevirtual 131	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   28: aload_2
    //   29: invokevirtual 134	java/io/ObjectOutputStream:flush	()V
    //   32: new 136	java/io/ObjectInputStream
    //   35: dup
    //   36: new 138	java/io/ByteArrayInputStream
    //   39: dup
    //   40: aload_1
    //   41: invokevirtual 142	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   44: invokespecial 145	java/io/ByteArrayInputStream:<init>	([B)V
    //   47: invokespecial 148	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   50: astore_1
    //   51: aload_1
    //   52: invokevirtual 152	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   55: astore_0
    //   56: aload_2
    //   57: invokevirtual 155	java/io/ObjectOutputStream:close	()V
    //   60: aload_1
    //   61: invokevirtual 156	java/io/ObjectInputStream:close	()V
    //   64: aload_0
    //   65: areturn
    //   66: aload_2
    //   67: ifnull +7 -> 74
    //   70: aload_2
    //   71: invokevirtual 155	java/io/ObjectOutputStream:close	()V
    //   74: aload_1
    //   75: ifnull +7 -> 82
    //   78: aload_1
    //   79: invokevirtual 156	java/io/ObjectInputStream:close	()V
    //   82: aload_0
    //   83: athrow
    //   84: astore_0
    //   85: aconst_null
    //   86: areturn
    //   87: astore_0
    //   88: aconst_null
    //   89: areturn
    //   90: astore_0
    //   91: aconst_null
    //   92: astore_1
    //   93: goto -27 -> 66
    //   96: astore_0
    //   97: goto -31 -> 66
    //   100: astore_0
    //   101: aconst_null
    //   102: astore_1
    //   103: aconst_null
    //   104: astore_2
    //   105: goto -39 -> 66
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	108	0	paramObject	Object
    //   13	90	1	localObject	Object
    //   22	83	2	localObjectOutputStream	java.io.ObjectOutputStream
    // Exception table:
    //   from	to	target	type
    //   56	64	84	java/io/IOException
    //   70	74	84	java/io/IOException
    //   78	82	84	java/io/IOException
    //   82	84	84	java/io/IOException
    //   56	64	87	java/lang/ClassNotFoundException
    //   70	74	87	java/lang/ClassNotFoundException
    //   78	82	87	java/lang/ClassNotFoundException
    //   82	84	87	java/lang/ClassNotFoundException
    //   23	51	90	finally
    //   51	56	96	finally
    //   6	23	100	finally
  }
  
  private final int a(String paramString, Object paramObject, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      int i;
      if ((paramObject instanceof Parcelable[]))
      {
        i = ((Parcelable[])paramObject).length;
        if (i <= 1000) {
          break label82;
        }
        qP().aTd.d("Parameter array is too long; discarded. Value kind, name, array length", "param", paramString, Integer.valueOf(i));
        i = 0;
      }
      for (;;)
      {
        if (i != 0) {
          break label88;
        }
        return 17;
        if ((paramObject instanceof ArrayList))
        {
          i = ((ArrayList)paramObject).size();
          break;
        }
        i = 1;
        continue;
        label82:
        i = 1;
      }
    }
    label88:
    if (cD(paramString)) {}
    for (paramBoolean = a("param", paramString, 256, paramObject, paramBoolean); paramBoolean; paramBoolean = a("param", paramString, 100, paramObject, paramBoolean)) {
      return 0;
    }
    return 4;
  }
  
  public static ls a(lr paramlr, String paramString)
  {
    paramlr = paramlr.aYh;
    int j = paramlr.length;
    int i = 0;
    while (i < j)
    {
      ls localls = paramlr[i];
      if (localls.name.equals(paramString)) {
        return localls;
      }
      i += 1;
    }
    return null;
  }
  
  private static Object a(int paramInt, Object paramObject, boolean paramBoolean)
  {
    Object localObject;
    if (paramObject == null) {
      localObject = null;
    }
    do
    {
      do
      {
        return localObject;
        localObject = paramObject;
      } while ((paramObject instanceof Long));
      localObject = paramObject;
    } while ((paramObject instanceof Double));
    if ((paramObject instanceof Integer)) {
      return Long.valueOf(((Integer)paramObject).intValue());
    }
    if ((paramObject instanceof Byte)) {
      return Long.valueOf(((Byte)paramObject).byteValue());
    }
    if ((paramObject instanceof Short)) {
      return Long.valueOf(((Short)paramObject).shortValue());
    }
    if ((paramObject instanceof Boolean))
    {
      if (((Boolean)paramObject).booleanValue()) {}
      for (long l = 1L;; l = 0L) {
        return Long.valueOf(l);
      }
    }
    if ((paramObject instanceof Float)) {
      return Double.valueOf(((Float)paramObject).doubleValue());
    }
    if (((paramObject instanceof String)) || ((paramObject instanceof Character)) || ((paramObject instanceof CharSequence))) {
      return a(String.valueOf(paramObject), paramInt, paramBoolean);
    }
    return null;
  }
  
  public static String a(String paramString, int paramInt, boolean paramBoolean)
  {
    String str = paramString;
    if (paramString.codePointCount(0, paramString.length()) > paramInt)
    {
      if (paramBoolean) {
        str = String.valueOf(paramString.substring(0, paramString.offsetByCodePoints(0, paramInt))).concat("...");
      }
    }
    else {
      return str;
    }
    return null;
  }
  
  public static String a(String paramString, String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    ae.E(paramArrayOfString1);
    ae.E(paramArrayOfString2);
    int j = Math.min(paramArrayOfString1.length, paramArrayOfString2.length);
    int i = 0;
    while (i < j)
    {
      if (H(paramString, paramArrayOfString1[i])) {
        return paramArrayOfString2[i];
      }
      i += 1;
    }
    return null;
  }
  
  private static void a(Bundle paramBundle, Object paramObject)
  {
    ae.E(paramBundle);
    if ((paramObject != null) && (((paramObject instanceof String)) || ((paramObject instanceof CharSequence)))) {
      paramBundle.putLong("_el", String.valueOf(paramObject).length());
    }
  }
  
  private final boolean a(String paramString1, String paramString2, int paramInt, Object paramObject, boolean paramBoolean)
  {
    if (paramObject == null) {}
    do
    {
      int i;
      while (paramInt >= i)
      {
        for (;;)
        {
          return true;
          if ((!(paramObject instanceof Long)) && (!(paramObject instanceof Float)) && (!(paramObject instanceof Integer)) && (!(paramObject instanceof Byte)) && (!(paramObject instanceof Short)) && (!(paramObject instanceof Boolean)) && (!(paramObject instanceof Double))) {
            if (((paramObject instanceof String)) || ((paramObject instanceof Character)) || ((paramObject instanceof CharSequence)))
            {
              paramObject = String.valueOf(paramObject);
              if (((String)paramObject).codePointCount(0, ((String)paramObject).length()) > paramInt)
              {
                qP().aTd.d("Value is too long; discarded. Value kind, name, value length", paramString1, paramString2, Integer.valueOf(((String)paramObject).length()));
                return false;
              }
            }
            else if ((!(paramObject instanceof Bundle)) || (!paramBoolean))
            {
              if ((!(paramObject instanceof Parcelable[])) || (!paramBoolean)) {
                break;
              }
              paramString1 = (Parcelable[])paramObject;
              i = paramString1.length;
              paramInt = 0;
              while (paramInt < i)
              {
                paramObject = paramString1[paramInt];
                if (!(paramObject instanceof Bundle))
                {
                  qP().aTd.e("All Parcelable[] elements must be of type Bundle. Value type, name", paramObject.getClass(), paramString2);
                  return false;
                }
                paramInt += 1;
              }
            }
          }
        }
        if ((!(paramObject instanceof ArrayList)) || (!paramBoolean)) {
          break;
        }
        paramString1 = (ArrayList)paramObject;
        i = paramString1.size();
        paramInt = 0;
      }
      paramObject = paramString1.get(paramInt);
      paramInt += 1;
    } while ((paramObject instanceof Bundle));
    qP().aTd.e("All ArrayList elements must be of type Bundle. Value type, name", paramObject.getClass(), paramString2);
    return false;
    return false;
  }
  
  public static boolean a(long[] paramArrayOfLong, int paramInt)
  {
    if (paramInt >= paramArrayOfLong.length << 6) {}
    while ((paramArrayOfLong[(paramInt / 64)] & 1L << paramInt % 64) == 0L) {
      return false;
    }
    return true;
  }
  
  static byte[] a(Parcelable paramParcelable)
  {
    if (paramParcelable == null) {
      return null;
    }
    Parcel localParcel = Parcel.obtain();
    try
    {
      paramParcelable.writeToParcel(localParcel, 0);
      paramParcelable = localParcel.marshall();
      return paramParcelable;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public static long[] a(BitSet paramBitSet)
  {
    int k = (paramBitSet.length() + 63) / 64;
    long[] arrayOfLong = new long[k];
    int i = 0;
    while (i < k)
    {
      arrayOfLong[i] = 0L;
      int j = 0;
      while ((j < 64) && ((i << 6) + j < paramBitSet.length()))
      {
        if (paramBitSet.get((i << 6) + j)) {
          arrayOfLong[i] |= 1L << j;
        }
        j += 1;
      }
      i += 1;
    }
    return arrayOfLong;
  }
  
  static ls[] a(ls[] paramArrayOfls, String paramString, Object paramObject)
  {
    int j = paramArrayOfls.length;
    int i = 0;
    while (i < j)
    {
      localObject = paramArrayOfls[i];
      if (paramString.equals(((ls)localObject).name))
      {
        ((ls)localObject).aYl = null;
        ((ls)localObject).aTr = null;
        ((ls)localObject).aXk = null;
        if ((paramObject instanceof Long)) {
          ((ls)localObject).aYl = ((Long)paramObject);
        }
        do
        {
          return paramArrayOfls;
          if ((paramObject instanceof String))
          {
            ((ls)localObject).aTr = ((String)paramObject);
            return paramArrayOfls;
          }
        } while (!(paramObject instanceof Double));
        ((ls)localObject).aXk = ((Double)paramObject);
        return paramArrayOfls;
      }
      i += 1;
    }
    Object localObject = new ls[paramArrayOfls.length + 1];
    System.arraycopy(paramArrayOfls, 0, localObject, 0, paramArrayOfls.length);
    ls localls = new ls();
    localls.name = paramString;
    if ((paramObject instanceof Long)) {
      localls.aYl = ((Long)paramObject);
    }
    for (;;)
    {
      localObject[paramArrayOfls.length] = localls;
      return (ls[])localObject;
      if ((paramObject instanceof String)) {
        localls.aTr = ((String)paramObject);
      } else if ((paramObject instanceof Double)) {
        localls.aXk = ((Double)paramObject);
      }
    }
  }
  
  public static Object b(lr paramlr, String paramString)
  {
    paramlr = a(paramlr, paramString);
    if (paramlr != null)
    {
      if (paramlr.aTr != null) {
        return paramlr.aTr;
      }
      if (paramlr.aYl != null) {
        return paramlr.aYl;
      }
      if (paramlr.aXk != null) {
        return paramlr.aXk;
      }
    }
    return null;
  }
  
  private static boolean b(Bundle paramBundle, int paramInt)
  {
    if (paramBundle.getLong("_err") == 0L)
    {
      paramBundle.putLong("_err", paramInt);
      return true;
    }
    return false;
  }
  
  static MessageDigest bi(String paramString)
  {
    int i = 0;
    while (i < 2) {
      try
      {
        MessageDigest localMessageDigest = MessageDigest.getInstance(paramString);
        if (localMessageDigest != null) {
          return localMessageDigest;
        }
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        i += 1;
      }
    }
    return null;
  }
  
  private final int cA(String paramString)
  {
    if (!G("event param", paramString)) {}
    do
    {
      return 3;
      if (!a("event param", null, paramString)) {
        return 14;
      }
    } while (!a("event param", 40, paramString));
    return 0;
  }
  
  private static int cC(String paramString)
  {
    if ("_ldl".equals(paramString)) {
      return 2048;
    }
    if ("_id".equals(paramString)) {
      return 256;
    }
    return 36;
  }
  
  public static boolean cD(String paramString)
  {
    return (!TextUtils.isEmpty(paramString)) && (paramString.startsWith("_"));
  }
  
  static boolean cF(String paramString)
  {
    return (paramString != null) && (paramString.matches("(\\+|-)?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)")) && (paramString.length() <= 310);
  }
  
  static boolean cI(String paramString)
  {
    boolean bool = true;
    ae.bf(paramString);
    int i = -1;
    switch (paramString.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        bool = false;
      }
      return bool;
      if (paramString.equals("_in"))
      {
        i = 0;
        continue;
        if (paramString.equals("_ui"))
        {
          i = 1;
          continue;
          if (paramString.equals("_ug")) {
            i = 2;
          }
        }
      }
    }
  }
  
  static boolean cw(String paramString)
  {
    boolean bool = false;
    ae.bf(paramString);
    if ((paramString.charAt(0) != '_') || (paramString.equals("_ep"))) {
      bool = true;
    }
    return bool;
  }
  
  private final int cz(String paramString)
  {
    if (!F("event param", paramString)) {}
    do
    {
      return 3;
      if (!a("event param", null, paramString)) {
        return 14;
      }
    } while (!a("event param", 40, paramString));
    return 0;
  }
  
  public static boolean d(Intent paramIntent)
  {
    paramIntent = paramIntent.getStringExtra("android.intent.extra.REFERRER_NAME");
    return ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(paramIntent)) || ("https://www.google.com".equals(paramIntent)) || ("android-app://com.google.appcrawler".equals(paramIntent));
  }
  
  static boolean d(gp paramgp, fx paramfx)
  {
    ae.E(paramgp);
    ae.E(paramfx);
    return !TextUtils.isEmpty(paramfx.aQz);
  }
  
  public static Object k(String paramString, Object paramObject)
  {
    int i = 256;
    if ("_ev".equals(paramString)) {
      return a(256, paramObject, true);
    }
    if (cD(paramString)) {}
    for (;;)
    {
      return a(i, paramObject, false);
      i = 100;
    }
  }
  
  public static Object m(String paramString, Object paramObject)
  {
    if ("_ldl".equals(paramString)) {
      return a(cC(paramString), paramObject, true);
    }
    return a(cC(paramString), paramObject, false);
  }
  
  public static boolean n(Context paramContext, String paramString)
  {
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      if (localPackageManager == null) {
        return false;
      }
      paramContext = localPackageManager.getServiceInfo(new ComponentName(paramContext, paramString), 0);
      if (paramContext != null)
      {
        boolean bool = paramContext.enabled;
        if (bool) {
          return true;
        }
      }
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  static long p(byte[] paramArrayOfByte)
  {
    int j = 0;
    ae.E(paramArrayOfByte);
    if (paramArrayOfByte.length > 0) {}
    long l;
    for (boolean bool = true;; bool = false)
    {
      ae.at(bool);
      l = 0L;
      int i = paramArrayOfByte.length - 1;
      while ((i >= 0) && (i >= paramArrayOfByte.length - 8))
      {
        l += ((paramArrayOfByte[i] & 0xFF) << j);
        j += 8;
        i -= 1;
      }
    }
    return l;
  }
  
  private final boolean p(Context paramContext, String paramString)
  {
    X500Principal localX500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
    try
    {
      paramContext = ee.ag(paramContext).getPackageInfo(paramString, 64);
      if ((paramContext != null) && (paramContext.signatures != null) && (paramContext.signatures.length > 0))
      {
        paramContext = paramContext.signatures[0];
        boolean bool = ((X509Certificate)CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(paramContext.toByteArray()))).getSubjectX500Principal().equals(localX500Principal);
        return bool;
      }
    }
    catch (CertificateException paramContext)
    {
      qP().aTa.j("Error obtaining certificate", paramContext);
      return true;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        qP().aTa.j("Package name not found", paramContext);
      }
    }
  }
  
  public final boolean F(String paramString1, String paramString2)
  {
    if (paramString2 == null)
    {
      qP().aTa.j("Name is required and can't be null. Type", paramString1);
      return false;
    }
    if (paramString2.length() == 0)
    {
      qP().aTa.j("Name is required and can't be empty. Type", paramString1);
      return false;
    }
    int i = paramString2.codePointAt(0);
    if (!Character.isLetter(i))
    {
      qP().aTa.e("Name must start with a letter. Type, name", paramString1, paramString2);
      return false;
    }
    int j = paramString2.length();
    i = Character.charCount(i);
    while (i < j)
    {
      int k = paramString2.codePointAt(i);
      if ((k != 95) && (!Character.isLetterOrDigit(k)))
      {
        qP().aTa.e("Name must consist of letters, digits or _ (underscores). Type, name", paramString1, paramString2);
        return false;
      }
      i += Character.charCount(k);
    }
    return true;
  }
  
  public final Bundle a(String paramString, Bundle paramBundle, List<String> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    Bundle localBundle = null;
    if (paramBundle != null)
    {
      localBundle = new Bundle(paramBundle);
      Iterator localIterator = paramBundle.keySet().iterator();
      int i = 0;
      while (localIterator.hasNext())
      {
        String str1 = (String)localIterator.next();
        int j = 0;
        int k = 0;
        if ((paramList == null) || (!paramList.contains(str1)))
        {
          if (paramBoolean1) {
            k = cz(str1);
          }
          j = k;
          if (k == 0) {
            j = cA(str1);
          }
        }
        if (j != 0)
        {
          if (b(localBundle, j))
          {
            localBundle.putString("_ev", a(str1, 40, true));
            if (j == 3) {
              a(localBundle, str1);
            }
          }
          localBundle.remove(str1);
        }
        else
        {
          j = a(str1, paramBundle.get(str1), paramBoolean2);
          if ((j != 0) && (!"_ev".equals(str1)))
          {
            if (b(localBundle, j))
            {
              localBundle.putString("_ev", a(str1, 40, true));
              a(localBundle, paramBundle.get(str1));
            }
            localBundle.remove(str1);
          }
          else
          {
            j = i;
            if (cw(str1))
            {
              i += 1;
              j = i;
              if (i > 25)
              {
                String str2 = 48 + "Event can't contain more than 25 params";
                qP().aTa.e(str2, qK().ch(paramString), qK().j(paramBundle));
                b(localBundle, 5);
                localBundle.remove(str1);
                continue;
              }
            }
            i = j;
          }
        }
      }
    }
    return localBundle;
  }
  
  final <T extends Parcelable> T a(byte[] paramArrayOfByte, Parcelable.Creator<T> paramCreator)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.unmarshall(paramArrayOfByte, 0, paramArrayOfByte.length);
      localParcel.setDataPosition(0);
      paramArrayOfByte = (Parcelable)paramCreator.createFromParcel(localParcel);
      return paramArrayOfByte;
    }
    catch (dt paramArrayOfByte)
    {
      qP().aTa.bq("Failed to load parcelable from buffer");
      return null;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  final gp a(String paramString1, Bundle paramBundle, String paramString2, long paramLong)
  {
    if (TextUtils.isEmpty(paramString1)) {
      return null;
    }
    if (cx(paramString1) != 0)
    {
      qP().aTa.j("Invalid conditional property event name", qK().cj(paramString1));
      throw new IllegalArgumentException();
    }
    if (paramBundle != null) {}
    for (paramBundle = new Bundle(paramBundle);; paramBundle = new Bundle())
    {
      paramBundle.putString("_o", paramString2);
      return new gp(paramString1, new gm(k(a(paramString1, paramBundle, Collections.singletonList("_o"), false, false))), paramString2, paramLong);
    }
  }
  
  public final void a(int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    b(paramInt1, paramString1, paramString2, paramInt2);
  }
  
  public final void a(Bundle paramBundle, String paramString, Object paramObject)
  {
    if (paramBundle == null) {}
    do
    {
      return;
      if ((paramObject instanceof Long))
      {
        paramBundle.putLong(paramString, ((Long)paramObject).longValue());
        return;
      }
      if ((paramObject instanceof String))
      {
        paramBundle.putString(paramString, String.valueOf(paramObject));
        return;
      }
      if ((paramObject instanceof Double))
      {
        paramBundle.putDouble(paramString, ((Double)paramObject).doubleValue());
        return;
      }
    } while (paramString == null);
    if (paramObject != null) {}
    for (paramBundle = paramObject.getClass().getSimpleName();; paramBundle = null)
    {
      qP().aTf.e("Not putting event parameter. Invalid value type. name, type", qK().ci(paramString), paramBundle);
      return;
    }
  }
  
  public final void a(ls paramls, Object paramObject)
  {
    ae.E(paramObject);
    paramls.aTr = null;
    paramls.aYl = null;
    paramls.aXk = null;
    if ((paramObject instanceof String))
    {
      paramls.aTr = ((String)paramObject);
      return;
    }
    if ((paramObject instanceof Long))
    {
      paramls.aYl = ((Long)paramObject);
      return;
    }
    if ((paramObject instanceof Double))
    {
      paramls.aXk = ((Double)paramObject);
      return;
    }
    qP().aTa.j("Ignoring invalid (type) event param value", paramObject);
  }
  
  public final void a(lw paramlw, Object paramObject)
  {
    ae.E(paramObject);
    paramlw.aTr = null;
    paramlw.aYl = null;
    paramlw.aXk = null;
    if ((paramObject instanceof String))
    {
      paramlw.aTr = ((String)paramObject);
      return;
    }
    if ((paramObject instanceof Long))
    {
      paramlw.aYl = ((Long)paramObject);
      return;
    }
    if ((paramObject instanceof Double))
    {
      paramlw.aXk = ((Double)paramObject);
      return;
    }
    qP().aTa.j("Ignoring invalid (type) user attribute value", paramObject);
  }
  
  public final boolean a(String paramString1, int paramInt, String paramString2)
  {
    if (paramString2 == null)
    {
      qP().aTa.j("Name is required and can't be null. Type", paramString1);
      return false;
    }
    if (paramString2.codePointCount(0, paramString2.length()) > paramInt)
    {
      qP().aTa.d("Name is too long. Type, maximum supported length, name", paramString1, Integer.valueOf(paramInt), paramString2);
      return false;
    }
    return true;
  }
  
  public final boolean a(String paramString1, String[] paramArrayOfString, String paramString2)
  {
    if (paramString2 == null)
    {
      qP().aTa.j("Name is required and can't be null. Type", paramString1);
      return false;
    }
    ae.E(paramString2);
    int i = 0;
    if (i < aXl.length) {
      if (!paramString2.startsWith(aXl[i])) {}
    }
    for (i = 1;; i = 0)
    {
      if (i == 0) {
        break label89;
      }
      qP().aTa.e("Name starts with reserved prefix. Type, name", paramString1, paramString2);
      return false;
      i += 1;
      break;
    }
    label89:
    if (paramArrayOfString != null)
    {
      ae.E(paramArrayOfString);
      i = 0;
      if (i < paramArrayOfString.length) {
        if (!H(paramString2, paramArrayOfString[i])) {}
      }
      for (i = 1;; i = 0)
      {
        if (i == 0) {
          break label159;
        }
        qP().aTa.e("Name is reserved. Type, name", paramString1, paramString2);
        return false;
        i += 1;
        break;
      }
    }
    label159:
    return true;
  }
  
  public final void b(int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    Bundle localBundle = new Bundle();
    b(localBundle, paramInt1);
    if (!TextUtils.isEmpty(paramString1)) {
      localBundle.putString(paramString1, paramString2);
    }
    if ((paramInt1 == 6) || (paramInt1 == 7) || (paramInt1 == 2)) {
      localBundle.putLong("_el", paramInt2);
    }
    this.zzjev.qC().a("auto", "_err", localBundle);
  }
  
  public final byte[] b(lt paramlt)
  {
    try
    {
      byte[] arrayOfByte = new byte[paramlt.sZ()];
      mv localmv = mv.b(arrayOfByte, arrayOfByte.length);
      paramlt.a(localmv);
      localmv.sR();
      return arrayOfByte;
    }
    catch (IOException paramlt)
    {
      qP().aTa.j("Data loss. Failed to serialize batch", paramlt);
    }
    return null;
  }
  
  public final boolean bE(String paramString)
  {
    mN();
    if (ee.ag(getContext()).checkCallingOrSelfPermission(paramString) == 0) {
      return true;
    }
    qP().aTh.j("Permission not granted", paramString);
    return false;
  }
  
  public final boolean c(long paramLong1, long paramLong2)
  {
    if ((paramLong1 == 0L) || (paramLong2 <= 0L)) {}
    while (Math.abs(qH().currentTimeMillis() - paramLong1) > paramLong2) {
      return true;
    }
    return false;
  }
  
  public final boolean cB(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      qP().aTa.bq("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
      return false;
    }
    ae.E(paramString);
    if (!paramString.matches("^1:\\d+:android:[a-f0-9]+$"))
    {
      qP().aTa.j("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", paramString);
      return false;
    }
    return true;
  }
  
  public final boolean cE(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    return qR().rm().equals(paramString);
  }
  
  final boolean cG(String paramString)
  {
    return "1".equals(qM().B(paramString, "measurement.upload.blacklist_internal"));
  }
  
  final boolean cH(String paramString)
  {
    return "1".equals(qM().B(paramString, "measurement.upload.blacklist_public"));
  }
  
  public final int cx(String paramString)
  {
    if (!G("event", paramString)) {}
    do
    {
      return 2;
      if (!a("event", AppMeasurement.a.bdL, paramString)) {
        return 13;
      }
    } while (!a("event", 40, paramString));
    return 0;
  }
  
  public final int cy(String paramString)
  {
    if (!G("user property", paramString)) {}
    do
    {
      return 6;
      if (!a("user property", AppMeasurement.e.bdP, paramString)) {
        return 15;
      }
    } while (!a("user property", 24, paramString));
    return 0;
  }
  
  public final Bundle j(Uri paramUri)
  {
    Object localObject = null;
    if (paramUri == null) {
      return (Bundle)localObject;
    }
    for (;;)
    {
      try
      {
        if (paramUri.isHierarchical())
        {
          str4 = paramUri.getQueryParameter("utm_campaign");
          str3 = paramUri.getQueryParameter("utm_source");
          str2 = paramUri.getQueryParameter("utm_medium");
          str1 = paramUri.getQueryParameter("gclid");
          if ((TextUtils.isEmpty(str4)) && (TextUtils.isEmpty(str3)) && (TextUtils.isEmpty(str2)) && (TextUtils.isEmpty(str1))) {
            break;
          }
          Bundle localBundle = new Bundle();
          if (!TextUtils.isEmpty(str4)) {
            localBundle.putString("campaign", str4);
          }
          if (!TextUtils.isEmpty(str3)) {
            localBundle.putString("source", str3);
          }
          if (!TextUtils.isEmpty(str2)) {
            localBundle.putString("medium", str2);
          }
          if (!TextUtils.isEmpty(str1)) {
            localBundle.putString("gclid", str1);
          }
          str1 = paramUri.getQueryParameter("utm_term");
          if (!TextUtils.isEmpty(str1)) {
            localBundle.putString("term", str1);
          }
          str1 = paramUri.getQueryParameter("utm_content");
          if (!TextUtils.isEmpty(str1)) {
            localBundle.putString("content", str1);
          }
          str1 = paramUri.getQueryParameter("aclid");
          if (!TextUtils.isEmpty(str1)) {
            localBundle.putString("aclid", str1);
          }
          str1 = paramUri.getQueryParameter("cp1");
          if (!TextUtils.isEmpty(str1)) {
            localBundle.putString("cp1", str1);
          }
          paramUri = paramUri.getQueryParameter("anid");
          localObject = localBundle;
          if (TextUtils.isEmpty(paramUri)) {
            break;
          }
          localBundle.putString("anid", paramUri);
          return localBundle;
        }
      }
      catch (UnsupportedOperationException paramUri)
      {
        qP().aTd.j("Install referrer url isn't a hierarchical URI", paramUri);
        return null;
      }
      String str1 = null;
      String str2 = null;
      String str3 = null;
      String str4 = null;
    }
  }
  
  final Bundle k(Bundle paramBundle)
  {
    Bundle localBundle = new Bundle();
    if (paramBundle != null)
    {
      Iterator localIterator = paramBundle.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        Object localObject = k(str, paramBundle.get(str));
        if (localObject == null) {
          qP().aTd.j("Param value can't be null", qK().ci(str));
        } else {
          a(localBundle, str, localObject);
        }
      }
    }
    return localBundle;
  }
  
  public final int l(String paramString, Object paramObject)
  {
    if ("_ldl".equals(paramString)) {}
    for (boolean bool = a("user property referrer", paramString, cC(paramString), paramObject, false); bool; bool = a("user property", paramString, cC(paramString), paramObject, false)) {
      return 0;
    }
    return 7;
  }
  
  public final byte[] n(byte[] paramArrayOfByte)
    throws IOException
  {
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
      localGZIPOutputStream.write(paramArrayOfByte);
      localGZIPOutputStream.close();
      localByteArrayOutputStream.close();
      paramArrayOfByte = localByteArrayOutputStream.toByteArray();
      return paramArrayOfByte;
    }
    catch (IOException paramArrayOfByte)
    {
      qP().aTa.j("Failed to gzip content", paramArrayOfByte);
      throw paramArrayOfByte;
    }
  }
  
  final long o(Context paramContext, String paramString)
  {
    mN();
    ae.E(paramContext);
    ae.bf(paramString);
    PackageManager localPackageManager = paramContext.getPackageManager();
    MessageDigest localMessageDigest = bi("MD5");
    if (localMessageDigest == null)
    {
      qP().aTa.bq("Could not get MD5 instance");
      return -1L;
    }
    if (localPackageManager != null) {
      try
      {
        if (!p(paramContext, paramString))
        {
          paramContext = ee.ag(paramContext).getPackageInfo(getContext().getPackageName(), 64);
          if ((paramContext.signatures != null) && (paramContext.signatures.length > 0)) {
            return p(localMessageDigest.digest(paramContext.signatures[0].toByteArray()));
          }
          qP().aTd.bq("Could not get signatures");
          return -1L;
        }
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        qP().aTa.j("Package name not found", paramContext);
      }
    }
    return 0L;
  }
  
  public final byte[] o(byte[] paramArrayOfByte)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream;
    try
    {
      paramArrayOfByte = new ByteArrayInputStream(paramArrayOfByte);
      GZIPInputStream localGZIPInputStream = new GZIPInputStream(paramArrayOfByte);
      localByteArrayOutputStream = new ByteArrayOutputStream();
      byte[] arrayOfByte = new byte['Ѐ'];
      for (;;)
      {
        int i = localGZIPInputStream.read(arrayOfByte);
        if (i <= 0) {
          break;
        }
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
      localGZIPInputStream.close();
    }
    catch (IOException paramArrayOfByte)
    {
      qP().aTa.j("Failed to ungzip content", paramArrayOfByte);
      throw paramArrayOfByte;
    }
    paramArrayOfByte.close();
    paramArrayOfByte = localByteArrayOutputStream.toByteArray();
    return paramArrayOfByte;
  }
  
  protected final void rC()
  {
    mN();
    SecureRandom localSecureRandom = new SecureRandom();
    long l2 = localSecureRandom.nextLong();
    long l1 = l2;
    if (l2 == 0L)
    {
      l2 = localSecureRandom.nextLong();
      l1 = l2;
      if (l2 == 0L)
      {
        qP().aTd.bq("Utils falling back to Random for random id");
        l1 = l2;
      }
    }
    this.aXn.set(l1);
  }
  
  protected final boolean ri()
  {
    return true;
  }
  
  public final long sq()
  {
    long l1;
    if (this.aXn.get() == 0L) {
      synchronized (this.aXn)
      {
        l1 = new Random(System.nanoTime() ^ qH().currentTimeMillis()).nextLong();
        int i = this.aXo + 1;
        this.aXo = i;
        long l2 = i;
        return l1 + l2;
      }
    }
    synchronized (this.aXn)
    {
      this.aXn.compareAndSet(-1L, 1L);
      l1 = this.aXn.getAndIncrement();
      return l1;
    }
  }
  
  final SecureRandom sr()
  {
    mN();
    if (this.aXm == null) {
      this.aXm = new SecureRandom();
    }
    return this.aXm;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/le.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */