.class public final Landroid/support/v4/f/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/f/c$f;,
        Landroid/support/v4/f/c$a;,
        Landroid/support/v4/f/c$b;,
        Landroid/support/v4/f/c$c;,
        Landroid/support/v4/f/c$e;,
        Landroid/support/v4/f/c$d;
    }
.end annotation


# static fields
.field public static final DX:Landroid/support/v4/f/b;

.field public static final DY:Landroid/support/v4/f/b;

.field public static final DZ:Landroid/support/v4/f/b;

.field public static final Ea:Landroid/support/v4/f/b;

.field public static final Eb:Landroid/support/v4/f/b;

.field public static final Ec:Landroid/support/v4/f/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/support/v4/f/c$e;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/f/c$e;-><init>(Landroid/support/v4/f/c$c;Z)V

    sput-object v0, Landroid/support/v4/f/c;->DX:Landroid/support/v4/f/b;

    new-instance v0, Landroid/support/v4/f/c$e;

    invoke-direct {v0, v1, v3}, Landroid/support/v4/f/c$e;-><init>(Landroid/support/v4/f/c$c;Z)V

    sput-object v0, Landroid/support/v4/f/c;->DY:Landroid/support/v4/f/b;

    new-instance v0, Landroid/support/v4/f/c$e;

    sget-object v1, Landroid/support/v4/f/c$b;->Eg:Landroid/support/v4/f/c$b;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/f/c$e;-><init>(Landroid/support/v4/f/c$c;Z)V

    sput-object v0, Landroid/support/v4/f/c;->DZ:Landroid/support/v4/f/b;

    new-instance v0, Landroid/support/v4/f/c$e;

    sget-object v1, Landroid/support/v4/f/c$b;->Eg:Landroid/support/v4/f/c$b;

    invoke-direct {v0, v1, v3}, Landroid/support/v4/f/c$e;-><init>(Landroid/support/v4/f/c$c;Z)V

    sput-object v0, Landroid/support/v4/f/c;->Ea:Landroid/support/v4/f/b;

    new-instance v0, Landroid/support/v4/f/c$e;

    sget-object v1, Landroid/support/v4/f/c$a;->Ee:Landroid/support/v4/f/c$a;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/f/c$e;-><init>(Landroid/support/v4/f/c$c;Z)V

    sput-object v0, Landroid/support/v4/f/c;->Eb:Landroid/support/v4/f/b;

    sget-object v0, Landroid/support/v4/f/c$f;->Ej:Landroid/support/v4/f/c$f;

    sput-object v0, Landroid/support/v4/f/c;->Ec:Landroid/support/v4/f/b;

    return-void
.end method

.method static al(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static am(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
    .end sparse-switch
.end method
