.class public abstract Landroid/media/IMediaRecorderService$Stub;
.super Landroid/os/Binder;
.source "IMediaRecorderService.java"

# interfaces
.implements Landroid/media/IMediaRecorderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaRecorderService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IMediaRecorderService"

.field static final TRANSACTION_cancelNotification:I = 0x16

.field static final TRANSACTION_getCreated:I = 0x11

.field static final TRANSACTION_getFilePath:I = 0x3

.field static final TRANSACTION_getMaxAmplitude:I = 0x13

.field static final TRANSACTION_getRecorderLength:I = 0x10

.field static final TRANSACTION_getRecorderPosition:I = 0x12

.field static final TRANSACTION_getRecorderState:I = 0x4

.field static final TRANSACTION_newNotification:I = 0x14

.field static final TRANSACTION_pause:I = 0xb

.field static final TRANSACTION_prepare:I = 0x9

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_release:I = 0xf

.field static final TRANSACTION_reset:I = 0xe

.field static final TRANSACTION_resume:I = 0xc

.field static final TRANSACTION_setAudioEncoder:I = 0x7

.field static final TRANSACTION_setAudioSource:I = 0x5

.field static final TRANSACTION_setOutputFile:I = 0x8

.field static final TRANSACTION_setOutputFormat:I = 0x6

.field static final TRANSACTION_start:I = 0xa

.field static final TRANSACTION_stop:I = 0xd

.field static final TRANSACTION_unregisterCallback:I = 0x2

.field static final TRANSACTION_updateNotification:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.media.IMediaRecorderService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaRecorderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRecorderService;
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
    const-string v1, "android.media.IMediaRecorderService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IMediaRecorderService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/media/IMediaRecorderService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/media/IMediaRecorderService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/IMediaRecorderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 222
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/IMediaRecorderCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRecorderCallback;

    move-result-object v0

    .line 51
    .local v0, _arg0:Landroid/media/IMediaRecorderCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/media/IMediaRecorderService$Stub;->registerCallback(Landroid/media/IMediaRecorderCallback;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v0           #_arg0:Landroid/media/IMediaRecorderCallback;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_2
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/IMediaRecorderCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRecorderCallback;

    move-result-object v0

    .line 62
    .restart local v0       #_arg0:Landroid/media/IMediaRecorderCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/media/IMediaRecorderService$Stub;->unregisterCallback(Landroid/media/IMediaRecorderCallback;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v0           #_arg0:Landroid/media/IMediaRecorderCallback;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_3
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Landroid/media/IMediaRecorderService$Stub;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_4
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Landroid/media/IMediaRecorderService$Stub;->getRecorderState()I

    move-result v2

    .line 79
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    .end local v2           #_result:I
    :sswitch_5
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/media/IMediaRecorderService$Stub;->setAudioSource(I)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 94
    .end local v0           #_arg0:I
    :sswitch_6
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/IMediaRecorderService$Stub;->setOutputFormat(I)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 103
    .end local v0           #_arg0:I
    :sswitch_7
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/IMediaRecorderService$Stub;->setAudioEncoder(I)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 112
    .end local v0           #_arg0:I
    :sswitch_8
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/media/IMediaRecorderService$Stub;->setOutputFile(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 121
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_9
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/media/IMediaRecorderService$Stub;->prepare()V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 128
    :sswitch_a
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Landroid/media/IMediaRecorderService$Stub;->start()V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 135
    :sswitch_b
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Landroid/media/IMediaRecorderService$Stub;->pause()V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 142
    :sswitch_c
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/media/IMediaRecorderService$Stub;->resume()V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 149
    :sswitch_d
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Landroid/media/IMediaRecorderService$Stub;->stop()V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 156
    :sswitch_e
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Landroid/media/IMediaRecorderService$Stub;->reset()V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 163
    :sswitch_f
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Landroid/media/IMediaRecorderService$Stub;->release()V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 170
    :sswitch_10
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/media/IMediaRecorderService$Stub;->getRecorderLength()I

    move-result v2

    .line 172
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 178
    .end local v2           #_result:I
    :sswitch_11
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Landroid/media/IMediaRecorderService$Stub;->getCreated()J

    move-result-wide v2

    .line 180
    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 186
    .end local v2           #_result:J
    :sswitch_12
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Landroid/media/IMediaRecorderService$Stub;->getRecorderPosition()I

    move-result v2

    .line 188
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 194
    .end local v2           #_result:I
    :sswitch_13
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Landroid/media/IMediaRecorderService$Stub;->getMaxAmplitude()I

    move-result v2

    .line 196
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 202
    .end local v2           #_result:I
    :sswitch_14
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Landroid/media/IMediaRecorderService$Stub;->newNotification()V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 209
    :sswitch_15
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Landroid/media/IMediaRecorderService$Stub;->updateNotification()V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 216
    :sswitch_16
    const-string v5, "android.media.IMediaRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Landroid/media/IMediaRecorderService$Stub;->cancelNotification()V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
