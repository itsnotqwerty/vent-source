.class public final La/a/a/f/c;
.super La/a/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/f/c$a;
    }
.end annotation


# instance fields
.field private final ctv:La/a/a/f/b;

.field private final ctw:La/a/a/c;

.field private ctx:I


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, La/a/a/f/c;->coG:La/a/a/a/a;

    invoke-direct {p0, v0}, La/a/a/f/c;-><init>(La/a/a/b;)V

    return-void
.end method

.method private constructor <init>(La/a/a/b;)V
    .locals 1

    invoke-direct {p0, p1}, La/a/a/a;-><init>(La/a/a/b;)V

    sget v0, La/a/a/f/c$a;->ctz:I

    iput v0, p0, La/a/a/f/c;->ctx:I

    new-instance v0, La/a/a/f/c$1;

    invoke-direct {v0, p0, p1}, La/a/a/f/c$1;-><init>(La/a/a/f/c;La/a/a/b;)V

    iput-object v0, p0, La/a/a/f/c;->ctv:La/a/a/f/b;

    new-instance v0, La/a/a/f/c$2;

    invoke-direct {v0, p0, p1}, La/a/a/f/c$2;-><init>(La/a/a/f/c;La/a/a/b;)V

    iput-object v0, p0, La/a/a/f/c;->ctw:La/a/a/c;

    return-void
.end method


# virtual methods
.method protected final a(La/a/a/d$a;)La/a/a/d;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iget v1, p0, La/a/a/f/c;->ctx:I

    sget v3, La/a/a/f/c$a;->ctB:I

    if-eq v1, v3, :cond_1

    :try_start_0
    iget-object v1, p0, La/a/a/f/c;->ctw:La/a/a/c;

    invoke-virtual {v1, p1}, La/a/a/c;->a(La/a/a/d$a;)La/a/a/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v1, p0, La/a/a/f/c;->ctx:I

    sget v3, La/a/a/f/c$a;->ctA:I

    if-eq v1, v3, :cond_0

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    sget-object v1, La/a/a/f/c;->coH:Ljava/util/logging/Logger;

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, La/a/a/f/c;->ctx:I

    sget v4, La/a/a/f/c$a;->ctB:I

    if-eq v1, v4, :cond_2

    const-string v1, "Resolution fall back to iterative mode because: "

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    sget-object v4, La/a/a/f/c;->coH:Ljava/util/logging/Logger;

    invoke-virtual {v4, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2
    :try_start_1
    iget-object v1, p0, La/a/a/f/c;->ctv:La/a/a/f/b;

    invoke-virtual {v1, p1}, La/a/a/f/b;->a(La/a/a/d$a;)La/a/a/d;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    if-nez v0, :cond_0

    invoke-static {v2}, La/a/a/i/f;->B(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " DNSClient did not return a response"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This should never been reached"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected final a(La/a/a/j;La/a/a/d;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final b(La/a/a/d$a;)La/a/a/d$a;
    .locals 0

    return-object p1
.end method
