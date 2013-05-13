.class public Landroid/app/LedLightsServiceManager;
.super Ljava/lang/Object;
.source "LedLightsServiceManager.java"


# static fields
.field private static sService:Landroid/app/ILedLightsServiceManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Landroid/app/LedLightsServiceManager;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public static getService()Landroid/app/ILedLightsServiceManager;
    .locals 2

    .prologue
    .line 15
    sget-object v1, Landroid/app/LedLightsServiceManager;->sService:Landroid/app/ILedLightsServiceManager;

    if-eqz v1, :cond_0

    .line 16
    sget-object v1, Landroid/app/LedLightsServiceManager;->sService:Landroid/app/ILedLightsServiceManager;

    .line 20
    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 18
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    const-string v1, "ledlights"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 19
    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/ILedLightsServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ILedLightsServiceManager;

    move-result-object v1

    sput-object v1, Landroid/app/LedLightsServiceManager;->sService:Landroid/app/ILedLightsServiceManager;

    .line 20
    sget-object v1, Landroid/app/LedLightsServiceManager;->sService:Landroid/app/ILedLightsServiceManager;

    goto :goto_0
.end method


# virtual methods
.method public setBrightness(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    .line 39
    invoke-static {}, Landroid/app/LedLightsServiceManager;->getService()Landroid/app/ILedLightsServiceManager;

    move-result-object v0

    .line 41
    .local v0, service:Landroid/app/ILedLightsServiceManager;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/ILedLightsServiceManager;->setBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateLedLights(ILjava/lang/String;I[I)V
    .locals 2
    .parameter "buttonType"
    .parameter "functionId"
    .parameter "mode"
    .parameter "lights"

    .prologue
    .line 29
    invoke-static {}, Landroid/app/LedLightsServiceManager;->getService()Landroid/app/ILedLightsServiceManager;

    move-result-object v0

    .line 31
    .local v0, service:Landroid/app/ILedLightsServiceManager;
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/ILedLightsServiceManager;->updateLedLights(ILjava/lang/String;I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v1

    goto :goto_0
.end method
