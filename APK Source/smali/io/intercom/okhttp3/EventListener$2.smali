.class final Lio/intercom/okhttp3/EventListener$2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/EventListener$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/okhttp3/EventListener;->factory(Lio/intercom/okhttp3/EventListener;)Lio/intercom/okhttp3/EventListener$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lio/intercom/okhttp3/EventListener;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/EventListener;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/EventListener$2;->val$listener:Lio/intercom/okhttp3/EventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lio/intercom/okhttp3/Call;)Lio/intercom/okhttp3/EventListener;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/EventListener$2;->val$listener:Lio/intercom/okhttp3/EventListener;

    return-object v0
.end method
