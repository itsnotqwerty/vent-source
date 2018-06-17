.class final Landroid/support/v4/e/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/e/c;->a(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic DL:Landroid/support/v4/e/c;

.field final synthetic DM:Ljava/util/concurrent/Callable;

.field final synthetic DR:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic DS:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic DT:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic DU:Ljava/util/concurrent/locks/Condition;


# direct methods
.method constructor <init>(Landroid/support/v4/e/c;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/e/c$3;->DL:Landroid/support/v4/e/c;

    iput-object p2, p0, Landroid/support/v4/e/c$3;->DR:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Landroid/support/v4/e/c$3;->DM:Ljava/util/concurrent/Callable;

    iput-object p4, p0, Landroid/support/v4/e/c$3;->DS:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p5, p0, Landroid/support/v4/e/c$3;->DT:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p6, p0, Landroid/support/v4/e/c$3;->DU:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/e/c$3;->DR:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Landroid/support/v4/e/c$3;->DM:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/e/c$3;->DS:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1
    iget-object v0, p0, Landroid/support/v4/e/c$3;->DT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Landroid/support/v4/e/c$3;->DU:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Landroid/support/v4/e/c$3;->DS:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v4/e/c$3;->DS:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
