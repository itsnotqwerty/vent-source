.class public final Lcom/layer/atlas/util/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile bpq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/layer/atlas/util/b;->bpq:Z

    return-void
.end method

.method public static dm(I)Z
    .locals 1

    sget-boolean v0, Lcom/layer/atlas/util/b;->bpq:Z

    if-nez v0, :cond_0

    const-string v0, "LayerAtlas"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static du(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LayerAtlas"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LayerAtlas"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "LayerAtlas"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
