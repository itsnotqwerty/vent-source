.class Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# instance fields
.field private final bd:Ljava/lang/Object;

.field private final be:Landroid/arch/lifecycle/a$a;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->bd:Ljava/lang/Object;

    sget-object v0, Landroid/arch/lifecycle/a;->aq:Landroid/arch/lifecycle/a;

    iget-object v1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->bd:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/a;->c(Ljava/lang/Class;)Landroid/arch/lifecycle/a$a;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->be:Landroid/arch/lifecycle/a$a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/c$a;)V
    .locals 3

    iget-object v1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->be:Landroid/arch/lifecycle/a$a;

    iget-object v2, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->bd:Ljava/lang/Object;

    iget-object v0, v1, Landroid/arch/lifecycle/a$a;->at:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, v2}, Landroid/arch/lifecycle/a$a;->a(Ljava/util/List;Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/c$a;Ljava/lang/Object;)V

    iget-object v0, v1, Landroid/arch/lifecycle/a$a;->at:Ljava/util/Map;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_ANY:Landroid/arch/lifecycle/c$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, v2}, Landroid/arch/lifecycle/a$a;->a(Ljava/util/List;Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/c$a;Ljava/lang/Object;)V

    return-void
.end method
