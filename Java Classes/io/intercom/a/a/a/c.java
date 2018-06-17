package io.intercom.a.a.a;

import android.annotation.TargetApi;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.v4.app.n;
import android.util.Log;
import io.intercom.a.a.a.c.c.a.b;
import io.intercom.a.a.a.c.c.a.c;
import io.intercom.a.a.a.c.c.a.c.a;
import io.intercom.a.a.a.c.c.a.d.a;
import io.intercom.a.a.a.c.c.a.e.a;
import io.intercom.a.a.a.c.c.b.d;
import io.intercom.a.a.a.c.c.d.b;
import io.intercom.a.a.a.c.c.e.c;
import io.intercom.a.a.a.c.c.f.b;
import io.intercom.a.a.a.c.c.f.e;
import io.intercom.a.a.a.c.c.k.a;
import io.intercom.a.a.a.c.c.s.a;
import io.intercom.a.a.a.c.c.s.b;
import io.intercom.a.a.a.c.c.s.c;
import io.intercom.a.a.a.c.c.t;
import io.intercom.a.a.a.c.c.u.a;
import io.intercom.a.a.a.c.c.u.b;
import io.intercom.a.a.a.c.c.v.a;
import io.intercom.a.a.a.c.c.w.a;
import io.intercom.a.a.a.c.c.w.c;
import io.intercom.a.a.a.c.c.x.a;
import io.intercom.a.a.a.c.d.a.r;
import io.intercom.a.a.a.c.d.a.s;
import io.intercom.a.a.a.c.d.a.u;
import io.intercom.a.a.a.c.d.a.v;
import io.intercom.a.a.a.d.l;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

