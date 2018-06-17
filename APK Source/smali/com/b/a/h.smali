.class public final Lcom/b/a/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/h$a;,
        Lcom/b/a/h$b;
    }
.end annotation


# instance fields
.field public volatile a:Z

.field final bGe:Lcom/b/a/x;

.field bGf:Lcom/b/a/aa;

.field bGg:Lcom/b/a/a/a/g;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/b/a/x;Lcom/b/a/aa;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/b/a/x;->Ah()Lcom/b/a/x;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/h;->bGe:Lcom/b/a/x;

    iput-object p2, p0, Lcom/b/a/h;->bGf:Lcom/b/a/aa;

    return-void
.end method


# virtual methods
.method final a(Lcom/b/a/aa;Z)Lcom/b/a/ac;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/b/a/aa;->bMp:Lcom/b/a/ab;

    if-eqz v2, :cond_63

    invoke-virtual/range {p1 .. p1}, Lcom/b/a/aa;->Ak()Lcom/b/a/aa$a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/b/a/ab;->wt()Lcom/b/a/w;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "Content-Type"

    invoke-virtual {v4}, Lcom/b/a/w;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/b/a/aa$a;->P(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    :cond_0
    invoke-virtual {v2}, Lcom/b/a/ab;->a()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    const-string v2, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/b/a/aa$a;->P(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    const-string v2, "Transfer-Encoding"

    invoke-virtual {v3, v2}, Lcom/b/a/aa$a;->dM(Ljava/lang/String;)Lcom/b/a/aa$a;

    :goto_0
    invoke-virtual {v3}, Lcom/b/a/aa$a;->An()Lcom/b/a/aa;

    move-result-object v4

    :goto_1
    new-instance v2, Lcom/b/a/a/a/g;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/b/a/h;->bGe:Lcom/b/a/x;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v7, p2

    invoke-direct/range {v2 .. v10}, Lcom/b/a/a/a/g;-><init>(Lcom/b/a/x;Lcom/b/a/aa;ZZZLcom/b/a/m;Lcom/b/a/a/a/p;Lcom/b/a/ac;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/b/a/h;->bGg:Lcom/b/a/a/a/g;

    const/4 v2, 0x0

    move v14, v2

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/b/a/h;->a:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/h;->bGg:Lcom/b/a/a/a/g;

    invoke-virtual {v2}, Lcom/b/a/a/a/g;->h()V

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v2, "Transfer-Encoding"

    const-string v4, "chunked"

    invoke-virtual {v3, v2, v4}, Lcom/b/a/aa$a;->P(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    const-string v2, "Content-Length"

    invoke-virtual {v3, v2}, Lcom/b/a/aa$a;->dM(Ljava/lang/String;)Lcom/b/a/aa$a;

    goto :goto_0

    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/b/a/h;->bGg:Lcom/b/a/a/a/g;

    iget-object v2, v15, Lcom/b/a/a/a/g;->bJq:Lcom/b/a/a/a/c;

    if-nez v2, :cond_33

    iget-object v2, v15, Lcom/b/a/a/a/g;->bJi:Lcom/b/a/a/a/t;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
    :try_end_0
    .catch Lcom/b/a/a/a/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/b/a/a/a/o; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lcom/b/a/a/a/l;->zH()Ljava/io/IOException;

    move-result-object v2

    throw v2

    :cond_3
    :try_start_1
    iget-object v2, v15, Lcom/b/a/a/a/g;->bJj:Lcom/b/a/aa;

    invoke-virtual {v2}, Lcom/b/a/aa;->Ak()Lcom/b/a/aa$a;

    move-result-object v3

    const-string v4, "Host"

    invoke-virtual {v2, v4}, Lcom/b/a/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "Host"

    invoke-virtual {v2}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v5

    invoke-static {v5}, Lcom/b/a/a/a/g;->d(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/b/a/aa$a;->P(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    :cond_4
    iget-object v4, v15, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    if-eqz v4, :cond_5

    iget-object v4, v15, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    iget-object v4, v4, Lcom/b/a/m;->bIl:Lcom/b/a/y;

    sget-object v5, Lcom/b/a/y;->bJR:Lcom/b/a/y;

    if-eq v4, v5, :cond_6

    :cond_5
    const-string v4, "Connection"

    invoke-virtual {v2, v4}, Lcom/b/a/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    const-string v4, "Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v3, v4, v5}, Lcom/b/a/aa$a;->P(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    :cond_6
    const-string v4, "Accept-Encoding"

    invoke-virtual {v2, v4}, Lcom/b/a/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/b/a/a/a/g;->brj:Z

    const-string v4, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v3, v4, v5}, Lcom/b/a/aa$a;->P(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    :cond_7
    iget-object v4, v15, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    iget-object v4, v4, Lcom/b/a/x;->bLX:Ljava/net/CookieHandler;

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/b/a/aa$a;->An()Lcom/b/a/aa;

    move-result-object v5

    iget-object v5, v5, Lcom/b/a/aa;->bMo:Lcom/b/a/t;

    invoke-static {v5}, Lcom/b/a/a/a/j;->d(Lcom/b/a/t;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/b/a/aa;->Ad()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/b/a/a/a/j;->a(Lcom/b/a/aa$a;Ljava/util/Map;)V

    :cond_8
    const-string v4, "User-Agent"

    invoke-virtual {v2, v4}, Lcom/b/a/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    const-string v2, "User-Agent"

    const-string v4, "okhttp/${project.version}"

    invoke-virtual {v3, v2, v4}, Lcom/b/a/aa$a;->P(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    :cond_9
    invoke-virtual {v3}, Lcom/b/a/aa$a;->An()Lcom/b/a/aa;

    move-result-object v16

    sget-object v2, Lcom/b/a/a/b;->bIs:Lcom/b/a/a/b;

    iget-object v3, v15, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    invoke-virtual {v2, v3}, Lcom/b/a/a/b;->a(Lcom/b/a/x;)Lcom/b/a/a/c;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-interface {v2}, Lcom/b/a/a/c;->zu()Lcom/b/a/ac;

    move-result-object v2

    move-object v8, v2

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v9, Lcom/b/a/a/a/c$a;

    move-object/from16 v0, v16

    invoke-direct {v9, v2, v3, v0, v8}, Lcom/b/a/a/a/c$a;-><init>(JLcom/b/a/aa;Lcom/b/a/ac;)V

    iget-object v2, v9, Lcom/b/a/a/a/c$a;->bIM:Lcom/b/a/ac;

    if-nez v2, :cond_11

    new-instance v2, Lcom/b/a/a/a/c;

    iget-object v3, v9, Lcom/b/a/a/a/c$a;->bGf:Lcom/b/a/aa;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/b/a/a/a/c;-><init>(Lcom/b/a/aa;Lcom/b/a/ac;B)V

    :goto_4
    iget-object v3, v2, Lcom/b/a/a/a/c;->bIK:Lcom/b/a/aa;

    if-eqz v3, :cond_a

    iget-object v3, v9, Lcom/b/a/a/a/c$a;->bGf:Lcom/b/a/aa;

    invoke-virtual {v3}, Lcom/b/a/aa;->Al()Lcom/b/a/g;

    move-result-object v3

    iget-boolean v3, v3, Lcom/b/a/g;->m:Z

    if-eqz v3, :cond_a

    new-instance v2, Lcom/b/a/a/a/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/b/a/a/a/c;-><init>(Lcom/b/a/aa;Lcom/b/a/ac;B)V

    :cond_a
    iput-object v2, v15, Lcom/b/a/a/a/g;->bJq:Lcom/b/a/a/a/c;

    iget-object v2, v15, Lcom/b/a/a/a/g;->bJq:Lcom/b/a/a/a/c;

    iget-object v2, v2, Lcom/b/a/a/a/c;->bIK:Lcom/b/a/aa;

    iput-object v2, v15, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    iget-object v2, v15, Lcom/b/a/a/a/g;->bJq:Lcom/b/a/a/a/c;

    iget-object v2, v2, Lcom/b/a/a/a/c;->bIL:Lcom/b/a/ac;

    iput-object v2, v15, Lcom/b/a/a/a/g;->bJl:Lcom/b/a/ac;

    if-eqz v8, :cond_b

    iget-object v2, v15, Lcom/b/a/a/a/g;->bJl:Lcom/b/a/ac;

    if-nez v2, :cond_b

    iget-object v2, v8, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    invoke-static {v2}, Lcom/b/a/a/i;->a(Ljava/io/Closeable;)V

    :cond_b
    iget-object v2, v15, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    if-eqz v2, :cond_36

    iget-object v2, v15, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    if-nez v2, :cond_31

    iget-object v2, v15, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    if-eqz v2, :cond_2c

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
    :try_end_1
    .catch Lcom/b/a/a/a/l; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/b/a/a/a/o; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_1
    move-exception v2

    move-object v13, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/b/a/h;->bGg:Lcom/b/a/a/a/g;

    iget-object v2, v12, Lcom/b/a/a/a/g;->bJf:Lcom/b/a/a/a/p;

    if-eqz v2, :cond_c

    iget-object v2, v12, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    if-eqz v2, :cond_c

    iget-object v2, v12, Lcom/b/a/a/a/g;->bJf:Lcom/b/a/a/a/p;

    iget-object v3, v13, Lcom/b/a/a/a/o;->bJA:Ljava/io/IOException;

    invoke-virtual {v12, v2, v3}, Lcom/b/a/a/a/g;->a(Lcom/b/a/a/a/p;Ljava/io/IOException;)V

    :cond_c
    iget-object v2, v12, Lcom/b/a/a/a/g;->bJf:Lcom/b/a/a/a/p;

    if-nez v2, :cond_d

    iget-object v2, v12, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    if-eqz v2, :cond_f

    :cond_d
    iget-object v2, v12, Lcom/b/a/a/a/g;->bJf:Lcom/b/a/a/a/p;

    if-eqz v2, :cond_e

    iget-object v2, v12, Lcom/b/a/a/a/g;->bJf:Lcom/b/a/a/a/p;

    invoke-virtual {v2}, Lcom/b/a/a/a/p;->a()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    iget-object v2, v12, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    iget-boolean v2, v2, Lcom/b/a/x;->bMi:Z

    if-nez v2, :cond_48

    const/4 v2, 0x0

    :goto_5
    if-nez v2, :cond_4d

    :cond_f
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_4e

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/b/a/h;->bGg:Lcom/b/a/a/a/g;

    goto/16 :goto_2

    :cond_10
    const/4 v2, 0x0

    move-object v8, v2

    goto/16 :goto_3

    :cond_11
    :try_start_2
    iget-object v2, v9, Lcom/b/a/a/a/c$a;->bGf:Lcom/b/a/aa;

    invoke-virtual {v2}, Lcom/b/a/aa;->k()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v9, Lcom/b/a/a/a/c$a;->bIM:Lcom/b/a/ac;

    iget-object v2, v2, Lcom/b/a/ac;->bMx:Lcom/b/a/s;

    if-nez v2, :cond_16

    new-instance v2, Lcom/b/a/a/a/c;

    iget-object v3, v9, Lcom/b/a/a/a/c$a;->bGf:Lcom/b/a/aa;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/b/a/a/a/c;-><init>(Lcom/b/a/aa;Lcom/b/a/ac;B)V
    :try_end_2
    .catch Lcom/b/a/a/a/l; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/b/a/a/a/o; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v2

    move-object v11, v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/b/a/h;->bGg:Lcom/b/a/a/a/g;

    iget-object v2, v10, Lcom/b/a/a/a/g;->bJf:Lcom/b/a/a/a/p;

    if-eqz v2, :cond_12

    iget-object v2, v10, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    if-eqz v2, :cond_12

    iget-object v2, v10, Lcom/b/a/a/a/g;->bJf:Lcom/b/a/a/a/p;

    invoke-virtual {v10, v2, v11}, Lcom/b/a/a/a/g;->a(Lcom/b/a/a/a/p;Ljava/io/IOException;)V

    :cond_12
    iget-object v2, v10, Lcom/b/a/a/a/g;->bJf:Lcom/b/a/a/a/p;

    if-nez v2, :cond_13

    iget-object v2, v10, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    if-eqz v2, :cond_15

    :cond_13
    iget-object v2, v10, Lcom/b/a/a/a/g;->bJf:Lcom/b/a/a/a/p;

    if-eqz v2, :cond_14

    iget-object v2, v10, Lcom/b/a/a/a/g;->bJf:Lcom/b/a/a/a/p;

    invoke-virtual {v2}, Lcom/b/a/a/a/p;->a()Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    iget-object v2, v10, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    iget-boolean v2, v2, Lcom/b/a/x;->bMi:Z

    if-nez v2, :cond_4f

    const/4 v2, 0x0

    :goto_7
    if-nez v2, :cond_52

    :cond_15
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_53

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/b/a/h;->bGg:Lcom/b/a/a/a/g;

    goto/16 :goto_2

    :cond_16
    :try_start_3
    iget-object v2, v9, Lcom/b/a/a/a/c$a;->bIM:Lcom/b/a/ac;

    iget-object v3, v9, Lcom/b/a/a/a/c$a;->bGf:Lcom/b/a/aa;

    invoke-static {v2, v3}, Lcom/b/a/a/a/c;->a(Lcom/b/a/ac;Lcom/b/a/aa;)Z

    move-result v2

    if-nez v2, :cond_17

    new-instance v2, Lcom/b/a/a/a/c;

    iget-object v3, v9, Lcom/b/a/a/a/c$a;->bGf:Lcom/b/a/aa;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/b/a/a/a/c;-><init>(Lcom/b/a/aa;Lcom/b/a/ac;B)V

    goto/16 :goto_4

    :cond_17
    iget-object v2, v9, Lcom/b/a/a/a/c$a;->bGf:Lcom/b/a/aa;

    invoke-virtual {v2}, Lcom/b/a/aa;->Al()Lcom/b/a/g;

    move-result-object v10

    iget-boolean v2, v10, Lcom/b/a/g;->d:Z

    if-nez v2, :cond_18

    iget-object v2, v9, Lcom/b/a/a/a/c$a;->bGf:Lcom/b/a/aa;

    invoke-static {v2}, Lcom/b/a/a/a/c$a;->b(Lcom/b/a/aa;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    new-instance v2, Lcom/b/a/a/a/c;

    iget-object v3, v9, Lcom/b/a/a/a/c$a;->bGf:Lcom/b/a/aa;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/b/a/a/a/c;-><init>(Lcom/b/a/aa;Lcom/b/a/ac;B)V

    goto/16 :goto_4

    :cond_19
    iget-object v2, v9, Lcom/b/a/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v2, :cond_1f

    const-wide/16 v2, 0x0

    iget-wide v4, v9, Lcom/b/a/a/a/c$a;->j:J

    iget-object v6, v9, Lcom/b/a/a/a/c$a;->d:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_9
    iget v4, v9, Lcom/b/a/a/a/c$a;->bEN:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1a

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v5, v9, Lcom/b/a/a/a/c$a;->bEN:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_1a
    iget-wide v4, v9, Lcom/b/a/a/a/c$a;->j:J

    iget-wide v6, v9, Lcom/b/a/a/a/c$a;->i:J

    sub-long/2addr v4, v6

    iget-wide v6, v9, Lcom/b/a/a/a/c$a;->brA:J

    iget-wide v12, v9, Lcom/b/a/a/a/c$a;->j:J

    sub-long/2addr v6, v12

    add-long/2addr v2, v4

    add-long v12, v2, v6

    iget-object v2, v9, Lcom/b/a/a/a/c$a;->bIM:Lcom/b/a/ac;

    invoke-virtual {v2}, Lcom/b/a/ac;->Ar()Lcom/b/a/g;

    move-result-object v2

    iget v3, v2, Lcom/b/a/g;->f:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_20

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v2, v2, Lcom/b/a/g;->f:I

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :cond_1b
    :goto_a
    iget v4, v10, Lcom/b/a/g;->f:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_62

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v5, v10, Lcom/b/a/g;->f:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-wide v6, v2

    :goto_b
    const-wide/16 v2, 0x0

    iget v4, v10, Lcom/b/a/g;->bEN:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_61

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, v10, Lcom/b/a/g;->bEN:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    move-wide v4, v2

    :goto_c
    const-wide/16 v2, 0x0

    iget-object v11, v9, Lcom/b/a/a/a/c$a;->bIM:Lcom/b/a/ac;

    invoke-virtual {v11}, Lcom/b/a/ac;->Ar()Lcom/b/a/g;

    move-result-object v11

    iget-boolean v0, v11, Lcom/b/a/g;->bGd:Z

    move/from16 v17, v0

    if-nez v17, :cond_1c

    iget v0, v10, Lcom/b/a/g;->bCG:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1c

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, v10, Lcom/b/a/g;->bCG:I

    int-to-long v0, v3

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :cond_1c
    iget-boolean v10, v11, Lcom/b/a/g;->d:Z

    if-nez v10, :cond_27

    add-long v10, v12, v4

    add-long/2addr v2, v6

    cmp-long v2, v10, v2

    if-gez v2, :cond_27

    iget-object v2, v9, Lcom/b/a/a/a/c$a;->bIM:Lcom/b/a/ac;

    invoke-virtual {v2}, Lcom/b/a/ac;->Aq()Lcom/b/a/ac$a;

    move-result-object v3

    add-long/2addr v4, v12

    cmp-long v2, v4, v6

    if-ltz v2, :cond_1d

    const-string v2, "Warning"

    const-string v4, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v3, v2, v4}, Lcom/b/a/ac$a;->S(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ac$a;

    :cond_1d
    const-wide/32 v4, 0x5265c00

    cmp-long v2, v12, v4

    if-lez v2, :cond_1e

    iget-object v2, v9, Lcom/b/a/a/a/c$a;->bIM:Lcom/b/a/ac;

    invoke-virtual {v2}, Lcom/b/a/ac;->Ar()Lcom/b/a/g;

    move-result-object v2

    iget v2, v2, Lcom/b/a/g;->f:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_26

    iget-object v2, v9, Lcom/b/a/a/a/c$a;->h:Ljava/util/Date;

    if-nez v2, :cond_26

    const/4 v2, 0x1

    :goto_d
    if-eqz v2, :cond_1e

    const-string v2, "Warning"

    const-string v4, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v3, v2, v4}, Lcom/b/a/ac$a;->S(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ac$a;

    :cond_1e
    new-instance v2, Lcom/b/a/a/a/c;

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/b/a/ac$a;->xb()Lcom/b/a/ac;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/b/a/a/a/c;-><init>(Lcom/b/a/aa;Lcom/b/a/ac;B)V

    goto/16 :goto_4

    :cond_1f
    const-wide/16 v2, 0x0

    goto/16 :goto_9

    :cond_20
    iget-object v2, v9, Lcom/b/a/a/a/c$a;->h:Ljava/util/Date;

    if-eqz v2, :cond_22

    iget-object v2, v9, Lcom/b/a/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v2, :cond_21

    iget-object v2, v9, Lcom/b/a/a/a/c$a;->d:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :goto_e
    iget-object v4, v9, Lcom/b/a/a/a/c$a;->h:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1b

    const-wide/16 v2, 0x0

    goto/16 :goto_a

    :cond_21
    iget-wide v2, v9, Lcom/b/a/a/a/c$a;->j:J

    goto :goto_e

    :cond_22
    iget-object v2, v9, Lcom/b/a/a/a/c$a;->bur:Ljava/util/Date;

    if-eqz v2, :cond_25

    iget-object v2, v9, Lcom/b/a/a/a/c$a;->bIM:Lcom/b/a/ac;

    iget-object v2, v2, Lcom/b/a/ac;->bIK:Lcom/b/a/aa;

    invoke-virtual {v2}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_25

    iget-object v2, v9, Lcom/b/a/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v2, :cond_23

    iget-object v2, v9, Lcom/b/a/a/a/c$a;->d:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :goto_f
    iget-object v4, v9, Lcom/b/a/a/a/c$a;->bur:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_24

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    goto/16 :goto_a

    :cond_23
    iget-wide v2, v9, Lcom/b/a/a/a/c$a;->i:J

    goto :goto_f

    :cond_24
    const-wide/16 v2, 0x0

    goto/16 :goto_a

    :cond_25
    const-wide/16 v2, 0x0

    goto/16 :goto_a

    :cond_26
    const/4 v2, 0x0

    goto :goto_d

    :cond_27
    iget-object v2, v9, Lcom/b/a/a/a/c$a;->bGf:Lcom/b/a/aa;

    invoke-virtual {v2}, Lcom/b/a/aa;->Ak()Lcom/b/a/aa$a;

    move-result-object v2

    iget-object v3, v9, Lcom/b/a/a/a/c$a;->k:Ljava/lang/String;

    if-eqz v3, :cond_29

    const-string v3, "If-None-Match"

    iget-object v4, v9, Lcom/b/a/a/a/c$a;->k:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/b/a/aa$a;->P(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    :cond_28
    :goto_10
    invoke-virtual {v2}, Lcom/b/a/aa$a;->An()Lcom/b/a/aa;

    move-result-object v3

    invoke-static {v3}, Lcom/b/a/a/a/c$a;->b(Lcom/b/a/aa;)Z

    move-result v2

    if-eqz v2, :cond_2b

    new-instance v2, Lcom/b/a/a/a/c;

    iget-object v4, v9, Lcom/b/a/a/a/c$a;->bIM:Lcom/b/a/ac;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/b/a/a/a/c;-><init>(Lcom/b/a/aa;Lcom/b/a/ac;B)V

    goto/16 :goto_4

    :cond_29
    iget-object v3, v9, Lcom/b/a/a/a/c$a;->bur:Ljava/util/Date;

    if-eqz v3, :cond_2a

    const-string v3, "If-Modified-Since"

    iget-object v4, v9, Lcom/b/a/a/a/c$a;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/b/a/aa$a;->P(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    goto :goto_10

    :cond_2a
    iget-object v3, v9, Lcom/b/a/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v3, :cond_28

    const-string v3, "If-Modified-Since"

    iget-object v4, v9, Lcom/b/a/a/a/c$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/b/a/aa$a;->P(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    goto :goto_10

    :cond_2b
    new-instance v2, Lcom/b/a/a/a/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/b/a/a/a/c;-><init>(Lcom/b/a/aa;Lcom/b/a/ac;B)V

    goto/16 :goto_4

    :cond_2c
    iget-object v2, v15, Lcom/b/a/a/a/g;->bJf:Lcom/b/a/a/a/p;

    if-nez v2, :cond_30

    iget-object v13, v15, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    iget-object v4, v15, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    invoke-virtual {v4}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2e

    :cond_2d
    new-instance v2, Lcom/b/a/a/a/l;

    new-instance v3, Ljava/net/UnknownHostException;

    invoke-virtual {v4}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/b/a/a/a/l;-><init>(Ljava/io/IOException;)V

    throw v2

    :cond_2e
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4}, Lcom/b/a/aa;->k()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v6, v13, Lcom/b/a/x;->bMb:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v7, v13, Lcom/b/a/x;->bMc:Ljavax/net/ssl/HostnameVerifier;

    iget-object v8, v13, Lcom/b/a/x;->bMd:Lcom/b/a/j;

    :cond_2f
    new-instance v2, Lcom/b/a/a;

    invoke-virtual {v4}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v4

    invoke-static {v4}, Lcom/b/a/a/i;->c(Ljava/net/URL;)I

    move-result v4

    iget-object v5, v13, Lcom/b/a/x;->bMa:Ljavax/net/SocketFactory;

    iget-object v9, v13, Lcom/b/a/x;->bMe:Lcom/b/a/e;

    iget-object v10, v13, Lcom/b/a/x;->bJE:Ljava/net/Proxy;

    iget-object v11, v13, Lcom/b/a/x;->bzR:Ljava/util/List;

    iget-object v12, v13, Lcom/b/a/x;->bzS:Ljava/util/List;

    iget-object v13, v13, Lcom/b/a/x;->bFR:Ljava/net/ProxySelector;

    invoke-direct/range {v2 .. v13}, Lcom/b/a/a;-><init>(Ljava/lang/String;ILjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/b/a/j;Lcom/b/a/e;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    iput-object v2, v15, Lcom/b/a/a/a/g;->bJe:Lcom/b/a/a;
    :try_end_3
    .catch Lcom/b/a/a/a/l; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/b/a/a/a/o; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    iget-object v2, v15, Lcom/b/a/a/a/g;->bJe:Lcom/b/a/a;

    iget-object v3, v15, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    iget-object v4, v15, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    new-instance v5, Lcom/b/a/a/a/p;

    invoke-virtual {v3}, Lcom/b/a/aa;->Ad()Ljava/net/URI;

    move-result-object v3

    invoke-direct {v5, v2, v3, v4}, Lcom/b/a/a/a/p;-><init>(Lcom/b/a/a;Ljava/net/URI;Lcom/b/a/x;)V

    iput-object v5, v15, Lcom/b/a/a/a/g;->bJf:Lcom/b/a/a/a/p;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/b/a/a/a/l; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/b/a/a/a/o; {:try_start_4 .. :try_end_4} :catch_1

    :cond_30
    :try_start_5
    invoke-virtual {v15}, Lcom/b/a/a/a/g;->zC()Lcom/b/a/m;

    move-result-object v2

    sget-object v3, Lcom/b/a/a/b;->bIs:Lcom/b/a/a/b;

    iget-object v4, v15, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    iget-object v5, v15, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    invoke-virtual {v3, v4, v2, v15, v5}, Lcom/b/a/a/b;->a(Lcom/b/a/x;Lcom/b/a/m;Lcom/b/a/a/a/g;Lcom/b/a/aa;)V

    iput-object v2, v15, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    iget-object v2, v15, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    iget-object v2, v2, Lcom/b/a/m;->bIg:Lcom/b/a/c;

    iput-object v2, v15, Lcom/b/a/a/a/g;->bJg:Lcom/b/a/c;

    :cond_31
    sget-object v2, Lcom/b/a/a/b;->bIs:Lcom/b/a/a/b;

    iget-object v3, v15, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    invoke-virtual {v2, v3, v15}, Lcom/b/a/a/b;->a(Lcom/b/a/m;Lcom/b/a/a/a/g;)Lcom/b/a/a/a/t;

    move-result-object v2

    iput-object v2, v15, Lcom/b/a/a/a/g;->bJi:Lcom/b/a/a/a/t;

    iget-boolean v2, v15, Lcom/b/a/a/a/g;->s:Z

    if-eqz v2, :cond_33

    invoke-virtual {v15}, Lcom/b/a/a/a/g;->c()Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, v15, Lcom/b/a/a/a/g;->bJn:Lb/r;

    if-nez v2, :cond_33

    invoke-static/range {v16 .. v16}, Lcom/b/a/a/a/j;->d(Lcom/b/a/aa;)J

    move-result-wide v2

    iget-boolean v4, v15, Lcom/b/a/a/a/g;->c:Z

    if-eqz v4, :cond_35

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-lez v4, :cond_32

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_3
    move-exception v2

    new-instance v3, Lcom/b/a/a/a/l;

    invoke-direct {v3, v2}, Lcom/b/a/a/a/l;-><init>(Ljava/io/IOException;)V

    throw v3

    :cond_32
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_34

    iget-object v4, v15, Lcom/b/a/a/a/g;->bJi:Lcom/b/a/a/a/t;

    iget-object v5, v15, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    invoke-interface {v4, v5}, Lcom/b/a/a/a/t;->c(Lcom/b/a/aa;)V

    new-instance v4, Lcom/b/a/a/a/n;

    long-to-int v2, v2

    invoke-direct {v4, v2}, Lcom/b/a/a/a/n;-><init>(I)V

    iput-object v4, v15, Lcom/b/a/a/a/g;->bJn:Lb/r;

    :cond_33
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/b/a/h;->bGg:Lcom/b/a/a/a/g;

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    if-nez v2, :cond_3b

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    if-nez v2, :cond_39

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJl:Lcom/b/a/ac;

    if-nez v2, :cond_39

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "call sendRequest() first!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_34
    new-instance v2, Lcom/b/a/a/a/n;

    invoke-direct {v2}, Lcom/b/a/a/a/n;-><init>()V

    iput-object v2, v15, Lcom/b/a/a/a/g;->bJn:Lb/r;

    goto :goto_11

    :cond_35
    iget-object v4, v15, Lcom/b/a/a/a/g;->bJi:Lcom/b/a/a/a/t;

    iget-object v5, v15, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    invoke-interface {v4, v5}, Lcom/b/a/a/a/t;->c(Lcom/b/a/aa;)V

    iget-object v4, v15, Lcom/b/a/a/a/g;->bJi:Lcom/b/a/a/a/t;

    iget-object v5, v15, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    invoke-interface {v4, v5, v2, v3}, Lcom/b/a/a/a/t;->a(Lcom/b/a/aa;J)Lb/r;

    move-result-object v2

    iput-object v2, v15, Lcom/b/a/a/a/g;->bJn:Lb/r;

    goto :goto_11

    :cond_36
    iget-object v2, v15, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    if-eqz v2, :cond_37

    sget-object v2, Lcom/b/a/a/b;->bIs:Lcom/b/a/a/b;

    iget-object v3, v15, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    iget-object v3, v3, Lcom/b/a/x;->bMf:Lcom/b/a/o;

    iget-object v4, v15, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    invoke-virtual {v2, v3, v4}, Lcom/b/a/a/b;->a(Lcom/b/a/o;Lcom/b/a/m;)V

    const/4 v2, 0x0

    iput-object v2, v15, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    :cond_37
    iget-object v2, v15, Lcom/b/a/a/a/g;->bJl:Lcom/b/a/ac;

    if-eqz v2, :cond_38

    iget-object v2, v15, Lcom/b/a/a/a/g;->bJl:Lcom/b/a/ac;

    invoke-virtual {v2}, Lcom/b/a/ac;->Aq()Lcom/b/a/ac$a;

    move-result-object v2

    iget-object v3, v15, Lcom/b/a/a/a/g;->bJj:Lcom/b/a/aa;

    iput-object v3, v2, Lcom/b/a/ac$a;->bIK:Lcom/b/a/aa;

    iget-object v3, v15, Lcom/b/a/a/a/g;->bJh:Lcom/b/a/ac;

    invoke-static {v3}, Lcom/b/a/a/a/g;->f(Lcom/b/a/ac;)Lcom/b/a/ac;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/b/a/ac$a;->l(Lcom/b/a/ac;)Lcom/b/a/ac$a;

    move-result-object v2

    iget-object v3, v15, Lcom/b/a/a/a/g;->bJl:Lcom/b/a/ac;

    invoke-static {v3}, Lcom/b/a/a/a/g;->f(Lcom/b/a/ac;)Lcom/b/a/ac;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/b/a/ac$a;->k(Lcom/b/a/ac;)Lcom/b/a/ac$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/ac$a;->xb()Lcom/b/a/ac;

    move-result-object v2

    iput-object v2, v15, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    :goto_12
    iget-object v2, v15, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    invoke-virtual {v15, v2}, Lcom/b/a/a/a/g;->g(Lcom/b/a/ac;)Lcom/b/a/ac;

    move-result-object v2

    iput-object v2, v15, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    goto :goto_11

    :cond_38
    new-instance v2, Lcom/b/a/ac$a;

    invoke-direct {v2}, Lcom/b/a/ac$a;-><init>()V

    iget-object v3, v15, Lcom/b/a/a/a/g;->bJj:Lcom/b/a/aa;

    iput-object v3, v2, Lcom/b/a/ac$a;->bIK:Lcom/b/a/aa;

    iget-object v3, v15, Lcom/b/a/a/a/g;->bJh:Lcom/b/a/ac;

    invoke-static {v3}, Lcom/b/a/a/a/g;->f(Lcom/b/a/ac;)Lcom/b/a/ac;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/b/a/ac$a;->l(Lcom/b/a/ac;)Lcom/b/a/ac$a;

    move-result-object v2

    sget-object v3, Lcom/b/a/y;->bMk:Lcom/b/a/y;

    iput-object v3, v2, Lcom/b/a/ac$a;->bMk:Lcom/b/a/y;

    const/16 v3, 0x1f8

    iput v3, v2, Lcom/b/a/ac$a;->c:I

    const-string v3, "Unsatisfiable Request (only-if-cached)"

    iput-object v3, v2, Lcom/b/a/ac$a;->d:Ljava/lang/String;

    sget-object v3, Lcom/b/a/a/a/g;->bJb:Lcom/b/a/b;

    iput-object v3, v2, Lcom/b/a/ac$a;->bMz:Lcom/b/a/b;

    invoke-virtual {v2}, Lcom/b/a/ac$a;->xb()Lcom/b/a/ac;

    move-result-object v2

    iput-object v2, v15, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    goto :goto_12

    :cond_39
    iget-object v2, v3, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    if-eqz v2, :cond_3b

    iget-boolean v2, v3, Lcom/b/a/a/a/g;->t:Z

    if-eqz v2, :cond_3c

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJi:Lcom/b/a/a/a/t;

    iget-object v4, v3, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    invoke-interface {v2, v4}, Lcom/b/a/a/a/t;->c(Lcom/b/a/aa;)V

    :cond_3a
    :goto_13
    invoke-virtual {v3}, Lcom/b/a/a/a/g;->zF()Lcom/b/a/ac;

    move-result-object v2

    :goto_14
    iget-object v4, v2, Lcom/b/a/ac;->bMy:Lcom/b/a/t;

    invoke-virtual {v3, v4}, Lcom/b/a/a/a/g;->a(Lcom/b/a/t;)V

    iget-object v4, v3, Lcom/b/a/a/a/g;->bJl:Lcom/b/a/ac;

    if-eqz v4, :cond_43

    iget-object v4, v3, Lcom/b/a/a/a/g;->bJl:Lcom/b/a/ac;

    invoke-static {v4, v2}, Lcom/b/a/a/a/g;->a(Lcom/b/a/ac;Lcom/b/a/ac;)Z

    move-result v4

    if-eqz v4, :cond_42

    iget-object v4, v3, Lcom/b/a/a/a/g;->bJl:Lcom/b/a/ac;

    invoke-virtual {v4}, Lcom/b/a/ac;->Aq()Lcom/b/a/ac$a;

    move-result-object v4

    iget-object v5, v3, Lcom/b/a/a/a/g;->bJj:Lcom/b/a/aa;

    iput-object v5, v4, Lcom/b/a/ac$a;->bIK:Lcom/b/a/aa;

    iget-object v5, v3, Lcom/b/a/a/a/g;->bJh:Lcom/b/a/ac;

    invoke-static {v5}, Lcom/b/a/a/a/g;->f(Lcom/b/a/ac;)Lcom/b/a/ac;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/b/a/ac$a;->l(Lcom/b/a/ac;)Lcom/b/a/ac$a;

    move-result-object v4

    iget-object v5, v3, Lcom/b/a/a/a/g;->bJl:Lcom/b/a/ac;

    iget-object v5, v5, Lcom/b/a/ac;->bMy:Lcom/b/a/t;

    iget-object v6, v2, Lcom/b/a/ac;->bMy:Lcom/b/a/t;

    invoke-static {v5, v6}, Lcom/b/a/a/a/g;->a(Lcom/b/a/t;Lcom/b/a/t;)Lcom/b/a/t;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/b/a/ac$a;->e(Lcom/b/a/t;)Lcom/b/a/ac$a;

    move-result-object v4

    iget-object v5, v3, Lcom/b/a/a/a/g;->bJl:Lcom/b/a/ac;

    invoke-static {v5}, Lcom/b/a/a/a/g;->f(Lcom/b/a/ac;)Lcom/b/a/ac;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/b/a/ac$a;->k(Lcom/b/a/ac;)Lcom/b/a/ac$a;

    move-result-object v4

    invoke-static {v2}, Lcom/b/a/a/a/g;->f(Lcom/b/a/ac;)Lcom/b/a/ac;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/b/a/ac$a;->j(Lcom/b/a/ac;)Lcom/b/a/ac$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/b/a/ac$a;->xb()Lcom/b/a/ac;

    move-result-object v4

    iput-object v4, v3, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    iget-object v2, v2, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    invoke-virtual {v2}, Lcom/b/a/b;->close()V

    invoke-virtual {v3}, Lcom/b/a/a/a/g;->h()V

    sget-object v2, Lcom/b/a/a/b;->bIs:Lcom/b/a/a/b;

    iget-object v4, v3, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    invoke-virtual {v2, v4}, Lcom/b/a/a/b;->a(Lcom/b/a/x;)Lcom/b/a/a/c;

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    invoke-static {v2}, Lcom/b/a/a/a/g;->f(Lcom/b/a/ac;)Lcom/b/a/ac;

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    invoke-virtual {v3, v2}, Lcom/b/a/a/a/g;->g(Lcom/b/a/ac;)Lcom/b/a/ac;

    move-result-object v2

    iput-object v2, v3, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;
    :try_end_5
    .catch Lcom/b/a/a/a/l; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/b/a/a/a/o; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3b
    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/h;->bGg:Lcom/b/a/a/a/g;

    invoke-virtual {v2}, Lcom/b/a/a/a/g;->zD()Lcom/b/a/ac;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/b/a/h;->bGg:Lcom/b/a/a/a/g;

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    if-nez v2, :cond_54

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    :cond_3c
    :try_start_6
    iget-boolean v2, v3, Lcom/b/a/a/a/g;->s:Z

    if-nez v2, :cond_3d

    new-instance v2, Lcom/b/a/a/a/g$a;

    const/4 v4, 0x0

    iget-object v5, v3, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    invoke-direct {v2, v3, v4, v5}, Lcom/b/a/a/a/g$a;-><init>(Lcom/b/a/a/a/g;ILcom/b/a/aa;)V

    iget-object v4, v3, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    invoke-virtual {v2, v4}, Lcom/b/a/a/a/g$a;->a(Lcom/b/a/aa;)Lcom/b/a/ac;

    move-result-object v2

    goto/16 :goto_14

    :cond_3d
    iget-object v2, v3, Lcom/b/a/a/a/g;->bJo:Lb/d;

    if-eqz v2, :cond_3e

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJo:Lb/d;

    invoke-interface {v2}, Lb/d;->KU()Lb/c;

    move-result-object v2

    iget-wide v4, v2, Lb/c;->b:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3e

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJo:Lb/d;

    invoke-interface {v2}, Lb/d;->KW()Lb/d;

    :cond_3e
    iget-wide v4, v3, Lcom/b/a/a/a/g;->b:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_40

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    invoke-static {v2}, Lcom/b/a/a/a/j;->d(Lcom/b/a/aa;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_3f

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJn:Lb/r;

    instance-of v2, v2, Lcom/b/a/a/a/n;

    if-eqz v2, :cond_3f

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJn:Lb/r;

    check-cast v2, Lcom/b/a/a/a/n;

    iget-object v2, v2, Lcom/b/a/a/a/n;->bJz:Lb/c;

    iget-wide v4, v2, Lb/c;->b:J

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    invoke-virtual {v2}, Lcom/b/a/aa;->Ak()Lcom/b/a/aa$a;

    move-result-object v2

    const-string v6, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Lcom/b/a/aa$a;->P(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/aa$a;->An()Lcom/b/a/aa;

    move-result-object v2

    iput-object v2, v3, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    :cond_3f
    iget-object v2, v3, Lcom/b/a/a/a/g;->bJi:Lcom/b/a/a/a/t;

    iget-object v4, v3, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    invoke-interface {v2, v4}, Lcom/b/a/a/a/t;->c(Lcom/b/a/aa;)V

    :cond_40
    iget-object v2, v3, Lcom/b/a/a/a/g;->bJn:Lb/r;

    if-eqz v2, :cond_3a

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJo:Lb/d;

    if-eqz v2, :cond_41

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJo:Lb/d;

    invoke-interface {v2}, Lb/d;->close()V

    :goto_16
    iget-object v2, v3, Lcom/b/a/a/a/g;->bJn:Lb/r;

    instance-of v2, v2, Lcom/b/a/a/a/n;

    if-eqz v2, :cond_3a

    iget-object v4, v3, Lcom/b/a/a/a/g;->bJi:Lcom/b/a/a/a/t;

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJn:Lb/r;

    check-cast v2, Lcom/b/a/a/a/n;

    invoke-interface {v4, v2}, Lcom/b/a/a/a/t;->a(Lcom/b/a/a/a/n;)V

    goto/16 :goto_13

    :cond_41
    iget-object v2, v3, Lcom/b/a/a/a/g;->bJn:Lb/r;

    invoke-interface {v2}, Lb/r;->close()V

    goto :goto_16

    :cond_42
    iget-object v4, v3, Lcom/b/a/a/a/g;->bJl:Lcom/b/a/ac;

    iget-object v4, v4, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    invoke-static {v4}, Lcom/b/a/a/i;->a(Ljava/io/Closeable;)V

    :cond_43
    invoke-virtual {v2}, Lcom/b/a/ac;->Aq()Lcom/b/a/ac$a;

    move-result-object v4

    iget-object v5, v3, Lcom/b/a/a/a/g;->bJj:Lcom/b/a/aa;

    iput-object v5, v4, Lcom/b/a/ac$a;->bIK:Lcom/b/a/aa;

    iget-object v5, v3, Lcom/b/a/a/a/g;->bJh:Lcom/b/a/ac;

    invoke-static {v5}, Lcom/b/a/a/a/g;->f(Lcom/b/a/ac;)Lcom/b/a/ac;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/b/a/ac$a;->l(Lcom/b/a/ac;)Lcom/b/a/ac$a;

    move-result-object v4

    iget-object v5, v3, Lcom/b/a/a/a/g;->bJl:Lcom/b/a/ac;

    invoke-static {v5}, Lcom/b/a/a/a/g;->f(Lcom/b/a/ac;)Lcom/b/a/ac;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/b/a/ac$a;->k(Lcom/b/a/ac;)Lcom/b/a/ac$a;

    move-result-object v4

    invoke-static {v2}, Lcom/b/a/a/a/g;->f(Lcom/b/a/ac;)Lcom/b/a/ac;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/b/a/ac$a;->j(Lcom/b/a/ac;)Lcom/b/a/ac$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/ac$a;->xb()Lcom/b/a/ac;

    move-result-object v2

    iput-object v2, v3, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    invoke-static {v2}, Lcom/b/a/a/a/g;->a(Lcom/b/a/ac;)Z

    move-result v2

    if-eqz v2, :cond_3b

    sget-object v2, Lcom/b/a/a/b;->bIs:Lcom/b/a/a/b;

    iget-object v4, v3, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    invoke-virtual {v2, v4}, Lcom/b/a/a/b;->a(Lcom/b/a/x;)Lcom/b/a/a/c;

    move-result-object v2

    if-eqz v2, :cond_44

    iget-object v4, v3, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    iget-object v5, v3, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    invoke-static {v4, v5}, Lcom/b/a/a/a/c;->a(Lcom/b/a/ac;Lcom/b/a/aa;)Z

    move-result v4

    if-nez v4, :cond_46

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    iget-object v2, v2, Lcom/b/a/aa;->b:Ljava/lang/String;

    const-string v4, "POST"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    const-string v4, "PATCH"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    const-string v4, "PUT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    const-string v4, "DELETE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_44
    :goto_17
    iget-object v4, v3, Lcom/b/a/a/a/g;->bJp:Lcom/b/a/a/a/b;

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    if-nez v4, :cond_47

    :cond_45
    :goto_18
    invoke-virtual {v3, v2}, Lcom/b/a/a/a/g;->g(Lcom/b/a/ac;)Lcom/b/a/ac;

    move-result-object v2

    iput-object v2, v3, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    goto/16 :goto_15

    :cond_46
    iget-object v4, v3, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    invoke-static {v4}, Lcom/b/a/a/a/g;->f(Lcom/b/a/ac;)Lcom/b/a/ac;

    invoke-interface {v2}, Lcom/b/a/a/c;->zv()Lcom/b/a/a/a/b;

    move-result-object v2

    iput-object v2, v3, Lcom/b/a/a/a/g;->bJp:Lcom/b/a/a/a/b;

    goto :goto_17

    :cond_47
    invoke-interface {v4}, Lcom/b/a/a/a/b;->zy()Lb/r;

    move-result-object v5

    if-eqz v5, :cond_45

    iget-object v6, v2, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    invoke-virtual {v6}, Lcom/b/a/b;->zp()Lb/e;

    move-result-object v6

    invoke-static {v5}, Lb/m;->b(Lb/r;)Lb/d;

    move-result-object v5

    new-instance v7, Lcom/b/a/a/a/g$2;

    invoke-direct {v7, v3, v6, v4, v5}, Lcom/b/a/a/a/g$2;-><init>(Lcom/b/a/a/a/g;Lb/e;Lcom/b/a/a/a/b;Lb/d;)V

    invoke-virtual {v2}, Lcom/b/a/ac;->Aq()Lcom/b/a/ac$a;

    move-result-object v4

    new-instance v5, Lcom/b/a/a/a/k;

    iget-object v2, v2, Lcom/b/a/ac;->bMy:Lcom/b/a/t;

    invoke-static {v7}, Lb/m;->b(Lb/s;)Lb/e;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/b/a/a/a/k;-><init>(Lcom/b/a/t;Lb/e;)V

    iput-object v5, v4, Lcom/b/a/ac$a;->bMz:Lcom/b/a/b;

    invoke-virtual {v4}, Lcom/b/a/ac$a;->xb()Lcom/b/a/ac;
    :try_end_6
    .catch Lcom/b/a/a/a/l; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/b/a/a/a/o; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v2

    goto :goto_18

    :cond_48
    iget-object v2, v13, Lcom/b/a/a/a/o;->bJA:Ljava/io/IOException;

    instance-of v3, v2, Ljava/net/ProtocolException;

    if-eqz v3, :cond_49

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_49
    instance-of v3, v2, Ljava/io/InterruptedIOException;

    if-eqz v3, :cond_4a

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_4a
    instance-of v3, v2, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v3, :cond_4b

    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/security/cert/CertificateException;

    if-eqz v3, :cond_4b

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_4b
    instance-of v2, v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v2, :cond_4c

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_4c
    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_4d
    invoke-virtual {v12}, Lcom/b/a/a/a/g;->zE()Lcom/b/a/m;

    move-result-object v9

    new-instance v2, Lcom/b/a/a/a/g;

    iget-object v3, v12, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    iget-object v4, v12, Lcom/b/a/a/a/g;->bJj:Lcom/b/a/aa;

    iget-boolean v5, v12, Lcom/b/a/a/a/g;->bqW:Z

    iget-boolean v6, v12, Lcom/b/a/a/a/g;->c:Z

    iget-boolean v7, v12, Lcom/b/a/a/a/g;->s:Z

    iget-boolean v8, v12, Lcom/b/a/a/a/g;->t:Z

    iget-object v10, v12, Lcom/b/a/a/a/g;->bJf:Lcom/b/a/a/a/p;

    iget-object v11, v12, Lcom/b/a/a/a/g;->bJn:Lb/r;

    check-cast v11, Lcom/b/a/a/a/n;

    iget-object v12, v12, Lcom/b/a/a/a/g;->bJh:Lcom/b/a/ac;

    invoke-direct/range {v2 .. v12}, Lcom/b/a/a/a/g;-><init>(Lcom/b/a/x;Lcom/b/a/aa;ZZZZLcom/b/a/m;Lcom/b/a/a/a/p;Lcom/b/a/a/a/n;Lcom/b/a/ac;)V

    goto/16 :goto_6

    :cond_4e
    iget-object v2, v13, Lcom/b/a/a/a/o;->bJA:Ljava/io/IOException;

    throw v2

    :cond_4f
    instance-of v2, v11, Ljava/net/ProtocolException;

    if-eqz v2, :cond_50

    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_50
    instance-of v2, v11, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_51

    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_51
    const/4 v2, 0x1

    goto/16 :goto_7

    :cond_52
    invoke-virtual {v10}, Lcom/b/a/a/a/g;->zE()Lcom/b/a/m;

    move-result-object v8

    new-instance v2, Lcom/b/a/a/a/g;

    iget-object v3, v10, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    iget-object v4, v10, Lcom/b/a/a/a/g;->bJj:Lcom/b/a/aa;

    iget-boolean v5, v10, Lcom/b/a/a/a/g;->c:Z

    iget-boolean v6, v10, Lcom/b/a/a/a/g;->s:Z

    iget-boolean v7, v10, Lcom/b/a/a/a/g;->t:Z

    iget-object v9, v10, Lcom/b/a/a/a/g;->bJf:Lcom/b/a/a/a/p;

    iget-object v10, v10, Lcom/b/a/a/a/g;->bJh:Lcom/b/a/ac;

    invoke-direct/range {v2 .. v10}, Lcom/b/a/a/a/g;-><init>(Lcom/b/a/x;Lcom/b/a/aa;ZZZLcom/b/a/m;Lcom/b/a/a/a/p;Lcom/b/a/ac;)V

    goto/16 :goto_8

    :cond_53
    throw v11

    :cond_54
    iget-object v2, v3, Lcom/b/a/a/a/g;->bJg:Lcom/b/a/c;

    if-eqz v2, :cond_57

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJg:Lcom/b/a/c;

    iget-object v2, v2, Lcom/b/a/c;->bFT:Ljava/net/Proxy;

    :goto_19
    iget-object v4, v3, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    iget v4, v4, Lcom/b/a/ac;->c:I

    sparse-switch v4, :sswitch_data_0

    :cond_55
    const/4 v4, 0x0

    :goto_1a
    if-nez v4, :cond_5e

    if-nez p2, :cond_56

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/h;->bGg:Lcom/b/a/a/a/g;

    invoke-virtual {v2}, Lcom/b/a/a/a/g;->h()V

    :cond_56
    return-object v10

    :cond_57
    iget-object v2, v3, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    iget-object v2, v2, Lcom/b/a/x;->bJE:Ljava/net/Proxy;

    goto :goto_19

    :sswitch_0
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v4, v5, :cond_58

    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_58
    :sswitch_1
    iget-object v4, v3, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    iget-object v4, v4, Lcom/b/a/x;->bMe:Lcom/b/a/e;

    iget-object v3, v3, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    invoke-static {v4, v3, v2}, Lcom/b/a/a/a/j;->a(Lcom/b/a/e;Lcom/b/a/ac;Ljava/net/Proxy;)Lcom/b/a/aa;

    move-result-object v4

    goto :goto_1a

    :sswitch_2
    iget-object v2, v3, Lcom/b/a/a/a/g;->bJj:Lcom/b/a/aa;

    iget-object v2, v2, Lcom/b/a/aa;->b:Ljava/lang/String;

    const-string v4, "GET"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJj:Lcom/b/a/aa;

    iget-object v2, v2, Lcom/b/a/aa;->b:Ljava/lang/String;

    const-string v4, "HEAD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    :cond_59
    :sswitch_3
    iget-object v2, v3, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    iget-boolean v2, v2, Lcom/b/a/x;->bMh:Z

    if-eqz v2, :cond_55

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    const-string v4, "Location"

    invoke-virtual {v2, v4}, Lcom/b/a/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_55

    new-instance v4, Ljava/net/URL;

    iget-object v5, v3, Lcom/b/a/a/a/g;->bJj:Lcom/b/a/aa;

    invoke-virtual {v5}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v5, "https"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v5, "http"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    :cond_5a
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v3, Lcom/b/a/a/a/g;->bJj:Lcom/b/a/aa;

    invoke-virtual {v5}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    iget-object v2, v3, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    iget-boolean v2, v2, Lcom/b/a/x;->v:Z

    if-eqz v2, :cond_55

    :cond_5b
    iget-object v2, v3, Lcom/b/a/a/a/g;->bJj:Lcom/b/a/aa;

    invoke-virtual {v2}, Lcom/b/a/aa;->Ak()Lcom/b/a/aa$a;

    move-result-object v2

    iget-object v5, v3, Lcom/b/a/a/a/g;->bJj:Lcom/b/a/aa;

    iget-object v5, v5, Lcom/b/a/aa;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/b/a/a/a/h;->dF(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    const-string v5, "GET"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/b/a/aa$a;->a(Ljava/lang/String;Lcom/b/a/ab;)Lcom/b/a/aa$a;

    const-string v5, "Transfer-Encoding"

    invoke-virtual {v2, v5}, Lcom/b/a/aa$a;->dM(Ljava/lang/String;)Lcom/b/a/aa$a;

    const-string v5, "Content-Length"

    invoke-virtual {v2, v5}, Lcom/b/a/aa$a;->dM(Ljava/lang/String;)Lcom/b/a/aa$a;

    const-string v5, "Content-Type"

    invoke-virtual {v2, v5}, Lcom/b/a/aa$a;->dM(Ljava/lang/String;)Lcom/b/a/aa$a;

    :cond_5c
    invoke-virtual {v3, v4}, Lcom/b/a/a/a/g;->e(Ljava/net/URL;)Z

    move-result v3

    if-nez v3, :cond_5d

    const-string v3, "Authorization"

    invoke-virtual {v2, v3}, Lcom/b/a/aa$a;->dM(Ljava/lang/String;)Lcom/b/a/aa$a;

    :cond_5d
    invoke-virtual {v2, v4}, Lcom/b/a/aa$a;->g(Ljava/net/URL;)Lcom/b/a/aa$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/aa$a;->An()Lcom/b/a/aa;

    move-result-object v4

    goto/16 :goto_1a

    :cond_5e
    add-int/lit8 v11, v14, 0x1

    const/16 v2, 0x14

    if-le v11, v2, :cond_5f

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Too many follow-up requests: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/h;->bGg:Lcom/b/a/a/a/g;

    invoke-virtual {v4}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/b/a/a/a/g;->e(Ljava/net/URL;)Z

    move-result v2

    if-nez v2, :cond_60

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/h;->bGg:Lcom/b/a/a/a/g;

    invoke-virtual {v2}, Lcom/b/a/a/a/g;->h()V

    :cond_60
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/h;->bGg:Lcom/b/a/a/a/g;

    invoke-virtual {v2}, Lcom/b/a/a/a/g;->zE()Lcom/b/a/m;

    move-result-object v8

    new-instance v2, Lcom/b/a/a/a/g;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/b/a/h;->bGe:Lcom/b/a/x;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move/from16 v7, p2

    invoke-direct/range {v2 .. v10}, Lcom/b/a/a/a/g;-><init>(Lcom/b/a/x;Lcom/b/a/aa;ZZZLcom/b/a/m;Lcom/b/a/a/a/p;Lcom/b/a/ac;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/b/a/h;->bGg:Lcom/b/a/a/a/g;

    move v14, v11

    goto/16 :goto_2

    :cond_61
    move-wide v4, v2

    goto/16 :goto_c

    :cond_62
    move-wide v6, v2

    goto/16 :goto_b

    :cond_63
    move-object/from16 v4, p1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method

.method final aL(Z)Lcom/b/a/ac;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/b/a/h$a;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/b/a/h;->bGf:Lcom/b/a/aa;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/b/a/h$a;-><init>(Lcom/b/a/h;ILcom/b/a/aa;Z)V

    iget-object v1, p0, Lcom/b/a/h;->bGf:Lcom/b/a/aa;

    invoke-interface {v0, v1}, Lcom/b/a/v$a;->a(Lcom/b/a/aa;)Lcom/b/a/ac;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/b/a/i;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/b/a/h;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/b/a/h;->e:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/b/a/h;->bGe:Lcom/b/a/x;

    iget-object v0, v0, Lcom/b/a/x;->bLW:Lcom/b/a/r;

    new-instance v1, Lcom/b/a/h$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/b/a/h$b;-><init>(Lcom/b/a/h;Lcom/b/a/i;B)V

    invoke-virtual {v0, v1}, Lcom/b/a/r;->a(Lcom/b/a/h$b;)V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/h;->a:Z

    iget-object v0, p0, Lcom/b/a/h;->bGg:Lcom/b/a/a/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/h;->bGg:Lcom/b/a/a/a/g;

    invoke-virtual {v0}, Lcom/b/a/a/a/g;->i()V

    :cond_0
    return-void
.end method

.method final e()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/b/a/h;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "canceled call"

    :goto_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/b/a/h;->bGf:Lcom/b/a/aa;

    invoke-virtual {v2}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v2

    const-string v3, "/..."

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "call"

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public final xb()Lcom/b/a/ac;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/b/a/h;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/b/a/h;->e:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/b/a/h;->bGe:Lcom/b/a/x;

    iget-object v0, v0, Lcom/b/a/x;->bLW:Lcom/b/a/r;

    invoke-virtual {v0, p0}, Lcom/b/a/r;->a(Lcom/b/a/h;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/b/a/h;->aL(Z)Lcom/b/a/ac;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/b/a/h;->bGe:Lcom/b/a/x;

    iget-object v1, v1, Lcom/b/a/x;->bLW:Lcom/b/a/r;

    invoke-virtual {v1, p0}, Lcom/b/a/r;->b(Lcom/b/a/h;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/b/a/h;->bGe:Lcom/b/a/x;

    iget-object v1, v1, Lcom/b/a/x;->bLW:Lcom/b/a/r;

    invoke-virtual {v1, p0}, Lcom/b/a/r;->b(Lcom/b/a/h;)V

    return-object v0
.end method
