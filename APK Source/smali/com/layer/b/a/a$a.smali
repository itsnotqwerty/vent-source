.class public final Lcom/layer/b/a/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/UUID;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field d:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a session with null Layer user ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a session with null remote user ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a session with null token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/layer/b/a/a$a;->a:Ljava/util/UUID;

    iput-object p2, p0, Lcom/layer/b/a/a$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/layer/b/a/a$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/layer/b/a/a$a;->d:Ljava/util/Date;

    return-void
.end method
