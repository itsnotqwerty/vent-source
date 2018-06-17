package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.e;
import com.google.android.gms.common.util.f;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.du;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GoogleSignInAccount
  extends dr
  implements ReflectedParcelable
{
  public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new a();
  private static e aBQ = f.oG();
  private String aBR;
  private String aBS;
  public String aBT;
  private String aBU;
  private Uri aBV;
  private String aBW;
  private long aBX;
  private String aBY;
  private List<Scope> aBZ;
  private String aCa;
  private String aCb;
  private Set<Scope> aCc = new HashSet();
  private int versionCode;
  
  GoogleSignInAccount(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, Uri paramUri, String paramString5, long paramLong, String paramString6, List<Scope> paramList, String paramString7, String paramString8)
  {
    this.versionCode = paramInt;
    this.aBR = paramString1;
    this.aBS = paramString2;
    this.aBT = paramString3;
    this.aBU = paramString4;
    this.aBV = paramUri;
    this.aBW = paramString5;
    this.aBX = paramLong;
    this.aBY = paramString6;
    this.aBZ = paramList;
    this.aCa = paramString7;
    this.aCb = paramString8;
  }
  
  public static GoogleSignInAccount ba(String paramString)
    throws JSONException
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    JSONObject localJSONObject = new JSONObject(paramString);
    paramString = null;
    Object localObject = localJSONObject.optString("photoUrl", null);
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      paramString = Uri.parse((String)localObject);
    }
    long l = Long.parseLong(localJSONObject.getString("expirationTime"));
    HashSet localHashSet = new HashSet();
    localObject = localJSONObject.getJSONArray("grantedScopes");
    int j = ((JSONArray)localObject).length();
    int i = 0;
    while (i < j)
    {
      localHashSet.add(new Scope(((JSONArray)localObject).getString(i)));
      i += 1;
    }
    String str1 = localJSONObject.optString("id");
    String str2 = localJSONObject.optString("tokenId", null);
    String str3 = localJSONObject.optString("email", null);
    String str4 = localJSONObject.optString("displayName", null);
    String str5 = localJSONObject.optString("givenName", null);
    String str6 = localJSONObject.optString("familyName", null);
    localObject = Long.valueOf(l);
    String str7 = localJSONObject.getString("obfuscatedIdentifier");
    if (localObject == null) {
      localObject = Long.valueOf(aBQ.currentTimeMillis() / 1000L);
    }
    for (;;)
    {
      paramString = new GoogleSignInAccount(3, str1, str2, str3, str4, paramString, null, ((Long)localObject).longValue(), ae.bf(str7), new ArrayList((Collection)ae.E(localHashSet)), str5, str6);
      paramString.aBW = localJSONObject.optString("serverAuthCode", null);
      return paramString;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof GoogleSignInAccount)) {
        return false;
      }
      paramObject = (GoogleSignInAccount)paramObject;
    } while ((((GoogleSignInAccount)paramObject).aBY.equals(this.aBY)) && (((GoogleSignInAccount)paramObject).mO().equals(mO())));
    return false;
  }
  
  public int hashCode()
  {
    return (this.aBY.hashCode() + 527) * 31 + mO().hashCode();
  }
  
  public final Set<Scope> mO()
  {
    HashSet localHashSet = new HashSet(this.aBZ);
    localHashSet.addAll(this.aCc);
    return localHashSet;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = du.l(paramParcel, 20293);
    du.d(paramParcel, 1, this.versionCode);
    du.a(paramParcel, 2, this.aBR);
    du.a(paramParcel, 3, this.aBS);
    du.a(paramParcel, 4, this.aBT);
    du.a(paramParcel, 5, this.aBU);
    du.a(paramParcel, 6, this.aBV, paramInt);
    du.a(paramParcel, 7, this.aBW);
    du.a(paramParcel, 8, this.aBX);
    du.a(paramParcel, 9, this.aBY);
    du.b(paramParcel, 10, this.aBZ);
    du.a(paramParcel, 11, this.aCa);
    du.a(paramParcel, 12, this.aCb);
    du.m(paramParcel, i);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/auth/api/signin/GoogleSignInAccount.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */