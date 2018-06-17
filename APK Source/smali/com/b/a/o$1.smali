.class final Lcom/b/a/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bIf:Lcom/b/a/o;


# direct methods
.method constructor <init>(Lcom/b/a/o;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/o$1;->bIf:Lcom/b/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/o$1;->bIf:Lcom/b/a/o;

    invoke-static {v0}, Lcom/b/a/o;->a(Lcom/b/a/o;)V

    return-void
.end method
