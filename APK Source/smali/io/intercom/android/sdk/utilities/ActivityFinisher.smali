.class public Lio/intercom/android/sdk/utilities/ActivityFinisher;
.super Ljava/lang/Object;


# instance fields
.field private final activities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/g/b;

    invoke-direct {v0}, Landroid/support/v4/g/b;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/utilities/ActivityFinisher;->activities:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public finishActivities()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/ActivityFinisher;->activities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/utilities/ActivityFinisher;->activities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public register(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/ActivityFinisher;->activities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregister(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/ActivityFinisher;->activities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
