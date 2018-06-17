.class final Lio/intercom/a/a/a/g/e$a;
.super Ljava/util/concurrent/ExecutionException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final cPQ:Lio/intercom/a/a/a/c/b/p;


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/c/b/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/ExecutionException;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/g/e$a;->cPQ:Lio/intercom/a/a/a/c/b/p;

    return-void
.end method


# virtual methods
.method public final printStackTrace()V
    .locals 1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lio/intercom/a/a/a/g/e$a;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public final printStackTrace(Ljava/io/PrintStream;)V
    .locals 1

    invoke-super {p0, p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace(Ljava/io/PrintStream;)V

    const-string v0, "Caused by: "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/a/a/a/g/e$a;->cPQ:Lio/intercom/a/a/a/c/b/p;

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/c/b/p;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public final printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-super {p0, p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v0, "Caused by: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/a/a/a/g/e$a;->cPQ:Lio/intercom/a/a/a/c/b/p;

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/c/b/p;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method
