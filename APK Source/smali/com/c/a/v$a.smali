.class final Lcom/c/a/v$a;
.super Ljava/util/concurrent/FutureTask;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Lcom/c/a/c;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/c/a/v$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final bOB:Lcom/c/a/c;


# direct methods
.method public constructor <init>(Lcom/c/a/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/c/a/v$a;->bOB:Lcom/c/a/c;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/c/a/v$a;

    iget-object v0, p0, Lcom/c/a/v$a;->bOB:Lcom/c/a/c;

    iget v0, v0, Lcom/c/a/c;->bNi:I

    iget-object v1, p1, Lcom/c/a/v$a;->bOB:Lcom/c/a/c;

    iget v1, v1, Lcom/c/a/c;->bNi:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/c/a/v$a;->bOB:Lcom/c/a/c;

    iget v0, v0, Lcom/c/a/c;->bMW:I

    iget-object v1, p1, Lcom/c/a/v$a;->bOB:Lcom/c/a/c;

    iget v1, v1, Lcom/c/a/c;->bMW:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    sub-int v0, v1, v0

    goto :goto_0
.end method
