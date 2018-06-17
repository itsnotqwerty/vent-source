package com.layer.sdk.internal.lsdkk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.UUID;

public class g
{
  private final SharedPreferences a;
  private final int b;
  
  public g(Context paramContext, UUID paramUUID, int paramInt)
  {
    this.a = paramContext.getSharedPreferences("fcm." + paramUUID, 0);
    this.b = paramInt;
  }
  
  public boolean a(String paramString)
  {
    String str = this.a.getString("layer_saved_token", null);
    int i = this.a.getInt("messaging_version_for_token", -1);
    return (paramString.equals(str)) && (this.b == i);
  }
  
  public void b(String paramString)
  {
    this.a.edit().putString("layer_saved_token", paramString).putInt("messaging_version_for_token", this.b).apply();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */