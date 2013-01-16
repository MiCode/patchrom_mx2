.class public Lcom/meizu/internal/telephony/PhoneStateListenerEx;
.super Ljava/lang/Object;
.source "PhoneStateListenerEx.java"


# static fields
.field public static final LISTEN_NONE:I = 0x0

.field public static final LISTEN_PRECISE_CALL_STATE:I = 0x1


# instance fields
.field private callback:Lcom/meizu/internal/telephony/IPhoneStateListenerEx;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/meizu/internal/telephony/PhoneStateListenerEx$1;

    invoke-direct {v0, p0}, Lcom/meizu/internal/telephony/PhoneStateListenerEx$1;-><init>(Lcom/meizu/internal/telephony/PhoneStateListenerEx;)V

    iput-object v0, p0, Lcom/meizu/internal/telephony/PhoneStateListenerEx;->callback:Lcom/meizu/internal/telephony/IPhoneStateListenerEx;

    .line 27
    new-instance v0, Lcom/meizu/internal/telephony/PhoneStateListenerEx$2;

    invoke-direct {v0, p0}, Lcom/meizu/internal/telephony/PhoneStateListenerEx$2;-><init>(Lcom/meizu/internal/telephony/PhoneStateListenerEx;)V

    iput-object v0, p0, Lcom/meizu/internal/telephony/PhoneStateListenerEx;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/meizu/internal/telephony/IPhoneStateListenerEx;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/meizu/internal/telephony/PhoneStateListenerEx;->callback:Lcom/meizu/internal/telephony/IPhoneStateListenerEx;

    return-object v0
.end method

.method public onPreciseCallStateChange([Lcom/meizu/internal/telephony/CallInfo;)V
    .locals 0
    .parameter "callInfoArray"

    .prologue
    .line 16
    return-void
.end method
