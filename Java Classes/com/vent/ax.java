package com.vent;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.analytics.b.a;
import com.google.android.gms.analytics.b.b;
import com.google.android.gms.analytics.b.c;
import com.google.android.gms.analytics.d;

public final class ax
{
  public static final String cfL = null;
  public static final String cfM = null;
  public static final String cfN = null;
  public static final String cfO = null;
  public static final String cfP = null;
  public static final String cfQ = null;
  
  static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    paramContext = MyApplication.bs(paramContext);
    if (paramContext != null)
    {
      b.a locala = new b.a();
      locala.o("&ec", paramString1);
      locala.o("&ea", paramString2);
      locala.o("&el", paramString3);
      locala.o("&ev", Long.toString(1L));
      paramContext.h(locala.mF());
    }
  }
  
  public static void aJ(Context paramContext)
  {
    a(paramContext, "NewUserOnboarding", "Register", "New User Registering");
  }
  
  public static void aK(Context paramContext)
  {
    a(paramContext, "NewUserOnboarding", "Confirm", "User confirmed Email");
  }
  
  public static void aL(Context paramContext)
  {
    a(paramContext, "NewUserOnboarding", "Add Bio", "New User added bio");
  }
  
  public static void aM(Context paramContext)
  {
    a(paramContext, "NewUserOnboarding", "Add Photo", "New User added photo");
  }
  
  public static void aN(Context paramContext)
  {
    a(paramContext, "NewUserOnboarding", "Agreed to guidelines", "New User read guidelines");
  }
  
  public static void aO(Context paramContext)
  {
    a(paramContext, "VentFeeds", "Posted Comment", "User did post a comment");
  }
  
  public static void aP(Context paramContext)
  {
    a(paramContext, "VentFeeds", "Interacted", "User did interact with a vent");
  }
  
  public static void aQ(Context paramContext)
  {
    a(paramContext, "VentFeeds", "Edited Vent", "User did edit a vent");
  }
  
  public static void aR(Context paramContext)
  {
    a(paramContext, "VentFeeds", "Reported Vent", "User did report a vent");
  }
  
  public static void aS(Context paramContext)
  {
    a(paramContext, "VentFeeds", "Reported comment", "User did report a comment");
  }
  
  public static void aT(Context paramContext)
  {
    a(paramContext, "Explore", "Search - Vent", "User did search for a vent");
  }
  
  public static void aU(Context paramContext)
  {
    a(paramContext, "Explore", "Search - Users", "User did search for a user");
  }
  
  public static void aV(Context paramContext)
  {
    a(paramContext, "MyProfile", "Edit Picture", "User did edit picture");
  }
  
  public static void aW(Context paramContext)
  {
    a(paramContext, "MyProfile", "Edit Bio", "User did edit bio");
  }
  
  public static void aX(Context paramContext)
  {
    a(paramContext, "MyProfile", "Edit Username", "User did edit username");
  }
  
  public static void aY(Context paramContext)
  {
    a(paramContext, "MyProfile", "Change password", "User did change password");
  }
  
  public static void aZ(Context paramContext)
  {
    a(paramContext, "MyProfile", "Change Email", "User did change email");
  }
  
  public static void ba(Context paramContext)
  {
    a(paramContext, "MyProfile", "Set Private Account", "User did set account to private");
  }
  
  public static void bb(Context paramContext)
  {
    a(paramContext, "MyProfile", "Change notification settings", "User did change notification settings");
  }
  
  public static void bc(Context paramContext)
  {
    a(paramContext, "MyProfile", "Verify email", "User did resend verify email");
  }
  
  public static void bd(Context paramContext)
  {
    a(paramContext, "OtherProfile", "touch photo", "user did enlarge photo");
  }
  
  public static void be(Context paramContext)
  {
    a(paramContext, "OtherProfile", "listen", "user did listen from profile");
  }
  
  public static void bf(Context paramContext)
  {
    a(paramContext, "OtherProfile", "unlisten", "user did unlisten from profile");
  }
  
  public static void bg(Context paramContext)
  {
    a(paramContext, "OtherProfile", "block", "user did block from profile");
  }
  
  public static void bh(Context paramContext)
  {
    a(paramContext, "OtherProfile", "unblock", "user did unblock from profile");
  }
  
  public static void bi(Context paramContext)
  {
    a(paramContext, "OtherProfile", "report", "user did report from profile");
  }
  
  public static void bj(Context paramContext)
  {
    a(paramContext, "OtherProfile", "requestListen", "user did request listen from profile");
  }
  
  public static void bk(Context paramContext)
  {
    a(paramContext, "OtherProfile", "unrequestListen", "user did unrequest listen from profile");
  }
  
  public static void bl(Context paramContext)
  {
    a(paramContext, "PostVent", "Press back button", "User did not post Vent");
  }
  
  public static void bm(Context paramContext)
  {
    a(paramContext, "PostVent", "Press Post", "User did post Vent");
  }
  
  public static void bn(Context paramContext)
  {
    a(paramContext, "UserList", "listen", "user did listen from user list");
  }
  
  public static void bo(Context paramContext)
  {
    a(paramContext, "UserList", "unlisten", "user did unlisten from user list");
  }
  
  public static void bp(Context paramContext)
  {
    a(paramContext, "UserList", "requestListen", "user did request listen from user list");
  }
  
  public static void bq(Context paramContext)
  {
    a(paramContext, "UserList", "unrequestListen", "user did unrequest listen from user li");
  }
  
  public static void c(Activity paramActivity, String paramString)
  {
    a(paramActivity, "Activity", "Selected Notification", "Selected " + paramString + " Notification");
  }
  
  public static void f(Context paramContext, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder("user did toggle location ");
    if (paramBoolean) {}
    for (String str = "on";; str = "off")
    {
      a(paramContext, "PostVent", "Toggle Location", str);
      return;
    }
  }
  
  public static void v(Context paramContext, String paramString)
  {
    paramContext = MyApplication.bs(paramContext);
    if (paramContext != null)
    {
      paramContext.set("&cd", paramString);
      paramContext.h(new b.c().mF());
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ax.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */