.class final Lio/intercom/a/a/a/c/d/a/s$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/d/a/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/d/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final cIt:Lio/intercom/a/a/a/c/d/a/q;

.field private final cOh:Lio/intercom/a/a/a/i/c;


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/c/d/a/q;Lio/intercom/a/a/a/i/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/d/a/s$a;->cIt:Lio/intercom/a/a/a/c/d/a/q;

    iput-object p2, p0, Lio/intercom/a/a/a/c/d/a/s$a;->cOh:Lio/intercom/a/a/a/i/c;

    return-void
.end method


# virtual methods
.method public final Jc()V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/s$a;->cIt:Lio/intercom/a/a/a/c/d/a/q;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/d/a/q;->Jg()V

    return-void
.end method

.method public final a(Lio/intercom/a/a/a/c/b/a/e;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/s$a;->cOh:Lio/intercom/a/a/a/i/c;

    iget-object v0, v0, Lio/intercom/a/a/a/i/c;->cQT:Ljava/io/IOException;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Lio/intercom/a/a/a/c/b/a/e;->g(Landroid/graphics/Bitmap;)V

    :cond_0
    throw v0

    :cond_1
    return-void
.end method
