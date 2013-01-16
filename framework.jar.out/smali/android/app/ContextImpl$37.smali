.class final Landroid/app/ContextImpl$37;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 4
    .parameter "ctx"

    .prologue
    .line 501
    const-string/jumbo v2, "pppoe"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 502
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/pppoe/IPppoeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/pppoe/IPppoeManager;

    move-result-object v1

    .line 503
    .local v1, service:Landroid/net/pppoe/IPppoeManager;
    new-instance v2, Landroid/net/pppoe/PppoeManager;

    iget-object v3, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/net/pppoe/PppoeManager;-><init>(Landroid/net/pppoe/IPppoeManager;Landroid/os/Handler;)V

    return-object v2
.end method
