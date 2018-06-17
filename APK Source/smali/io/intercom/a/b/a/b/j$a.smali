.class final Lio/intercom/a/b/a/b/j$a;
.super Ljava/io/Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/b/a/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/b/a/b/j$a$a;
    }
.end annotation


# instance fields
.field private final cKO:Ljava/lang/Appendable;

.field private final cRV:Lio/intercom/a/b/a/b/j$a$a;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Lio/intercom/a/b/a/b/j$a$a;

    invoke-direct {v0}, Lio/intercom/a/b/a/b/j$a$a;-><init>()V

    iput-object v0, p0, Lio/intercom/a/b/a/b/j$a;->cRV:Lio/intercom/a/b/a/b/j$a$a;

    iput-object p1, p0, Lio/intercom/a/b/a/b/j$a;->cKO:Ljava/lang/Appendable;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/b/a/b/j$a;->cKO:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public final write([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/b/a/b/j$a;->cRV:Lio/intercom/a/b/a/b/j$a$a;

    iput-object p1, v0, Lio/intercom/a/b/a/b/j$a$a;->chars:[C

    iget-object v0, p0, Lio/intercom/a/b/a/b/j$a;->cKO:Ljava/lang/Appendable;

    iget-object v1, p0, Lio/intercom/a/b/a/b/j$a;->cRV:Lio/intercom/a/b/a/b/j$a$a;

    add-int v2, p2, p3

    invoke-interface {v0, v1, p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-void
.end method
