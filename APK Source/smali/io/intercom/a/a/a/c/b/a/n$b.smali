.class final Lio/intercom/a/a/a/c/b/a/n$b;
.super Lio/intercom/a/a/a/c/b/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/a/a/c/b/a/d",
        "<",
        "Lio/intercom/a/a/a/c/b/a/n$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic Iz()Lio/intercom/a/a/a/c/b/a/m;
    .locals 1

    new-instance v0, Lio/intercom/a/a/a/c/b/a/n$a;

    invoke-direct {v0, p0}, Lio/intercom/a/a/a/c/b/a/n$a;-><init>(Lio/intercom/a/a/a/c/b/a/n$b;)V

    return-object v0
.end method

.method public final b(ILandroid/graphics/Bitmap$Config;)Lio/intercom/a/a/a/c/b/a/n$a;
    .locals 1

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/b/a/n$b;->IA()Lio/intercom/a/a/a/c/b/a/m;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/a/n$a;

    iput p1, v0, Lio/intercom/a/a/a/c/b/a/n$a;->size:I

    iput-object p2, v0, Lio/intercom/a/a/a/c/b/a/n$a;->bOP:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method
