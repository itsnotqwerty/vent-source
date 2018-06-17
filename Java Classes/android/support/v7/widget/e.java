package android.support.v7.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlSerializer;

class e
  extends DataSetObservable
{
  static final String JS = e.class.getSimpleName();
  private static final Object UO = new Object();
  private static final Map<String, e> UP = new HashMap();
  private Intent AI;
  final Object UQ;
  final List<a> UR;
  private final List<c> US;
  final String UT;
  private b UU;
  private int UV;
  boolean UW;
  private boolean UX;
  private boolean UY;
  private boolean UZ;
  private d Va;
  final Context mContext;
  
  private boolean fR()
  {
    if ((this.UU != null) && (this.AI != null) && (!this.UR.isEmpty()) && (!this.US.isEmpty()))
    {
      Collections.unmodifiableList(this.US);
      return true;
    }
    return false;
  }
  
  private void fS()
  {
    int j = this.US.size() - this.UV;
    if (j <= 0) {}
    for (;;)
    {
      return;
      this.UY = true;
      int i = 0;
      while (i < j)
      {
        this.US.remove(0);
        i += 1;
      }
    }
  }
  
  /* Error */
  private void fT()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 114	android/support/v7/widget/e:mContext	Landroid/content/Context;
    //   4: aload_0
    //   5: getfield 116	android/support/v7/widget/e:UT	Ljava/lang/String;
    //   8: invokevirtual 122	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   11: astore_2
    //   12: invokestatic 128	android/util/Xml:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   15: astore_3
    //   16: aload_3
    //   17: aload_2
    //   18: ldc -126
    //   20: invokeinterface 136 3 0
    //   25: iconst_0
    //   26: istore_1
    //   27: iload_1
    //   28: iconst_1
    //   29: if_icmpeq +18 -> 47
    //   32: iload_1
    //   33: iconst_2
    //   34: if_icmpeq +13 -> 47
    //   37: aload_3
    //   38: invokeinterface 139 1 0
    //   43: istore_1
    //   44: goto -17 -> 27
    //   47: ldc -115
    //   49: aload_3
    //   50: invokeinterface 144 1 0
    //   55: invokevirtual 150	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   58: ifne +50 -> 108
    //   61: new 110	org/xmlpull/v1/XmlPullParserException
    //   64: dup
    //   65: ldc -104
    //   67: invokespecial 155	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   70: athrow
    //   71: astore_3
    //   72: getstatic 58	android/support/v7/widget/e:JS	Ljava/lang/String;
    //   75: new 157	java/lang/StringBuilder
    //   78: dup
    //   79: ldc -97
    //   81: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   84: aload_0
    //   85: getfield 116	android/support/v7/widget/e:UT	Ljava/lang/String;
    //   88: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   94: aload_3
    //   95: invokestatic 172	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   98: pop
    //   99: aload_2
    //   100: ifnull +7 -> 107
    //   103: aload_2
    //   104: invokevirtual 177	java/io/FileInputStream:close	()V
    //   107: return
    //   108: aload_0
    //   109: getfield 86	android/support/v7/widget/e:US	Ljava/util/List;
    //   112: astore 4
    //   114: aload 4
    //   116: invokeinterface 180 1 0
    //   121: aload_3
    //   122: invokeinterface 139 1 0
    //   127: istore_1
    //   128: iload_1
    //   129: iconst_1
    //   130: if_icmpeq +138 -> 268
    //   133: iload_1
    //   134: iconst_3
    //   135: if_icmpeq -14 -> 121
    //   138: iload_1
    //   139: iconst_4
    //   140: if_icmpeq -19 -> 121
    //   143: ldc -74
    //   145: aload_3
    //   146: invokeinterface 144 1 0
    //   151: invokevirtual 150	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   154: ifne +52 -> 206
    //   157: new 110	org/xmlpull/v1/XmlPullParserException
    //   160: dup
    //   161: ldc -72
    //   163: invokespecial 155	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   166: athrow
    //   167: astore_3
    //   168: getstatic 58	android/support/v7/widget/e:JS	Ljava/lang/String;
    //   171: new 157	java/lang/StringBuilder
    //   174: dup
    //   175: ldc -97
    //   177: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   180: aload_0
    //   181: getfield 116	android/support/v7/widget/e:UT	Ljava/lang/String;
    //   184: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   190: aload_3
    //   191: invokestatic 172	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   194: pop
    //   195: aload_2
    //   196: ifnull -89 -> 107
    //   199: aload_2
    //   200: invokevirtual 177	java/io/FileInputStream:close	()V
    //   203: return
    //   204: astore_2
    //   205: return
    //   206: aload 4
    //   208: new 12	android/support/v7/widget/e$c
    //   211: dup
    //   212: aload_3
    //   213: aconst_null
    //   214: ldc -70
    //   216: invokeinterface 190 3 0
    //   221: aload_3
    //   222: aconst_null
    //   223: ldc -64
    //   225: invokeinterface 190 3 0
    //   230: invokestatic 198	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   233: aload_3
    //   234: aconst_null
    //   235: ldc -56
    //   237: invokeinterface 190 3 0
    //   242: invokestatic 206	java/lang/Float:parseFloat	(Ljava/lang/String;)F
    //   245: invokespecial 209	android/support/v7/widget/e$c:<init>	(Ljava/lang/String;JF)V
    //   248: invokeinterface 212 2 0
    //   253: pop
    //   254: goto -133 -> 121
    //   257: astore_3
    //   258: aload_2
    //   259: ifnull +7 -> 266
    //   262: aload_2
    //   263: invokevirtual 177	java/io/FileInputStream:close	()V
    //   266: aload_3
    //   267: athrow
    //   268: aload_2
    //   269: ifnull -162 -> 107
    //   272: aload_2
    //   273: invokevirtual 177	java/io/FileInputStream:close	()V
    //   276: return
    //   277: astore_2
    //   278: return
    //   279: astore_2
    //   280: return
    //   281: astore_2
    //   282: goto -16 -> 266
    //   285: astore_2
    //   286: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	287	0	this	e
    //   26	115	1	i	int
    //   11	189	2	localFileInputStream	java.io.FileInputStream
    //   204	69	2	localIOException1	IOException
    //   277	1	2	localIOException2	IOException
    //   279	1	2	localIOException3	IOException
    //   281	1	2	localIOException4	IOException
    //   285	1	2	localFileNotFoundException	FileNotFoundException
    //   15	35	3	localXmlPullParser	org.xmlpull.v1.XmlPullParser
    //   71	75	3	localXmlPullParserException	org.xmlpull.v1.XmlPullParserException
    //   167	67	3	localIOException5	IOException
    //   257	10	3	localObject	Object
    //   112	95	4	localList	List
    // Exception table:
    //   from	to	target	type
    //   12	25	71	org/xmlpull/v1/XmlPullParserException
    //   37	44	71	org/xmlpull/v1/XmlPullParserException
    //   47	71	71	org/xmlpull/v1/XmlPullParserException
    //   108	121	71	org/xmlpull/v1/XmlPullParserException
    //   121	128	71	org/xmlpull/v1/XmlPullParserException
    //   143	167	71	org/xmlpull/v1/XmlPullParserException
    //   206	254	71	org/xmlpull/v1/XmlPullParserException
    //   12	25	167	java/io/IOException
    //   37	44	167	java/io/IOException
    //   47	71	167	java/io/IOException
    //   108	121	167	java/io/IOException
    //   121	128	167	java/io/IOException
    //   143	167	167	java/io/IOException
    //   206	254	167	java/io/IOException
    //   199	203	204	java/io/IOException
    //   12	25	257	finally
    //   37	44	257	finally
    //   47	71	257	finally
    //   72	99	257	finally
    //   108	121	257	finally
    //   121	128	257	finally
    //   143	167	257	finally
    //   168	195	257	finally
    //   206	254	257	finally
    //   272	276	277	java/io/IOException
    //   103	107	279	java/io/IOException
    //   262	266	281	java/io/IOException
    //   0	12	285	java/io/FileNotFoundException
  }
  
  public final int a(ResolveInfo paramResolveInfo)
  {
    for (;;)
    {
      int i;
      synchronized (this.UQ)
      {
        fQ();
        List localList = this.UR;
        int j = localList.size();
        i = 0;
        if (i < j)
        {
          if (((a)localList.get(i)).resolveInfo == paramResolveInfo) {
            return i;
          }
        }
        else {
          return -1;
        }
      }
      i += 1;
    }
  }
  
  final boolean a(c paramc)
  {
    boolean bool = this.US.add(paramc);
    if (bool)
    {
      this.UY = true;
      fS();
      if (!this.UX) {
        throw new IllegalStateException("No preceding call to #readHistoricalData");
      }
      if (this.UY)
      {
        this.UY = false;
        if (!TextUtils.isEmpty(this.UT)) {
          new e().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[] { new ArrayList(this.US), this.UT });
        }
      }
      fR();
      notifyChanged();
    }
    return bool;
  }
  
  public final ResolveInfo aZ(int paramInt)
  {
    synchronized (this.UQ)
    {
      fQ();
      ResolveInfo localResolveInfo = ((a)this.UR.get(paramInt)).resolveInfo;
      return localResolveInfo;
    }
  }
  
  public final Intent ba(int paramInt)
  {
    synchronized (this.UQ)
    {
      if (this.AI == null) {
        return null;
      }
      fQ();
      Object localObject2 = (a)this.UR.get(paramInt);
      localObject2 = new ComponentName(((a)localObject2).resolveInfo.activityInfo.packageName, ((a)localObject2).resolveInfo.activityInfo.name);
      Intent localIntent = new Intent(this.AI);
      localIntent.setComponent((ComponentName)localObject2);
      if (this.Va != null)
      {
        new Intent(localIntent);
        if (this.Va.fU()) {
          return null;
        }
      }
      a(new c((ComponentName)localObject2, System.currentTimeMillis(), 1.0F));
      return localIntent;
    }
  }
  
  public final int fO()
  {
    synchronized (this.UQ)
    {
      fQ();
      int i = this.UR.size();
      return i;
    }
  }
  
  public final ResolveInfo fP()
  {
    synchronized (this.UQ)
    {
      fQ();
      if (!this.UR.isEmpty())
      {
        ResolveInfo localResolveInfo = ((a)this.UR.get(0)).resolveInfo;
        return localResolveInfo;
      }
      return null;
    }
  }
  
  final void fQ()
  {
    int j = 1;
    int i;
    if ((this.UZ) && (this.AI != null))
    {
      this.UZ = false;
      this.UR.clear();
      List localList = this.mContext.getPackageManager().queryIntentActivities(this.AI, 0);
      int k = localList.size();
      i = 0;
      while (i < k)
      {
        ResolveInfo localResolveInfo = (ResolveInfo)localList.get(i);
        this.UR.add(new a(localResolveInfo));
        i += 1;
      }
      i = 1;
      if ((!this.UW) || (!this.UY) || (TextUtils.isEmpty(this.UT))) {
        break label166;
      }
      this.UW = false;
      this.UX = true;
      fT();
    }
    for (;;)
    {
      fS();
      if ((i | j) != 0)
      {
        fR();
        notifyChanged();
      }
      return;
      i = 0;
      break;
      label166:
      j = 0;
    }
  }
  
  public static final class a
    implements Comparable<a>
  {
    public final ResolveInfo resolveInfo;
    public float weight;
    
    public a(ResolveInfo paramResolveInfo)
    {
      this.resolveInfo = paramResolveInfo;
    }
    
    public final boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (a)paramObject;
      } while (Float.floatToIntBits(this.weight) == Float.floatToIntBits(((a)paramObject).weight));
      return false;
    }
    
    public final int hashCode()
    {
      return Float.floatToIntBits(this.weight) + 31;
    }
    
    public final String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("[");
      localStringBuilder.append("resolveInfo:").append(this.resolveInfo.toString());
      localStringBuilder.append("; weight:").append(new BigDecimal(this.weight));
      localStringBuilder.append("]");
      return localStringBuilder.toString();
    }
  }
  
  public static abstract interface b {}
  
  public static final class c
  {
    public final ComponentName Vb;
    public final long time;
    public final float weight;
    
    public c(ComponentName paramComponentName, long paramLong, float paramFloat)
    {
      this.Vb = paramComponentName;
      this.time = paramLong;
      this.weight = paramFloat;
    }
    
    public c(String paramString, long paramLong, float paramFloat)
    {
      this(ComponentName.unflattenFromString(paramString), paramLong, paramFloat);
    }
    
    public final boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (c)paramObject;
        if (this.Vb == null)
        {
          if (((c)paramObject).Vb != null) {
            return false;
          }
        }
        else if (!this.Vb.equals(((c)paramObject).Vb)) {
          return false;
        }
        if (this.time != ((c)paramObject).time) {
          return false;
        }
      } while (Float.floatToIntBits(this.weight) == Float.floatToIntBits(((c)paramObject).weight));
      return false;
    }
    
    public final int hashCode()
    {
      if (this.Vb == null) {}
      for (int i = 0;; i = this.Vb.hashCode()) {
        return ((i + 31) * 31 + (int)(this.time ^ this.time >>> 32)) * 31 + Float.floatToIntBits(this.weight);
      }
    }
    
    public final String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("[");
      localStringBuilder.append("; activity:").append(this.Vb);
      localStringBuilder.append("; time:").append(this.time);
      localStringBuilder.append("; weight:").append(new BigDecimal(this.weight));
      localStringBuilder.append("]");
      return localStringBuilder.toString();
    }
  }
  
  public static abstract interface d
  {
    public abstract boolean fU();
  }
  
  private final class e
    extends AsyncTask<Object, Void, Void>
  {
    e() {}
    
    private Void a(Object... paramVarArgs)
    {
      int i = 0;
      List localList = (List)paramVarArgs[0];
      Object localObject2 = (String)paramVarArgs[1];
      for (;;)
      {
        try
        {
          paramVarArgs = e.this.mContext.openFileOutput((String)localObject2, 0);
          localObject2 = Xml.newSerializer();
          int j;
          e.c localc;
          ((XmlSerializer)localObject2).endTag(null, "historical-records");
        }
        catch (FileNotFoundException paramVarArgs)
        {
          try
          {
            ((XmlSerializer)localObject2).setOutput(paramVarArgs, null);
            ((XmlSerializer)localObject2).startDocument("UTF-8", Boolean.valueOf(true));
            ((XmlSerializer)localObject2).startTag(null, "historical-records");
            j = localList.size();
            if (i >= j) {
              break label210;
            }
            localc = (e.c)localList.remove(0);
            ((XmlSerializer)localObject2).startTag(null, "historical-record");
            ((XmlSerializer)localObject2).attribute(null, "activity", localc.Vb.flattenToString());
            ((XmlSerializer)localObject2).attribute(null, "time", String.valueOf(localc.time));
            ((XmlSerializer)localObject2).attribute(null, "weight", String.valueOf(localc.weight));
            ((XmlSerializer)localObject2).endTag(null, "historical-record");
            i += 1;
            continue;
            paramVarArgs = paramVarArgs;
            Log.e(e.JS, "Error writing historical record file: " + (String)localObject2, paramVarArgs);
          }
          catch (IllegalArgumentException localIllegalArgumentException)
          {
            Log.e(e.JS, "Error writing historical record file: " + e.this.UT, localIllegalArgumentException);
            e.this.UW = true;
            if (paramVarArgs == null) {
              continue;
            }
            try
            {
              paramVarArgs.close();
              return null;
            }
            catch (IOException paramVarArgs)
            {
              return null;
            }
          }
          catch (IllegalStateException localIllegalStateException)
          {
            Log.e(e.JS, "Error writing historical record file: " + e.this.UT, localIllegalStateException);
            e.this.UW = true;
            if (paramVarArgs == null) {
              continue;
            }
            try
            {
              paramVarArgs.close();
              return null;
            }
            catch (IOException paramVarArgs)
            {
              return null;
            }
          }
          catch (IOException localIOException)
          {
            Log.e(e.JS, "Error writing historical record file: " + e.this.UT, localIOException);
            e.this.UW = true;
            if (paramVarArgs == null) {
              continue;
            }
            try
            {
              paramVarArgs.close();
              return null;
            }
            catch (IOException paramVarArgs)
            {
              return null;
            }
          }
          finally
          {
            e.this.UW = true;
            if (paramVarArgs == null) {
              break label429;
            }
          }
          return null;
        }
        label210:
        ((XmlSerializer)localObject2).endDocument();
        e.this.UW = true;
        if (paramVarArgs != null) {
          try
          {
            paramVarArgs.close();
            return null;
          }
          catch (IOException paramVarArgs)
          {
            return null;
          }
        }
      }
      try
      {
        paramVarArgs.close();
        label429:
        throw ((Throwable)localObject1);
      }
      catch (IOException paramVarArgs)
      {
        for (;;) {}
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */