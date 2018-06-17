.class final Lcom/vent/b/b;
.super Ljava/lang/Exception;


# instance fields
.field final clz:Lcom/vent/b/d;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/vent/b/d;

    invoke-direct {v0, p1, p2}, Lcom/vent/b/d;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vent/b/b;-><init>(Lcom/vent/b/d;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    new-instance v0, Lcom/vent/b/d;

    invoke-direct {v0, p1, p2}, Lcom/vent/b/d;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/vent/b/b;-><init>(Lcom/vent/b/d;Ljava/lang/Exception;)V

    return-void
.end method

.method private constructor <init>(Lcom/vent/b/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vent/b/b;-><init>(Lcom/vent/b/d;Ljava/lang/Exception;)V

    return-void
.end method

.method private constructor <init>(Lcom/vent/b/d;Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p1, Lcom/vent/b/d;->cmd:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/vent/b/b;->clz:Lcom/vent/b/d;

    return-void
.end method
