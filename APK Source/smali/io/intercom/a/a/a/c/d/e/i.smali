.class public final Lio/intercom/a/a/a/c/d/e/i;
.super Ljava/lang/Object;


# static fields
.field public static final cNP:Lio/intercom/a/a/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/i",
            "<",
            "Lio/intercom/a/a/a/c/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final cOT:Lio/intercom/a/a/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/i",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "io.intercom.com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    sget-object v1, Lio/intercom/a/a/a/c/b;->cHL:Lio/intercom/a/a/a/c/b;

    invoke-static {v0, v1}, Lio/intercom/a/a/a/c/i;->n(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/a/a/a/c/i;

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/c/d/e/i;->cNP:Lio/intercom/a/a/a/c/i;

    const-string v0, "io.intercom.com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lio/intercom/a/a/a/c/i;->n(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/a/a/a/c/i;

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/c/d/e/i;->cOT:Lio/intercom/a/a/a/c/i;

    return-void
.end method
