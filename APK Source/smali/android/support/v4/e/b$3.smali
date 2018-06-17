.class final Landroid/support/v4/e/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/e/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/e/b;->a(Landroid/content/Context;Landroid/support/v4/e/a;Landroid/support/v4/content/a/b$a;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/e/c$a",
        "<",
        "Landroid/support/v4/e/b$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/e/b$3;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic B(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Landroid/support/v4/e/b$c;

    invoke-static {}, Landroid/support/v4/e/b;->dz()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/support/v4/e/b;->dA()Landroid/support/v4/g/m;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/e/b$3;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    monitor-exit v1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Landroid/support/v4/e/b;->dA()Landroid/support/v4/g/m;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/e/b$3;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/g/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/e/c$a;

    invoke-interface {v1, p1}, Landroid/support/v4/e/c$a;->B(Ljava/lang/Object;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
