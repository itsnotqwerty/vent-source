.class public final La/a/a/i$a;
.super La/a/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final cqQ:La/a/a/d;

.field private final cqR:La/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, La/a/a/i$a;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(La/a/a/d;La/a/a/d;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The response\'s ID doesn\'t matches the request ID. Request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, La/a/a/d;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, La/a/a/d;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/a/i;-><init>(Ljava/lang/String;)V

    sget-boolean v0, La/a/a/i$a;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p1, La/a/a/d;->id:I

    iget v1, p2, La/a/a/d;->id:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, La/a/a/i$a;->cqQ:La/a/a/d;

    iput-object p2, p0, La/a/a/i$a;->cqR:La/a/a/d;

    return-void
.end method
