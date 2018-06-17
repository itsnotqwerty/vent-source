.class public Lcom/layer/sdk/internal/lsdkc/lsdka/c;
.super Lcom/layer/sdk/internal/lsdkc/lsdka/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkc/lsdka/c$b;,
        Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/sdk/internal/lsdkc/lsdka/a",
        "<",
        "Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;",
        "Lcom/layer/sdk/internal/lsdkc/lsdka/c$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkc/lsdka/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkc/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/a/a/a;Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;Lcom/layer/sdk/internal/lsdkd/lsdka/j;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/layer/sdk/internal/lsdkc/lsdka/a;-><init>(Lcom/layer/a/a/a;Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;Ljava/lang/Object;Lcom/layer/sdk/internal/lsdkd/lsdka/j;)V

    return-void
.end method

.method static synthetic wu()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;)Lcom/layer/sdk/internal/lsdkc/lsdka/c$b;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v13, 0x6

    new-instance v8, Lcom/layer/sdk/internal/lsdkc/lsdka/c$b;

    invoke-direct {v8}, Lcom/layer/sdk/internal/lsdkc/lsdka/c$b;-><init>()V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkc/lsdka/c;->a()Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    move-result-object v9

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkc/lsdka/c;->b()Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;

    move-result-object v10

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PostContentTask : Executing for MessagePart : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v9}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->n()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;->c()Ljava/util/UUID;

    move-result-object v6

    if-nez v6, :cond_1

    new-instance v0, Lcom/layer/a/c/e;

    const-string v1, "No stream ID"

    new-instance v2, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v3, Lcom/layer/sdk/exceptions/LayerException$Type;->INVALID_CONTENT:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v4, "MessagePart not associated with a Stream"

    invoke-direct {v2, v3, v4}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkc/lsdka/c;->a(Lcom/layer/a/c/e;)V

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;->a()Lcom/layer/b/d/k;

    move-result-object v2

    invoke-virtual {v9}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getSize()J

    move-result-wide v4

    new-instance v0, Lcom/layer/b/d/k$f;

    invoke-direct {v0, v2}, Lcom/layer/b/d/k$f;-><init>(Lcom/layer/b/d/k;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v11, 0x0

    const/16 v12, 0xc8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v1, v11

    invoke-virtual {v0, v1}, Lcom/layer/b/d/k$f;->a([Ljava/lang/Integer;)Lcom/layer/b/d/k$f;

    move-result-object v0

    new-instance v1, Lcom/layer/b/d/k$26;

    invoke-direct/range {v1 .. v6}, Lcom/layer/b/d/k$26;-><init>(Lcom/layer/b/d/k;Ljava/lang/String;JLjava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/layer/b/d/k$f;->a(Lcom/layer/b/d/k$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;->d()Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v1

    if-nez v1, :cond_5

    :goto_1
    invoke-virtual {v9}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/layer/sdk/internal/lsdkd/k$a;->e:Lcom/layer/sdk/internal/lsdkd/k$a;

    new-instance v4, Lcom/layer/sdk/internal/lsdkc/lsdka/c$1;

    invoke-direct {v4, p0, v0, v9, v1}, Lcom/layer/sdk/internal/lsdkc/lsdka/c$1;-><init>(Lcom/layer/sdk/internal/lsdkc/lsdka/c;Ljava/lang/String;Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/internal/lsdkd/h;)V

    invoke-static {v7, v2, v3, v4}, Lcom/layer/sdk/internal/lsdkd/l;->a(Lcom/layer/sdk/internal/lsdkd/f;Landroid/net/Uri;Lcom/layer/sdk/internal/lsdkd/k$a;Lcom/layer/sdk/internal/lsdkd/l$a;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/layer/sdk/internal/lsdkc/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to transact transactedCacheUpdate while updating messagePart url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v9, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/layer/sdk/internal/lsdkc/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MessagePart "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uploading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getSize()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes. MessagePart : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    move-object v1, v0

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;->b()Lcom/layer/sdk/internal/lsdkc/d;

    move-result-object v0

    invoke-virtual {v9}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->f()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v9}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getMimeType()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/layer/sdk/internal/lsdkc/lsdka/c$2;

    invoke-direct {v6, p0, v10, v9}, Lcom/layer/sdk/internal/lsdkc/lsdka/c$2;-><init>(Lcom/layer/sdk/internal/lsdkc/lsdka/c;Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;Lcom/layer/sdk/internal/lsdkd/lsdka/j;)V

    invoke-virtual/range {v0 .. v6}, Lcom/layer/sdk/internal/lsdkc/d;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLcom/layer/sdk/internal/lsdki/lsdkc/a$a;)V

    move-object v0, v8

    goto/16 :goto_0

    :cond_5
    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v7

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;->b()Lcom/layer/sdk/internal/lsdkc/d;

    move-result-object v0

    invoke-virtual {v9}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdkc/d;->a(Ljava/lang/String;J)J

    move-result-wide v4

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MessagePart "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resuming upload from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getSize()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes. MessagePart : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v13}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/layer/sdk/internal/lsdkc/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in PostContentTask for MessagePart : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    throw v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkc/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;)Lcom/layer/sdk/internal/lsdkc/lsdka/c$b;

    move-result-object v0

    return-object v0
.end method
