.class public interface abstract Lcom/meizu/internal/telephony/IPhoneStateListenerEx;
.super Ljava/lang/Object;
.source "IPhoneStateListenerEx.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/telephony/IPhoneStateListenerEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPreciseCallStateChange([Lcom/meizu/internal/telephony/CallInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
