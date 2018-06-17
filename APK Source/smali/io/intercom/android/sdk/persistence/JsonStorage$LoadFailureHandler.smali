.class public interface abstract Lio/intercom/android/sdk/persistence/JsonStorage$LoadFailureHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/persistence/JsonStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadFailureHandler"
.end annotation


# static fields
.field public static final NONE:Lio/intercom/android/sdk/persistence/JsonStorage$LoadFailureHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/persistence/JsonStorage$LoadFailureHandler$1;

    invoke-direct {v0}, Lio/intercom/android/sdk/persistence/JsonStorage$LoadFailureHandler$1;-><init>()V

    sput-object v0, Lio/intercom/android/sdk/persistence/JsonStorage$LoadFailureHandler;->NONE:Lio/intercom/android/sdk/persistence/JsonStorage$LoadFailureHandler;

    return-void
.end method


# virtual methods
.method public abstract onLoadFailed(Ljava/io/File;Ljava/lang/Exception;)V
.end method
