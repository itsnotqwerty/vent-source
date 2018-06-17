.class public final Lcom/layer/a/c/e;
.super Ljava/lang/Exception;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final bpL:Lcom/layer/a/c/d;


# direct methods
.method public constructor <init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p3, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/layer/a/c/e;->bpL:Lcom/layer/a/c/d;

    iput-object p2, p0, Lcom/layer/a/c/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/layer/a/c/d;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/layer/a/c/e;->bpL:Lcom/layer/a/c/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/a/c/e;->b:Ljava/lang/Object;

    return-void
.end method