@TargetApi(14)
public class c
  implements ComponentCallbacks2
{
  private static volatile c cFo;
  private static volatile boolean cFp;
  private f cFA = f.cFN;
  private final io.intercom.a.a.a.c.b.j cFq;
  public final io.intercom.a.a.a.c.b.a.e cFr;
  private final io.intercom.a.a.a.c.b.b.h cFs;
  private final io.intercom.a.a.a.c.b.d.a cFt;
  public final e cFu;
  public final h cFv;
  public final io.intercom.a.a.a.c.b.a.b cFw;
  public final l cFx;
  final io.intercom.a.a.a.d.d cFy;
  final List<j> cFz = new ArrayList();
  
  @TargetApi(14)
  private c(Context paramContext, io.intercom.a.a.a.c.b.j paramj, io.intercom.a.a.a.c.b.b.h paramh, io.intercom.a.a.a.c.b.a.e parame, io.intercom.a.a.a.c.b.a.b paramb, l paraml, io.intercom.a.a.a.d.d paramd, int paramInt, io.intercom.a.a.a.g.g paramg, Map<Class<?>, k<?, ?>> paramMap)
  {
    this.cFq = paramj;
    this.cFr = parame;
    this.cFw = paramb;
    this.cFs = paramh;
    this.cFx = paraml;
    this.cFy = paramd;
    this.cFt = new io.intercom.a.a.a.c.b.d.a(paramh, parame, (io.intercom.a.a.a.c.b)paramg.cIZ.a(io.intercom.a.a.a.c.d.a.k.cNP));
    paramh = paramContext.getResources();
    this.cFv = new h();
    paraml = this.cFv;
    paramd = new io.intercom.a.a.a.c.d.a.i();
    paraml.cGc.a(paramd);
    Object localObject = new io.intercom.a.a.a.c.d.a.k(this.cFv.Hz(), paramh.getDisplayMetrics(), parame, paramb);
    paraml = new io.intercom.a.a.a.c.d.e.a(paramContext, this.cFv.Hz(), parame, paramb);
    paramd = new v(parame);
    io.intercom.a.a.a.c.d.a.f localf = new io.intercom.a.a.a.c.d.a.f((io.intercom.a.a.a.c.d.a.k)localObject);
    localObject = new s((io.intercom.a.a.a.c.d.a.k)localObject, paramb);
    io.intercom.a.a.a.c.d.c.e locale = new io.intercom.a.a.a.c.d.c.e(paramContext);
    s.b localb = new s.b(paramh);
    s.c localc = new s.c(paramh);
    s.a locala = new s.a(paramh);
    io.intercom.a.a.a.c.d.a.c localc1 = new io.intercom.a.a.a.c.d.a.c();
    this.cFv.a(ByteBuffer.class, new io.intercom.a.a.a.c.c.c()).a(InputStream.class, new t(paramb)).a("Bitmap", ByteBuffer.class, Bitmap.class, localf).a("Bitmap", InputStream.class, Bitmap.class, (io.intercom.a.a.a.c.k)localObject).a("Bitmap", ParcelFileDescriptor.class, Bitmap.class, paramd).a("Bitmap", Bitmap.class, Bitmap.class, new u()).a(Bitmap.class, Bitmap.class, v.a.IT()).a(Bitmap.class, localc1).a("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new io.intercom.a.a.a.c.d.a.a(paramh, localf)).a("BitmapDrawable", InputStream.class, BitmapDrawable.class, new io.intercom.a.a.a.c.d.a.a(paramh, (io.intercom.a.a.a.c.k)localObject)).a("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new io.intercom.a.a.a.c.d.a.a(paramh, paramd)).a(BitmapDrawable.class, new io.intercom.a.a.a.c.d.a.b(parame, localc1)).a("Gif", InputStream.class, io.intercom.a.a.a.c.d.e.c.class, new io.intercom.a.a.a.c.d.e.j(this.cFv.Hz(), paraml, paramb)).a("Gif", ByteBuffer.class, io.intercom.a.a.a.c.d.e.c.class, paraml).a(io.intercom.a.a.a.c.d.e.c.class, new io.intercom.a.a.a.c.d.e.d()).a(io.intercom.a.a.a.b.a.class, io.intercom.a.a.a.b.a.class, v.a.IT()).a("Bitmap", io.intercom.a.a.a.b.a.class, Bitmap.class, new io.intercom.a.a.a.c.d.e.h(parame)).a(Uri.class, Drawable.class, locale).a(Uri.class, Bitmap.class, new r(locale, parame)).a(new io.intercom.a.a.a.c.d.b.a.a()).a(File.class, ByteBuffer.class, new d.b()).a(File.class, InputStream.class, new f.e()).a(File.class, File.class, new io.intercom.a.a.a.c.d.d.a()).a(File.class, ParcelFileDescriptor.class, new f.b()).a(File.class, File.class, v.a.IT()).a(new io.intercom.a.a.a.c.a.i.a(paramb)).a(Integer.TYPE, InputStream.class, localb).a(Integer.TYPE, ParcelFileDescriptor.class, locala).a(Integer.class, InputStream.class, localb).a(Integer.class, ParcelFileDescriptor.class, locala).a(Integer.class, Uri.class, localc).a(Integer.TYPE, Uri.class, localc).a(String.class, InputStream.class, new e.c()).a(String.class, InputStream.class, new u.b()).a(String.class, ParcelFileDescriptor.class, new u.a()).a(Uri.class, InputStream.class, new io.intercom.a.a.a.c.c.a.b.a()).a(Uri.class, InputStream.class, new a.c(paramContext.getAssets())).a(Uri.class, ParcelFileDescriptor.class, new a.b(paramContext.getAssets())).a(Uri.class, InputStream.class, new c.a(paramContext)).a(Uri.class, InputStream.class, new d.a(paramContext)).a(Uri.class, InputStream.class, new w.c(paramContext.getContentResolver())).a(Uri.class, ParcelFileDescriptor.class, new w.a(paramContext.getContentResolver())).a(Uri.class, InputStream.class, new x.a()).a(URL.class, InputStream.class, new e.a()).a(Uri.class, File.class, new k.a(paramContext)).a(io.intercom.a.a.a.c.c.g.class, InputStream.class, new io.intercom.a.a.a.c.c.a.a.a()).a(byte[].class, ByteBuffer.class, new io.intercom.a.a.a.c.c.b.a()).a(byte[].class, InputStream.class, new b.d()).a(Uri.class, Uri.class, v.a.IT()).a(Drawable.class, Drawable.class, v.a.IT()).a(Drawable.class, Drawable.class, new io.intercom.a.a.a.c.d.c.f()).a(Bitmap.class, BitmapDrawable.class, new io.intercom.a.a.a.c.d.f.b(paramh)).a(Bitmap.class, byte[].class, new io.intercom.a.a.a.c.d.f.a()).a(io.intercom.a.a.a.c.d.e.c.class, byte[].class, new io.intercom.a.a.a.c.d.f.c());
    paramh = new io.intercom.a.a.a.g.a.e();
    this.cFu = new e(paramContext, paramb, this.cFv, paramh, paramg, paramMap, paramj, paramInt);
  }
  
  private static a Hy()
  {
    try
    {
      a locala = (a)Class.forName("io.intercom.com.bumptech.glide.GeneratedAppGlideModuleImpl").newInstance();
      return locala;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      if (Log.isLoggable("Glide", 5)) {
        Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
      }
      return null;
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", localInstantiationException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", localIllegalAccessException);
    }
  }
  
  private static void a(Context paramContext, d paramd)
  {
    paramContext = paramContext.getApplicationContext();
    Object localObject2 = Hy();
    Collections.emptyList();
    new io.intercom.a.a.a.e.d();
    Object localObject1 = Collections.emptyList();
    Object localObject3;
    Object localObject4;
    if ((localObject2 != null) && (!((a)localObject2).Hx().isEmpty()))
    {
      localObject2 = ((a)localObject2).Hx();
      localObject3 = ((List)localObject1).iterator();
      while (((Iterator)localObject3).hasNext())
      {
        localObject4 = (io.intercom.a.a.a.e.b)((Iterator)localObject3).next();
        if (((Set)localObject2).contains(localObject4.getClass()))
        {
          if (Log.isLoggable("Glide", 3)) {
            Log.d("Glide", "AppGlideModule excludes manifest GlideModule: " + localObject4);
          }
          ((Iterator)localObject3).remove();
        }
      }
    }
    if (Log.isLoggable("Glide", 3))
    {
      localObject2 = ((List)localObject1).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (io.intercom.a.a.a.e.b)((Iterator)localObject2).next();
        Log.d("Glide", "Discovered GlideModule from manifest: " + localObject3.getClass());
      }
    }
    paramd.cFH = null;
    localObject2 = ((List)localObject1).iterator();
    while (((Iterator)localObject2).hasNext()) {
      ((Iterator)localObject2).next();
    }
    if (paramd.cFC == null) {
      paramd.cFC = io.intercom.a.a.a.c.b.c.a.IJ();
    }
    if (paramd.cFD == null) {
      paramd.cFD = io.intercom.a.a.a.c.b.c.a.II();
    }
    if (paramd.cFI == null) {
      paramd.cFI = io.intercom.a.a.a.c.b.c.a.IL();
    }
    if (paramd.cFF == null) {
      paramd.cFF = new io.intercom.a.a.a.c.b.b.i(new io.intercom.a.a.a.c.b.b.i.a(paramContext));
    }
    if (paramd.cFy == null) {
      paramd.cFy = new io.intercom.a.a.a.d.f();
    }
    int i;
    if (paramd.cFr == null)
    {
      i = paramd.cFF.cLS;
      if (i <= 0) {
        break label592;
      }
    }
    label592:
    for (paramd.cFr = new io.intercom.a.a.a.c.b.a.k(i);; paramd.cFr = new io.intercom.a.a.a.c.b.a.f())
    {
      if (paramd.cFw == null) {
        paramd.cFw = new io.intercom.a.a.a.c.b.a.j(paramd.cFF.cLU);
      }
      if (paramd.cFs == null) {
        paramd.cFs = new io.intercom.a.a.a.c.b.b.g(paramd.cFF.cLT);
      }
      if (paramd.cFE == null) {
        paramd.cFE = new io.intercom.a.a.a.c.b.b.f(paramContext);
      }
      if (paramd.cFq == null) {
        paramd.cFq = new io.intercom.a.a.a.c.b.j(paramd.cFs, paramd.cFE, paramd.cFD, paramd.cFC, io.intercom.a.a.a.c.b.c.a.IK(), io.intercom.a.a.a.c.b.c.a.IL(), paramd.cFJ);
      }
      localObject2 = new l(paramd.cFH);
      localObject3 = paramd.cFq;
      localObject4 = paramd.cFs;
      io.intercom.a.a.a.c.b.a.e locale = paramd.cFr;
      io.intercom.a.a.a.c.b.a.b localb = paramd.cFw;
      io.intercom.a.a.a.d.d locald = paramd.cFy;
      i = paramd.logLevel;
      io.intercom.a.a.a.g.g localg = paramd.cFG;
      localg.cKV = true;
      paramd = new c(paramContext, (io.intercom.a.a.a.c.b.j)localObject3, (io.intercom.a.a.a.c.b.b.h)localObject4, locale, localb, (l)localObject2, locald, i, localg, paramd.cFB);
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((Iterator)localObject1).next();
      }
    }
    paramContext.registerComponentCallbacks(paramd);
    cFo = paramd;
  }
  
  public static j b(android.support.v4.app.j paramj)
  {
    return bZ(paramj).c(paramj);
  }
  
  public static c bY(Context paramContext)
  {
    if (cFo == null)
    {
      try
      {
        if (cFo != null) {
          break label57;
        }
        if (cFp) {
          throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
        }
      }
      finally {}
      cFp = true;
      a(paramContext, new d());
      cFp = false;
    }
    label57:
    return cFo;
  }
  
  private static l bZ(Context paramContext)
  {
    io.intercom.a.a.a.i.h.checkNotNull(paramContext, "You cannot start a load on a not yet attached View or a  Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
    return bY(paramContext).cFx;
  }
  
  public static j ca(Context paramContext)
  {
    return bZ(paramContext).cd(paramContext);
  }
  
  public static j r(android.support.v4.app.i parami)
  {
    l locall = bZ(parami.getActivity());
    io.intercom.a.a.a.i.h.checkNotNull(parami.getActivity(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
    if (io.intercom.a.a.a.i.i.JV()) {
      return locall.cd(parami.getActivity().getApplicationContext());
    }
    n localn = parami.getChildFragmentManager();
    return locall.a(parami.getActivity(), localn, parami);
  }
  
  final boolean a(io.intercom.a.a.a.g.a.h<?> paramh)
  {
    synchronized (this.cFz)
    {
      Iterator localIterator = this.cFz.iterator();
      while (localIterator.hasNext()) {
        if (((j)localIterator.next()).c(paramh)) {
          return true;
        }
      }
      return false;
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public void onLowMemory()
  {
    io.intercom.a.a.a.i.i.JS();
    this.cFs.Iw();
    this.cFr.Iw();
    this.cFw.Iw();
  }
  
  public void onTrimMemory(int paramInt)
  {
    io.intercom.a.a.a.i.i.JS();
    this.cFs.fh(paramInt);
    this.cFr.fh(paramInt);
    this.cFw.fh(paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */