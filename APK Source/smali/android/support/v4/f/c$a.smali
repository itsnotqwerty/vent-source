.class final Landroid/support/v4/f/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/f/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final Ee:Landroid/support/v4/f/c$a;

.field static final Ef:Landroid/support/v4/f/c$a;


# instance fields
.field private final Ed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/f/c$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v4/f/c$a;-><init>(Z)V

    sput-object v0, Landroid/support/v4/f/c$a;->Ee:Landroid/support/v4/f/c$a;

    new-instance v0, Landroid/support/v4/f/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/f/c$a;-><init>(Z)V

    sput-object v0, Landroid/support/v4/f/c$a;->Ef:Landroid/support/v4/f/c$a;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/support/v4/f/c$a;->Ed:Z

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;I)I
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    add-int/lit8 v4, p2, 0x0

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v4, :cond_2

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v5

    invoke-static {v5}, Landroid/support/v4/f/c;->al(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Landroid/support/v4/f/c$a;->Ed:Z

    if-eqz v0, :cond_1

    move v1, v2

    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_1
    iget-boolean v0, p0, Landroid/support/v4/f/c$a;->Ed:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v4/f/c$a;->Ed:Z

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
