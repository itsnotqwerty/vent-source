.class public final Lio/intercom/a/a/a/c/d/c/c;
.super Lio/intercom/a/a/a/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/a/a/k",
        "<",
        "Lio/intercom/a/a/a/c/d/c/c;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/a/a/a/k;-><init>()V

    return-void
.end method

.method public static Ji()Lio/intercom/a/a/a/c/d/c/c;
    .locals 3

    new-instance v1, Lio/intercom/a/a/a/c/d/c/c;

    invoke-direct {v1}, Lio/intercom/a/a/a/c/d/c/c;-><init>()V

    new-instance v0, Lio/intercom/a/a/a/g/b/a$a;

    invoke-direct {v0}, Lio/intercom/a/a/a/g/b/a$a;-><init>()V

    invoke-virtual {v0}, Lio/intercom/a/a/a/g/b/a$a;->JM()Lio/intercom/a/a/a/g/b/a;

    move-result-object v0

    const-string v2, "Argument must not be null"

    invoke-static {v0, v2}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/g/b/e;

    iput-object v0, v1, Lio/intercom/a/a/a/k;->cGG:Lio/intercom/a/a/a/g/b/e;

    move-object v0, v1

    check-cast v0, Lio/intercom/a/a/a/c/d/c/c;

    return-object v0
.end method
