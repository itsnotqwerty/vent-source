.class final Lcom/b/a/a/b/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/a/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/b/a/a/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/b/a/a/b/a;->bKc:Lcom/b/a/a/b/a;

    invoke-virtual {p1, v0}, Lcom/b/a/a/b/p;->a(Lcom/b/a/a/b/a;)V

    return-void
.end method
