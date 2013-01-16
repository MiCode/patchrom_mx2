.class public abstract Lcom/android/internal/app/IDockActionBar$Stub;
.super Landroid/os/Binder;
.source "IDockActionBar.java"

# interfaces
.implements Lcom/android/internal/app/IDockActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IDockActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IDockActionBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IDockActionBar"

.field static final TRANSACTION_deactive:I = 0x3

.field static final TRANSACTION_dock:I = 0x1

.field static final TRANSACTION_onItemClick:I = 0x5

.field static final TRANSACTION_registerDockActionBar:I = 0x4

.field static final TRANSACTION_undock:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.app.IDockActionBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IDockActionBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IDockActionBar;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.android.internal.app.IDockActionBar"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IDockActionBar;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/android/internal/app/IDockActionBar;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/android/internal/app/IDockActionBar$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/app/IDockActionBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 43
    :sswitch_0
    const-string v4, "com.android.internal.app.IDockActionBar"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v4, "com.android.internal.app.IDockActionBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IDockActionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IDockActionCallback;

    move-result-object v0

    .line 52
    .local v0, _arg0:Lcom/android/internal/app/IDockActionCallback;
    sget-object v4, Lcom/android/internal/app/DockActionItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 54
    .local v1, _arg1:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/app/DockActionItem;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 55
    .local v2, _arg2:Z
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/app/IDockActionBar$Stub;->dock(Lcom/android/internal/app/IDockActionCallback;Ljava/util/List;Z)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    .end local v2           #_arg2:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 61
    .end local v0           #_arg0:Lcom/android/internal/app/IDockActionCallback;
    .end local v1           #_arg1:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/app/DockActionItem;>;"
    :sswitch_2
    const-string v4, "com.android.internal.app.IDockActionBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IDockActionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IDockActionCallback;

    move-result-object v0

    .line 64
    .restart local v0       #_arg0:Lcom/android/internal/app/IDockActionCallback;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IDockActionBar$Stub;->undock(Lcom/android/internal/app/IDockActionCallback;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    .end local v0           #_arg0:Lcom/android/internal/app/IDockActionCallback;
    :sswitch_3
    const-string v4, "com.android.internal.app.IDockActionBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IDockActionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IDockActionCallback;

    move-result-object v0

    .line 74
    .restart local v0       #_arg0:Lcom/android/internal/app/IDockActionCallback;
    sget-object v4, Lcom/android/internal/app/DockActionItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 75
    .restart local v1       #_arg1:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/app/DockActionItem;>;"
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IDockActionBar$Stub;->deactive(Lcom/android/internal/app/IDockActionCallback;Ljava/util/List;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    .end local v0           #_arg0:Lcom/android/internal/app/IDockActionCallback;
    .end local v1           #_arg1:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/app/DockActionItem;>;"
    :sswitch_4
    const-string v4, "com.android.internal.app.IDockActionBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    .line 84
    .local v0, _arg0:Lcom/android/internal/statusbar/IStatusBar;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IDockActionBar$Stub;->registerDockActionBar(Lcom/android/internal/statusbar/IStatusBar;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    .end local v0           #_arg0:Lcom/android/internal/statusbar/IStatusBar;
    :sswitch_5
    const-string v4, "com.android.internal.app.IDockActionBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IDockActionBar$Stub;->onItemClick(I)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
