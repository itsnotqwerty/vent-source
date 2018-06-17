.class public final Landroid/support/constraint/a/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/a/a/c$a;,
        Landroid/support/constraint/a/a/c$b;,
        Landroid/support/constraint/a/a/c$c;
    }
.end annotation


# instance fields
.field fA:I

.field private fB:I

.field fC:I

.field public fD:Landroid/support/constraint/a/h;

.field public fu:Landroid/support/constraint/a/a/j;

.field final fv:Landroid/support/constraint/a/a/d;

.field final fw:Landroid/support/constraint/a/a/c$c;

.field public fx:Landroid/support/constraint/a/a/c;

.field public fy:I

.field fz:I


# direct methods
.method public constructor <init>(Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/c$c;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/constraint/a/a/j;

    invoke-direct {v0, p0}, Landroid/support/constraint/a/a/j;-><init>(Landroid/support/constraint/a/a/c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iput v1, p0, Landroid/support/constraint/a/a/c;->fy:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a/c;->fz:I

    sget v0, Landroid/support/constraint/a/a/c$b;->fI:I

    iput v0, p0, Landroid/support/constraint/a/a/c;->fA:I

    sget v0, Landroid/support/constraint/a/a/c$a;->fF:I

    iput v0, p0, Landroid/support/constraint/a/a/c;->fB:I

    iput v1, p0, Landroid/support/constraint/a/a/c;->fC:I

    iput-object p1, p0, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    iput-object p2, p0, Landroid/support/constraint/a/a/c;->fw:Landroid/support/constraint/a/a/c$c;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/constraint/a/a/c;IIIIZ)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iput v1, p0, Landroid/support/constraint/a/a/c;->fy:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a/c;->fz:I

    sget v0, Landroid/support/constraint/a/a/c$b;->fI:I

    iput v0, p0, Landroid/support/constraint/a/a/c;->fA:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/constraint/a/a/c;->fC:I

    :goto_0
    return v2

    :cond_0
    if-nez p6, :cond_f

    if-nez p1, :cond_2

    move v0, v1

    :cond_1
    :goto_1
    if-nez v0, :cond_f

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v3, p1, Landroid/support/constraint/a/a/c;->fw:Landroid/support/constraint/a/a/c$c;

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->fw:Landroid/support/constraint/a/a/c$c;

    if-ne v3, v0, :cond_5

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->fw:Landroid/support/constraint/a/a/c$c;

    sget-object v3, Landroid/support/constraint/a/a/c$c;->fR:Landroid/support/constraint/a/a/c$c;

    if-ne v0, v3, :cond_4

    iget-object v0, p1, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->aI()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->aI()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    sget-object v0, Landroid/support/constraint/a/a/c$1;->fE:[I

    iget-object v4, p0, Landroid/support/constraint/a/a/c;->fw:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/c$c;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroid/support/constraint/a/a/c;->fw:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/c$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    sget-object v0, Landroid/support/constraint/a/a/c$c;->fR:Landroid/support/constraint/a/a/c$c;

    if-eq v3, v0, :cond_6

    sget-object v0, Landroid/support/constraint/a/a/c$c;->fT:Landroid/support/constraint/a/a/c$c;

    if-eq v3, v0, :cond_6

    sget-object v0, Landroid/support/constraint/a/a/c$c;->fU:Landroid/support/constraint/a/a/c$c;

    if-eq v3, v0, :cond_6

    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1

    :pswitch_1
    sget-object v0, Landroid/support/constraint/a/a/c$c;->fN:Landroid/support/constraint/a/a/c$c;

    if-eq v3, v0, :cond_7

    sget-object v0, Landroid/support/constraint/a/a/c$c;->fP:Landroid/support/constraint/a/a/c$c;

    if-ne v3, v0, :cond_9

    :cond_7
    move v0, v2

    :goto_2
    iget-object v4, p1, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    instance-of v4, v4, Landroid/support/constraint/a/a/f;

    if-eqz v4, :cond_1

    if-nez v0, :cond_8

    sget-object v0, Landroid/support/constraint/a/a/c$c;->fT:Landroid/support/constraint/a/a/c$c;

    if-ne v3, v0, :cond_a

    :cond_8
    move v0, v2

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_1

    :pswitch_2
    sget-object v0, Landroid/support/constraint/a/a/c$c;->fO:Landroid/support/constraint/a/a/c$c;

    if-eq v3, v0, :cond_b

    sget-object v0, Landroid/support/constraint/a/a/c$c;->fQ:Landroid/support/constraint/a/a/c$c;

    if-ne v3, v0, :cond_d

    :cond_b
    move v0, v2

    :goto_3
    iget-object v4, p1, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    instance-of v4, v4, Landroid/support/constraint/a/a/f;

    if-eqz v4, :cond_1

    if-nez v0, :cond_c

    sget-object v0, Landroid/support/constraint/a/a/c$c;->fU:Landroid/support/constraint/a/a/c$c;

    if-ne v3, v0, :cond_e

    :cond_c
    move v0, v2

    goto :goto_1

    :cond_d
    move v0, v1

    goto :goto_3

    :cond_e
    move v0, v1

    goto/16 :goto_1

    :pswitch_3
    move v0, v1

    goto/16 :goto_1

    :cond_f
    iput-object p1, p0, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-lez p2, :cond_10

    iput p2, p0, Landroid/support/constraint/a/a/c;->fy:I

    :goto_4
    iput p3, p0, Landroid/support/constraint/a/a/c;->fz:I

    iput p4, p0, Landroid/support/constraint/a/a/c;->fA:I

    iput p5, p0, Landroid/support/constraint/a/a/c;->fC:I

    goto/16 :goto_0

    :cond_10
    iput v1, p0, Landroid/support/constraint/a/a/c;->fy:I

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final ax()V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/constraint/a/h;

    sget v1, Landroid/support/constraint/a/h$a;->fl:I

    invoke-direct {v0, v1}, Landroid/support/constraint/a/h;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    invoke-virtual {v0}, Landroid/support/constraint/a/h;->reset()V

    goto :goto_0
.end method

.method public final ay()I
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    iget v0, v0, Landroid/support/constraint/a/a/d;->gS:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/a/c;->fz:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    iget v0, v0, Landroid/support/constraint/a/a/d;->gS:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/support/constraint/a/a/c;->fz:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/constraint/a/a/c;->fy:I

    goto :goto_0
.end method

.method public final isConnected()Z
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iput v1, p0, Landroid/support/constraint/a/a/c;->fy:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a/c;->fz:I

    sget v0, Landroid/support/constraint/a/a/c$b;->fJ:I

    iput v0, p0, Landroid/support/constraint/a/a/c;->fA:I

    iput v1, p0, Landroid/support/constraint/a/a/c;->fC:I

    sget v0, Landroid/support/constraint/a/a/c$a;->fF:I

    iput v0, p0, Landroid/support/constraint/a/a/c;->fB:I

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/j;->reset()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    iget-object v1, v1, Landroid/support/constraint/a/a/d;->gT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/a/a/c;->fw:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/c$c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
