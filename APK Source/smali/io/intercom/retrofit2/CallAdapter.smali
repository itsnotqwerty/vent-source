.class public interface abstract Lio/intercom/retrofit2/CallAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/retrofit2/CallAdapter$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract adapt(Lio/intercom/retrofit2/Call;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/retrofit2/Call",
            "<TR;>;)TT;"
        }
    .end annotation
.end method

.method public abstract responseType()Ljava/lang/reflect/Type;
.end method
