.class public final Lcom/vent/ax;
.super Ljava/lang/Object;


# static fields
.field public static final cfL:Ljava/lang/String;

.field public static final cfM:Ljava/lang/String;

.field public static final cfN:Ljava/lang/String;

.field public static final cfO:Ljava/lang/String;

.field public static final cfP:Ljava/lang/String;

.field public static final cfQ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/vent/ax;->cfL:Ljava/lang/String;

    sput-object v0, Lcom/vent/ax;->cfM:Ljava/lang/String;

    sput-object v0, Lcom/vent/ax;->cfN:Ljava/lang/String;

    sput-object v0, Lcom/vent/ax;->cfO:Ljava/lang/String;

    sput-object v0, Lcom/vent/ax;->cfP:Ljava/lang/String;

    sput-object v0, Lcom/vent/ax;->cfQ:Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p0}, Lcom/vent/MyApplication;->bs(Landroid/content/Context;)Lcom/google/android/gms/analytics/d;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/analytics/b$a;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/b$a;-><init>()V

    const-string v2, "&ec"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/analytics/b$b;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/b$b;

    const-string v2, "&ea"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/analytics/b$b;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/b$b;

    const-string v2, "&el"

    invoke-virtual {v1, v2, p3}, Lcom/google/android/gms/analytics/b$b;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/b$b;

    const-string v2, "&ev"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/analytics/b$b;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/b$b;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/b$a;->mF()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/d;->h(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static aJ(Landroid/content/Context;)V
    .locals 3

    const-string v0, "NewUserOnboarding"

    const-string v1, "Register"

    const-string v2, "New User Registering"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static aK(Landroid/content/Context;)V
    .locals 3

    const-string v0, "NewUserOnboarding"

    const-string v1, "Confirm"

    const-string v2, "User confirmed Email"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static aL(Landroid/content/Context;)V
    .locals 3

    const-string v0, "NewUserOnboarding"

    const-string v1, "Add Bio"

    const-string v2, "New User added bio"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static aM(Landroid/content/Context;)V
    .locals 3

    const-string v0, "NewUserOnboarding"

    const-string v1, "Add Photo"

    const-string v2, "New User added photo"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static aN(Landroid/content/Context;)V
    .locals 3

    const-string v0, "NewUserOnboarding"

    const-string v1, "Agreed to guidelines"

    const-string v2, "New User read guidelines"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static aO(Landroid/content/Context;)V
    .locals 3

    const-string v0, "VentFeeds"

    const-string v1, "Posted Comment"

    const-string v2, "User did post a comment"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static aP(Landroid/content/Context;)V
    .locals 3

    const-string v0, "VentFeeds"

    const-string v1, "Interacted"

    const-string v2, "User did interact with a vent"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static aQ(Landroid/content/Context;)V
    .locals 3

    const-string v0, "VentFeeds"

    const-string v1, "Edited Vent"

    const-string v2, "User did edit a vent"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static aR(Landroid/content/Context;)V
    .locals 3

    const-string v0, "VentFeeds"

    const-string v1, "Reported Vent"

    const-string v2, "User did report a vent"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static aS(Landroid/content/Context;)V
    .locals 3

    const-string v0, "VentFeeds"

    const-string v1, "Reported comment"

    const-string v2, "User did report a comment"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static aT(Landroid/content/Context;)V
    .locals 3

    const-string v0, "Explore"

    const-string v1, "Search - Vent"

    const-string v2, "User did search for a vent"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static aU(Landroid/content/Context;)V
    .locals 3

    const-string v0, "Explore"

    const-string v1, "Search - Users"

    const-string v2, "User did search for a user"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static aV(Landroid/content/Context;)V
    .locals 3

    const-string v0, "MyProfile"

    const-string v1, "Edit Picture"

    const-string v2, "User did edit picture"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static aW(Landroid/content/Context;)V
    .locals 3

    const-string v0, "MyProfile"

    const-string v1, "Edit Bio"

    const-string v2, "User did edit bio"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static aX(Landroid/content/Context;)V
    .locals 3

    const-string v0, "MyProfile"

    const-string v1, "Edit Username"

    const-string v2, "User did edit username"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static aY(Landroid/content/Context;)V
    .locals 3

    const-string v0, "MyProfile"

    const-string v1, "Change password"

    const-string v2, "User did change password"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static aZ(Landroid/content/Context;)V
    .locals 3

    const-string v0, "MyProfile"

    const-string v1, "Change Email"

    const-string v2, "User did change email"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ba(Landroid/content/Context;)V
    .locals 3

    const-string v0, "MyProfile"

    const-string v1, "Set Private Account"

    const-string v2, "User did set account to private"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bb(Landroid/content/Context;)V
    .locals 3

    const-string v0, "MyProfile"

    const-string v1, "Change notification settings"

    const-string v2, "User did change notification settings"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bc(Landroid/content/Context;)V
    .locals 3

    const-string v0, "MyProfile"

    const-string v1, "Verify email"

    const-string v2, "User did resend verify email"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bd(Landroid/content/Context;)V
    .locals 3

    const-string v0, "OtherProfile"

    const-string v1, "touch photo"

    const-string v2, "user did enlarge photo"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static be(Landroid/content/Context;)V
    .locals 3

    const-string v0, "OtherProfile"

    const-string v1, "listen"

    const-string v2, "user did listen from profile"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bf(Landroid/content/Context;)V
    .locals 3

    const-string v0, "OtherProfile"

    const-string v1, "unlisten"

    const-string v2, "user did unlisten from profile"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bg(Landroid/content/Context;)V
    .locals 3

    const-string v0, "OtherProfile"

    const-string v1, "block"

    const-string v2, "user did block from profile"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bh(Landroid/content/Context;)V
    .locals 3

    const-string v0, "OtherProfile"

    const-string v1, "unblock"

    const-string v2, "user did unblock from profile"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bi(Landroid/content/Context;)V
    .locals 3

    const-string v0, "OtherProfile"

    const-string v1, "report"

    const-string v2, "user did report from profile"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bj(Landroid/content/Context;)V
    .locals 3

    const-string v0, "OtherProfile"

    const-string v1, "requestListen"

    const-string v2, "user did request listen from profile"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bk(Landroid/content/Context;)V
    .locals 3

    const-string v0, "OtherProfile"

    const-string v1, "unrequestListen"

    const-string v2, "user did unrequest listen from profile"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bl(Landroid/content/Context;)V
    .locals 3

    const-string v0, "PostVent"

    const-string v1, "Press back button"

    const-string v2, "User did not post Vent"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bm(Landroid/content/Context;)V
    .locals 3

    const-string v0, "PostVent"

    const-string v1, "Press Post"

    const-string v2, "User did post Vent"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bn(Landroid/content/Context;)V
    .locals 3

    const-string v0, "UserList"

    const-string v1, "listen"

    const-string v2, "user did listen from user list"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bo(Landroid/content/Context;)V
    .locals 3

    const-string v0, "UserList"

    const-string v1, "unlisten"

    const-string v2, "user did unlisten from user list"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bp(Landroid/content/Context;)V
    .locals 3

    const-string v0, "UserList"

    const-string v1, "requestListen"

    const-string v2, "user did request listen from user list"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bq(Landroid/content/Context;)V
    .locals 3

    const-string v0, "UserList"

    const-string v1, "unrequestListen"

    const-string v2, "user did unrequest listen from user li"

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Activity"

    const-string v1, "Selected Notification"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Selected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Notification"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f(Landroid/content/Context;Z)V
    .locals 4

    const-string v1, "PostVent"

    const-string v2, "Toggle Location"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "user did toggle location "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "on"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v2, v0}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method

.method public static v(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/vent/MyApplication;->bs(Landroid/content/Context;)Lcom/google/android/gms/analytics/d;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "&cd"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/analytics/d;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/analytics/b$c;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/b$c;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/b$c;->mF()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/d;->h(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
