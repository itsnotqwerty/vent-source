.class public final Landroid/support/v4/app/l;
.super Ljava/lang/Object;


# instance fields
.field final mHost:Landroid/support/v4/app/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/m",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/app/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/m",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    return-void
.end method


# virtual methods
.method public final execPendingActions()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public final findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/i;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    return-object v0
.end method

.method public final noteStateNotSaved()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->noteStateNotSaved()V

    return-void
.end method
