.class public interface abstract Lcom/android/internal/app/IDockActionBar;
.super Ljava/lang/Object;
.source "IDockActionBar.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IDockActionBar$Stub;
    }
.end annotation


# virtual methods
.method public abstract deactive(Lcom/android/internal/app/IDockActionCallback;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/IDockActionCallback;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/DockActionItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract dock(Lcom/android/internal/app/IDockActionCallback;Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/IDockActionCallback;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/DockActionItem;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onItemClick(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerDockActionBar(Lcom/android/internal/statusbar/IStatusBar;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract undock(Lcom/android/internal/app/IDockActionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
