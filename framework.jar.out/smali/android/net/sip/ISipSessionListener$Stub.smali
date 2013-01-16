.class public abstract Landroid/net/sip/ISipSessionListener$Stub;
.super Landroid/os/Binder;
.source "ISipSessionListener.java"

# interfaces
.implements Landroid/net/sip/ISipSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/ISipSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/ISipSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.sip.ISipSessionListener"

.field static final TRANSACTION_OnPublishing:I = 0x16

.field static final TRANSACTION_OnRecvReport:I = 0x18

.field static final TRANSACTION_OnRecvSms:I = 0x17

.field static final TRANSACTION_onCallBusy:I = 0x6

.field static final TRANSACTION_onCallChangeFailed:I = 0x9

.field static final TRANSACTION_onCallEnded:I = 0x5

.field static final TRANSACTION_onCallEstablished:I = 0x4

.field static final TRANSACTION_onCallTransferring:I = 0x7

.field static final TRANSACTION_onCalling:I = 0x1

.field static final TRANSACTION_onError:I = 0x8

.field static final TRANSACTION_onMessageDone:I = 0x12

.field static final TRANSACTION_onMessageFailed:I = 0x13

.field static final TRANSACTION_onMessageTimeout:I = 0x14

.field static final TRANSACTION_onMessageing:I = 0x11

.field static final TRANSACTION_onRegistering:I = 0xa

.field static final TRANSACTION_onRegistrationDone:I = 0xb

.field static final TRANSACTION_onRegistrationFailed:I = 0xc

.field static final TRANSACTION_onRegistrationTimeout:I = 0xd

.field static final TRANSACTION_onRinging:I = 0x2

.field static final TRANSACTION_onRingingBack:I = 0x3

.field static final TRANSACTION_onSubscribeDone:I = 0xf

.field static final TRANSACTION_onSubscribeFailed:I = 0x10

.field static final TRANSACTION_onSubscribeTimeout:I = 0x15

.field static final TRANSACTION_onSubscribing:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.net.sip.ISipSessionListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSessionListener;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.net.sip.ISipSessionListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/sip/ISipSessionListener;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/net/sip/ISipSessionListener;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/net/sip/ISipSessionListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/sip/ISipSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
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

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 317
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 46
    :sswitch_0
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 54
    .local v0, _arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->onCalling(Landroid/net/sip/ISipSession;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    :sswitch_2
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 64
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    sget-object v5, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/sip/SipProfile;

    .line 71
    .local v1, _arg1:Landroid/net/sip/SipProfile;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    .end local v1           #_arg1:Landroid/net/sip/SipProfile;
    .end local v2           #_arg2:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/net/sip/SipProfile;
    goto :goto_1

    .line 78
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    .end local v1           #_arg1:Landroid/net/sip/SipProfile;
    :sswitch_3
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 81
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->onRingingBack(Landroid/net/sip/ISipSession;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 87
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    :sswitch_4
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 91
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/sip/ISipSessionListener$Stub;->onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_5
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 101
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->onCallEnded(Landroid/net/sip/ISipSession;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 107
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    :sswitch_6
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 110
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->onCallBusy(Landroid/net/sip/ISipSession;)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 116
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    :sswitch_7
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 120
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/sip/ISipSessionListener$Stub;->onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 127
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_8
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 131
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .restart local v2       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    :sswitch_9
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 144
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 147
    .restart local v2       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onCallChangeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 153
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    :sswitch_a
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 156
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->onRegistering(Landroid/net/sip/ISipSession;)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 162
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    :sswitch_b
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 166
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 167
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/net/sip/ISipSessionListener$Stub;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 173
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    .end local v1           #_arg1:I
    :sswitch_c
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 177
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 179
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 180
    .restart local v2       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 186
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    :sswitch_d
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 189
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 195
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    :sswitch_e
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 198
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->onSubscribing(Landroid/net/sip/ISipSession;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 204
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    :sswitch_f
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 208
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 210
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .restart local v2       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onSubscribeDone(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 217
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    :sswitch_10
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 221
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 223
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 224
    .restart local v2       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onSubscribeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 230
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    :sswitch_11
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 233
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->onMessageing(Landroid/net/sip/ISipSession;)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 239
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    :sswitch_12
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 243
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/sip/ISipSessionListener$Stub;->onMessageDone(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 250
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_13
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 254
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 256
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 258
    .restart local v2       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/sip/ISipSessionListener$Stub;->onMessageFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 265
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_arg3:Ljava/lang/String;
    :sswitch_14
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 269
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/sip/ISipSessionListener$Stub;->onMessageTimeout(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 276
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_15
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 279
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->onSubscribeTimeout(Landroid/net/sip/ISipSession;)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 285
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    :sswitch_16
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 289
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 290
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/sip/ISipSessionListener$Stub;->OnPublishing(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 296
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_17
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 300
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 301
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/sip/ISipSessionListener$Stub;->OnRecvSms(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 307
    .end local v0           #_arg0:Landroid/net/sip/ISipSession;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_18
    const-string v5, "android.net.sip.ISipSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 311
    .restart local v0       #_arg0:Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 312
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/sip/ISipSessionListener$Stub;->OnRecvReport(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 42
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
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
