.class public abstract Lmeizu/samba/client/ISambaClientManager$Stub;
.super Landroid/os/Binder;
.source "ISambaClientManager.java"

# interfaces
.implements Lmeizu/samba/client/ISambaClientManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/samba/client/ISambaClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/samba/client/ISambaClientManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "meizu.samba.client.ISambaClientManager"

.field static final TRANSACTION_addSambaStatusListener:I = 0x5

.field static final TRANSACTION_getNetbiosName:I = 0xc

.field static final TRANSACTION_getSharedFolders:I = 0x8

.field static final TRANSACTION_getSharedFoldersWithAuth:I = 0xa

.field static final TRANSACTION_getSharedFoldersWithAuthAndDomain:I = 0x9

.field static final TRANSACTION_isMounted:I = 0xb

.field static final TRANSACTION_mountSharedFolder:I = 0x3

.field static final TRANSACTION_needAuth:I = 0x7

.field static final TRANSACTION_removeSambaStatusListener:I = 0x6

.field static final TRANSACTION_startScan:I = 0x1

.field static final TRANSACTION_stopScan:I = 0x2

.field static final TRANSACTION_umountSharedFolder:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "meizu.samba.client.ISambaClientManager"

    invoke-virtual {p0, p0, v0}, Lmeizu/samba/client/ISambaClientManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmeizu/samba/client/ISambaClientManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "meizu.samba.client.ISambaClientManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmeizu/samba/client/ISambaClientManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lmeizu/samba/client/ISambaClientManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lmeizu/samba/client/ISambaClientManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmeizu/samba/client/ISambaClientManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 194
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v5, "meizu.samba.client.ISambaClientManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "meizu.samba.client.ISambaClientManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmeizu/samba/client/ISambaClientManager$Stub;->startScan(Ljava/lang/String;)Z

    move-result v4

    .line 51
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_2
    const-string v7, "meizu.samba.client.ISambaClientManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lmeizu/samba/client/ISambaClientManager$Stub;->stopScan()Z

    move-result v4

    .line 59
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v4           #_result:Z
    :sswitch_3
    const-string v7, "meizu.samba.client.ISambaClientManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    .line 68
    sget-object v7, Lmeizu/samba/client/RemoteSharedFolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/samba/client/RemoteSharedFolder;

    .line 73
    .local v0, _arg0:Lmeizu/samba/client/RemoteSharedFolder;
    :goto_1
    invoke-virtual {p0, v0}, Lmeizu/samba/client/ISambaClientManager$Stub;->mountSharedFolder(Lmeizu/samba/client/RemoteSharedFolder;)Z

    move-result v4

    .line 74
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v4, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v0           #_arg0:Lmeizu/samba/client/RemoteSharedFolder;
    .end local v4           #_result:Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lmeizu/samba/client/RemoteSharedFolder;
    goto :goto_1

    .line 80
    .end local v0           #_arg0:Lmeizu/samba/client/RemoteSharedFolder;
    :sswitch_4
    const-string v7, "meizu.samba.client.ISambaClientManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    .line 83
    sget-object v7, Lmeizu/samba/client/RemoteSharedFolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/samba/client/RemoteSharedFolder;

    .line 88
    .restart local v0       #_arg0:Lmeizu/samba/client/RemoteSharedFolder;
    :goto_2
    invoke-virtual {p0, v0}, Lmeizu/samba/client/ISambaClientManager$Stub;->umountSharedFolder(Lmeizu/samba/client/RemoteSharedFolder;)Z

    move-result v4

    .line 89
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v4, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    .end local v0           #_arg0:Lmeizu/samba/client/RemoteSharedFolder;
    .end local v4           #_result:Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lmeizu/samba/client/RemoteSharedFolder;
    goto :goto_2

    .line 95
    .end local v0           #_arg0:Lmeizu/samba/client/RemoteSharedFolder;
    :sswitch_5
    const-string v7, "meizu.samba.client.ISambaClientManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lmeizu/samba/client/ISambaStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/samba/client/ISambaStatusListener;

    move-result-object v0

    .line 99
    .local v0, _arg0:Lmeizu/samba/client/ISambaStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lmeizu/samba/client/ISambaClientManager$Stub;->addSambaStatusListener(Lmeizu/samba/client/ISambaStatusListener;Ljava/lang/String;)Z

    move-result v4

    .line 101
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v4, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 107
    .end local v0           #_arg0:Lmeizu/samba/client/ISambaStatusListener;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_6
    const-string v5, "meizu.samba.client.ISambaClientManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmeizu/samba/client/ISambaStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/samba/client/ISambaStatusListener;

    move-result-object v0

    .line 111
    .restart local v0       #_arg0:Lmeizu/samba/client/ISambaStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lmeizu/samba/client/ISambaClientManager$Stub;->removeSambaStatusListener(Lmeizu/samba/client/ISambaStatusListener;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 118
    .end local v0           #_arg0:Lmeizu/samba/client/ISambaStatusListener;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_7
    const-string v7, "meizu.samba.client.ISambaClientManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lmeizu/samba/client/ISambaClientManager$Stub;->needAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 124
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v4, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 130
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_8
    const-string v5, "meizu.samba.client.ISambaClientManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmeizu/samba/client/ISambaClientManager$Stub;->getSharedFolders(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v5, "meizu.samba.client.ISambaClientManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lmeizu/samba/client/ISambaClientManager$Stub;->getSharedFoldersWithAuthAndDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_arg3:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v5, "meizu.samba.client.ISambaClientManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 163
    .restart local v2       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lmeizu/samba/client/ISambaClientManager$Stub;->getSharedFoldersWithAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v7, "meizu.samba.client.ISambaClientManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    .line 173
    sget-object v7, Lmeizu/samba/client/RemoteSharedFolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/samba/client/RemoteSharedFolder;

    .line 178
    .local v0, _arg0:Lmeizu/samba/client/RemoteSharedFolder;
    :goto_3
    invoke-virtual {p0, v0}, Lmeizu/samba/client/ISambaClientManager$Stub;->isMounted(Lmeizu/samba/client/RemoteSharedFolder;)Z

    move-result v4

    .line 179
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    if-eqz v4, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 176
    .end local v0           #_arg0:Lmeizu/samba/client/RemoteSharedFolder;
    .end local v4           #_result:Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lmeizu/samba/client/RemoteSharedFolder;
    goto :goto_3

    .line 185
    .end local v0           #_arg0:Lmeizu/samba/client/RemoteSharedFolder;
    :sswitch_c
    const-string v5, "meizu.samba.client.ISambaClientManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmeizu/samba/client/ISambaClientManager$Stub;->getNetbiosName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
