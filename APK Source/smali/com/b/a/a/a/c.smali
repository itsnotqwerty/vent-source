.class public final Lcom/b/a/a/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/a/c$a;
    }
.end annotation


# instance fields
.field public final bIK:Lcom/b/a/aa;

.field public final bIL:Lcom/b/a/ac;


# direct methods
.method private constructor <init>(Lcom/b/a/aa;Lcom/b/a/ac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/a/c;->bIK:Lcom/b/a/aa;

    iput-object p2, p0, Lcom/b/a/a/a/c;->bIL:Lcom/b/a/ac;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/b/a/aa;Lcom/b/a/ac;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/b/a/a/a/c;-><init>(Lcom/b/a/aa;Lcom/b/a/ac;)V

    return-void
.end method

.method public static a(Lcom/b/a/ac;Lcom/b/a/aa;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/b/a/ac;->c:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    const-string v1, "Expires"

    invoke-virtual {p0, v1}, Lcom/b/a/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/b/a/ac;->Ar()Lcom/b/a/g;

    move-result-object v1

    iget v1, v1, Lcom/b/a/g;->f:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/b/a/ac;->Ar()Lcom/b/a/g;

    move-result-object v1

    iget-boolean v1, v1, Lcom/b/a/g;->i:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/b/a/ac;->Ar()Lcom/b/a/g;

    move-result-object v1

    iget-boolean v1, v1, Lcom/b/a/g;->h:Z

    if-eqz v1, :cond_0

    :cond_1
    :sswitch_1
    invoke-virtual {p0}, Lcom/b/a/ac;->Ar()Lcom/b/a/g;

    move-result-object v1

    iget-boolean v1, v1, Lcom/b/a/g;->e:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/b/a/aa;->Al()Lcom/b/a/g;

    move-result-object v1

    iget-boolean v1, v1, Lcom/b/a/g;->e:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19e -> :sswitch_1
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method
