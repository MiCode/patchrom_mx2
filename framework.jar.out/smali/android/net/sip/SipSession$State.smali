.class public Landroid/net/sip/SipSession$State;
.super Ljava/lang/Object;
.source "SipSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SipSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final DEREGISTERING:I = 0x2

.field public static final ENDING_CALL:I = 0xd

.field public static final INCOMING_CALL:I = 0x3

.field public static final INCOMING_CALL_ANSWERING:I = 0x4

.field public static final IN_CALL:I = 0x8

.field public static final MESSAGE:I = 0xc

.field public static final NOTIFY:I = 0xb

.field public static final NOT_DEFINED:I = 0x65

.field public static final OUTGOING_CALL:I = 0x5

.field public static final OUTGOING_CALL_CANCELING:I = 0x7

.field public static final OUTGOING_CALL_RING_BACK:I = 0x6

.field public static final PINGING:I = 0x9

.field public static final READY_TO_CALL:I = 0x0

.field public static final REGISTERING:I = 0x1

.field public static final SUBSCRIBE:I = 0xa


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 84
    packed-switch p0, :pswitch_data_0

    .line 112
    const-string v0, "NOT_DEFINED"

    :goto_0
    return-object v0

    .line 86
    :pswitch_0
    const-string v0, "READY_TO_CALL"

    goto :goto_0

    .line 88
    :pswitch_1
    const-string v0, "REGISTERING"

    goto :goto_0

    .line 90
    :pswitch_2
    const-string v0, "DEREGISTERING"

    goto :goto_0

    .line 92
    :pswitch_3
    const-string v0, "INCOMING_CALL"

    goto :goto_0

    .line 94
    :pswitch_4
    const-string v0, "INCOMING_CALL_ANSWERING"

    goto :goto_0

    .line 96
    :pswitch_5
    const-string v0, "OUTGOING_CALL"

    goto :goto_0

    .line 98
    :pswitch_6
    const-string v0, "OUTGOING_CALL_RING_BACK"

    goto :goto_0

    .line 100
    :pswitch_7
    const-string v0, "OUTGOING_CALL_CANCELING"

    goto :goto_0

    .line 102
    :pswitch_8
    const-string v0, "IN_CALL"

    goto :goto_0

    .line 104
    :pswitch_9
    const-string v0, "PINGING"

    goto :goto_0

    .line 106
    :pswitch_a
    const-string v0, "SUBSCRIBE"

    goto :goto_0

    .line 108
    :pswitch_b
    const-string v0, "NOTIFY"

    goto :goto_0

    .line 110
    :pswitch_c
    const-string v0, "MESSAGE"

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
