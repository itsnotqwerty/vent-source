package com.layer.sdk.internal.telemetry;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.StatFs;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.a.a.c;
import java.io.File;

final class b
{
  @c("model")
  private String bth;
  @c("processor")
  private String bti;
  @c("screen")
  private a btj;
  @c("total_storage_in_gb")
  private int btk;
  @c("total_memory_in_mb")
  private long btl;
  
  private b() {}
  
  b(Context paramContext)
  {
    this.bth = (Build.MANUFACTURER + " " + Build.MODEL);
    Object localObject;
    int i;
    if (Build.VERSION.SDK_INT < 21)
    {
      this.bti = Build.CPU_ABI;
      this.btj = new a(paramContext);
      localObject = new StatFs(Environment.getRootDirectory().getAbsolutePath());
      if (Build.VERSION.SDK_INT < 18) {
        break label168;
      }
      l = ((StatFs)localObject).getBlockCountLong();
      i = (int)(((StatFs)localObject).getBlockSizeLong() * l / 1073741824L);
      label104:
      this.btk = i;
      if (Build.VERSION.SDK_INT < 16) {
        break label192;
      }
      localObject = new ActivityManager.MemoryInfo();
      ((ActivityManager)paramContext.getSystemService("activity")).getMemoryInfo((ActivityManager.MemoryInfo)localObject);
    }
    label168:
    label192:
    for (long l = ((ActivityManager.MemoryInfo)localObject).totalMem / 1048576L;; l = 0L)
    {
      this.btl = l;
      return;
      this.bti = Build.SUPPORTED_ABIS[0];
      break;
      l = ((StatFs)localObject).getBlockCount();
      i = (int)(((StatFs)localObject).getBlockSize() * l / 1073741824L);
      break label104;
    }
  }
  
  static final class a
  {
    @c("dpi")
    private int btm;
    @c("width")
    private int db;
    @c("height")
    private int dc;
    
    public a() {}
    
    public a(Context paramContext)
    {
      paramContext = (WindowManager)paramContext.getSystemService("window");
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      paramContext.getDefaultDisplay().getMetrics(localDisplayMetrics);
      this.db = localDisplayMetrics.widthPixels;
      this.dc = localDisplayMetrics.heightPixels;
      this.btm = localDisplayMetrics.densityDpi;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/telemetry/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */