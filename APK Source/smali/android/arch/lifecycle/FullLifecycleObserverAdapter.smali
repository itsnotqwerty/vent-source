.class Landroid/arch/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# instance fields
.field private final ay:Landroid/arch/lifecycle/FullLifecycleObserver;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/FullLifecycleObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->ay:Landroid/arch/lifecycle/FullLifecycleObserver;

    return-void
.end method


# virtual methods
.method public final a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/c$a;)V
    .locals 2

    sget-object v0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter$1;->az:[I

    invoke-virtual {p2}, Landroid/arch/lifecycle/c$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ON_ANY must not been send by anybody"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
