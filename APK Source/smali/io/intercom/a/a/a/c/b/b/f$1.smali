.class final Lio/intercom/a/a/a/c/b/b/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/b/b/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/a/a/a/c/b/b/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cLQ:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/b/f$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lio/intercom/a/a/a/c/b/b/f$1;->cLQ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final IE()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b/f$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b/f$1;->cLQ:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/b/f$1;->cLQ:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
