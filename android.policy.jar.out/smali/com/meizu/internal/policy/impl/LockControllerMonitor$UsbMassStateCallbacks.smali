.class public interface abstract Lcom/meizu/internal/policy/impl/LockControllerMonitor$UsbMassStateCallbacks;
.super Ljava/lang/Object;
.source "LockControllerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockControllerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UsbMassStateCallbacks"
.end annotation


# virtual methods
.method public abstract onUsbMassConnectedChanged(Z)V
.end method

.method public abstract onUsbMassStateChanged(Ljava/lang/String;)V
.end method
