.class public final Lc/a/a/b/k;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7fffffff

    sput v0, Lc/a/a/b/k;->a:I

    return-void
.end method

.method public static a(Lc/a/a/b/h;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    sget v0, Lc/a/a/b/k;->a:I

    invoke-static {p0, p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;BI)V

    return-void
.end method

.method private static a(Lc/a/a/b/h;BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    new-instance v0, Lc/a/a/g;

    const-string v1, "Maximum skip depth exceeded"

    invoke-direct {v0, v1}, Lc/a/a/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lc/a/a/b/h;->q()Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lc/a/a/b/h;->Lx()B

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lc/a/a/b/h;->Ly()S

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lc/a/a/b/h;->Lz()I

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lc/a/a/b/h;->LA()J

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lc/a/a/b/h;->LB()D

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lc/a/a/b/h;->LD()Ljava/nio/ByteBuffer;

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lc/a/a/b/h;->xd()Lc/a/a/b/m;

    :goto_1
    invoke-virtual {p0}, Lc/a/a/b/h;->xf()Lc/a/a/b/d;

    move-result-object v0

    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-eqz v1, :cond_1

    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    add-int/lit8 v1, p2, -0x1

    invoke-static {p0, v0, v1}, Lc/a/a/b/k;->a(Lc/a/a/b/h;BI)V

    invoke-virtual {p0}, Lc/a/a/b/h;->j()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lc/a/a/b/h;->h()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lc/a/a/b/h;->Lt()Lc/a/a/b/g;

    move-result-object v1

    :goto_2
    iget v2, v1, Lc/a/a/b/g;->c:I

    if-ge v0, v2, :cond_2

    iget-byte v2, v1, Lc/a/a/b/g;->cVH:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lc/a/a/b/k;->a(Lc/a/a/b/h;BI)V

    iget-byte v2, v1, Lc/a/a/b/g;->bKG:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lc/a/a/b/k;->a(Lc/a/a/b/h;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lc/a/a/b/h;->l()V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lc/a/a/b/h;->Lv()Lc/a/a/b/l;

    move-result-object v1

    :goto_3
    iget v2, v1, Lc/a/a/b/l;->b:I

    if-ge v0, v2, :cond_3

    iget-byte v2, v1, Lc/a/a/b/l;->cVH:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lc/a/a/b/k;->a(Lc/a/a/b/h;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lc/a/a/b/h;->Lw()V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lc/a/a/b/h;->Lu()Lc/a/a/b/f;

    move-result-object v1

    :goto_4
    iget v2, v1, Lc/a/a/b/f;->b:I

    if-ge v0, v2, :cond_4

    iget-byte v2, v1, Lc/a/a/b/f;->cVH:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lc/a/a/b/k;->a(Lc/a/a/b/h;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lc/a/a/b/h;->n()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
