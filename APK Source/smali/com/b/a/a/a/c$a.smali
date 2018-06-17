.class public final Lcom/b/a/a/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public bEN:I

.field public final bGf:Lcom/b/a/aa;

.field public final bIM:Lcom/b/a/ac;

.field public final brA:J

.field public bur:Ljava/util/Date;

.field public d:Ljava/util/Date;

.field public e:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Date;

.field public i:J

.field public j:J

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/b/a/aa;Lcom/b/a/ac;)V
    .locals 7

    const/4 v6, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, Lcom/b/a/a/a/c$a;->bEN:I

    iput-wide p1, p0, Lcom/b/a/a/a/c$a;->brA:J

    iput-object p3, p0, Lcom/b/a/a/a/c$a;->bGf:Lcom/b/a/aa;

    iput-object p4, p0, Lcom/b/a/a/a/c$a;->bIM:Lcom/b/a/ac;

    if-eqz p4, :cond_7

    iget-object v1, p4, Lcom/b/a/ac;->bMy:Lcom/b/a/t;

    const/4 v0, 0x0

    iget-object v2, v1, Lcom/b/a/t;->a:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    :goto_0
    if-ge v0, v2, :cond_7

    invoke-virtual {v1, v0}, Lcom/b/a/t;->dV(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/b/a/t;->dW(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Date"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lcom/b/a/a/a/f;->dE(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/b/a/a/a/c$a;->d:Ljava/util/Date;

    iput-object v4, p0, Lcom/b/a/a/a/c$a;->e:Ljava/lang/String;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "Expires"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lcom/b/a/a/a/f;->dE(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/b/a/a/a/c$a;->h:Ljava/util/Date;

    goto :goto_1

    :cond_2
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Lcom/b/a/a/a/f;->dE(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/b/a/a/a/c$a;->bur:Ljava/util/Date;

    iput-object v4, p0, Lcom/b/a/a/a/c$a;->g:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v5, "ETag"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-object v4, p0, Lcom/b/a/a/a/c$a;->k:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v5, "Age"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v4, v6}, Lcom/b/a/a/a/d;->g(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/b/a/a/a/c$a;->bEN:I

    goto :goto_1

    :cond_5
    sget-object v5, Lcom/b/a/a/a/j;->b:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/b/a/a/a/c$a;->i:J

    goto :goto_1

    :cond_6
    sget-object v5, Lcom/b/a/a/a/j;->c:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/b/a/a/a/c$a;->j:J

    goto :goto_1

    :cond_7
    return-void
.end method

.method public static b(Lcom/b/a/aa;)Z
    .locals 1

    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lcom/b/a/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lcom/b/a/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
