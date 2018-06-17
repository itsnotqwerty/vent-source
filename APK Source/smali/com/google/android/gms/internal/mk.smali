.class public final Lcom/google/android/gms/internal/mk;
.super Lcom/google/android/gms/common/internal/c;

# interfaces
.implements Lcom/google/android/gms/internal/ma;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c",
        "<",
        "Lcom/google/android/gms/internal/mi;",
        ">;",
        "Lcom/google/android/gms/internal/ma;"
    }
.end annotation


# instance fields
.field private final aDG:Lcom/google/android/gms/common/internal/ay;

.field private aIz:Ljava/lang/Integer;

.field private final aZm:Z

.field private final aZn:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ay;Landroid/os/Bundle;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)V
    .locals 7

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/c;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ay;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mk;->aZm:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/mk;->aDG:Lcom/google/android/gms/common/internal/ay;

    iput-object p4, p0, Lcom/google/android/gms/internal/mk;->aZn:Landroid/os/Bundle;

    iget-object v0, p3, Lcom/google/android/gms/common/internal/ay;->aIz:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/mk;->aIz:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ay;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)V
    .locals 7

    iget-object v0, p3, Lcom/google/android/gms/common/internal/ay;->aIy:Lcom/google/android/gms/internal/mb;

    iget-object v1, p3, Lcom/google/android/gms/common/internal/ay;->aIz:Ljava/lang/Integer;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.google.android.gms.signin.internal.clientRequestedAccount"

    iget-object v3, p3, Lcom/google/android/gms/common/internal/ay;->aCI:Landroid/accounts/Account;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v1, :cond_0

    const-string v2, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    if-eqz v0, :cond_2

    const-string v1, "com.google.android.gms.signin.internal.offlineAccessRequested"

    iget-boolean v2, v0, Lcom/google/android/gms/internal/mb;->aZc:Z

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.idTokenRequested"

    iget-boolean v2, v0, Lcom/google/android/gms/internal/mb;->aZd:Z

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.serverClientId"

    iget-object v2, v0, Lcom/google/android/gms/internal/mb;->aZe:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    const/4 v2, 0x1

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    iget-boolean v2, v0, Lcom/google/android/gms/internal/mb;->aZf:Z

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.hostedDomain"

    iget-object v2, v0, Lcom/google/android/gms/internal/mb;->aZg:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    iget-boolean v2, v0, Lcom/google/android/gms/internal/mb;->aZh:Z

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/google/android/gms/internal/mb;->aZi:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const-string v1, "com.google.android.gms.signin.internal.authApiSignInModuleVersion"

    iget-object v2, v0, Lcom/google/android/gms/internal/mb;->aZi:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v4, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/mb;->aZj:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const-string v1, "com.google.android.gms.signin.internal.realClientLibraryVersion"

    iget-object v0, v0, Lcom/google/android/gms/internal/mb;->aZj:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v4, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/mk;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ay;Landroid/os/Bundle;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/internal/n;Z)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/al;->or()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mi;

    iget-object v1, p0, Lcom/google/android/gms/internal/mk;->aIz:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/gms/internal/mi;->a(Lcom/google/android/gms/common/internal/n;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "SignInClientImpl"

    const-string v1, "Remote service probably died when saveDefaultAccount is called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/mg;)V
    .locals 4

    const-string v0, "Expecting a valid ISignInCallbacks"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mk;->aDG:Lcom/google/android/gms/common/internal/ay;

    iget-object v1, v0, Lcom/google/android/gms/common/internal/ay;->aCI:Landroid/accounts/Account;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/common/internal/ay;->aCI:Landroid/accounts/Account;

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    const-string v2, "<<default account>>"

    iget-object v3, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/a/a;->v(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/a/a;

    move-result-object v0

    const-string v2, "defaultGoogleSignInAccount"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/api/signin/a/a;->bc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/api/signin/a/a;->bb(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/google/android/gms/common/internal/af;

    iget-object v3, p0, Lcom/google/android/gms/internal/mk;->aIz:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/common/internal/af;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/al;->or()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mi;

    new-instance v1, Lcom/google/android/gms/internal/ml;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ml;-><init>(Lcom/google/android/gms/common/internal/af;)V

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/mi;->a(Lcom/google/android/gms/internal/ml;Lcom/google/android/gms/internal/mg;)V

    :goto_1
    return-void

    :cond_1
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SignInClientImpl"

    const-string v2, "Remote service probably died when signIn is called"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/mn;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mn;-><init>()V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/mg;->a(Lcom/google/android/gms/internal/mn;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v1, "SignInClientImpl"

    const-string v2, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public final connect()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/au;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/au;-><init>(Lcom/google/android/gms/common/internal/al;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/al;->a(Lcom/google/android/gms/common/internal/ar;)V

    return-void
.end method

.method protected final synthetic h(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/mi;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/mi;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/mj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mj;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final mX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mk;->aZm:Z

    return v0
.end method

.method protected final oi()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method protected final oj()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method protected final op()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mk;->aDG:Lcom/google/android/gms/common/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/ay;->aCN:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/al;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mk;->aZn:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.signin.internal.realClientPackageName"

    iget-object v2, p0, Lcom/google/android/gms/internal/mk;->aDG:Lcom/google/android/gms/common/internal/ay;

    iget-object v2, v2, Lcom/google/android/gms/common/internal/ay;->aCN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mk;->aZn:Landroid/os/Bundle;

    return-object v0
.end method

.method public final sE()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/al;->or()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mi;

    iget-object v1, p0, Lcom/google/android/gms/internal/mk;->aIz:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mi;->cS(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "SignInClientImpl"

    const-string v1, "Remote service probably died when clearAccountFromSessionStore is called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
