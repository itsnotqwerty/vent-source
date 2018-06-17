.class public final Lio/intercom/a/a/a/c/c/s$c;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/c/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/c/o",
        "<",
        "Ljava/lang/Integer;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final cNn:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/c/s$c;->cNn:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/a/a/c/c/r;)Lio/intercom/a/a/a/c/c/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/c/r;",
            ")",
            "Lio/intercom/a/a/a/c/c/n",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/a/a/a/c/c/s;

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/s$c;->cNn:Landroid/content/res/Resources;

    invoke-static {}, Lio/intercom/a/a/a/c/c/v;->IS()Lio/intercom/a/a/a/c/c/v;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/intercom/a/a/a/c/c/s;-><init>(Landroid/content/res/Resources;Lio/intercom/a/a/a/c/c/n;)V

    return-object v0
.end method
