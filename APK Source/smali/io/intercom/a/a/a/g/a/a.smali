.class public abstract Lio/intercom/a/a/a/g/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/g/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/g/a/h",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private request:Lio/intercom/a/a/a/g/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest()Lio/intercom/a/a/a/g/c;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/a;->request:Lio/intercom/a/a/a/g/c;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public setRequest(Lio/intercom/a/a/a/g/c;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/a/a/g/a/a;->request:Lio/intercom/a/a/a/g/c;

    return-void
.end method
