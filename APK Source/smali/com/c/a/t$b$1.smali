.class final Lcom/c/a/t$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/a/t$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bOl:Ljava/lang/Exception;

.field final synthetic bOm:Lcom/c/a/t$b;


# direct methods
.method constructor <init>(Lcom/c/a/t$b;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/c/a/t$b$1;->bOm:Lcom/c/a/t$b;

    iput-object p2, p0, Lcom/c/a/t$b$1;->bOl:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/c/a/t$b$1;->bOl:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
