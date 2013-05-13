.class Lcom/android/server/sip/SipSessionGroup$SubscribeCommand;
.super Ljava/util/EventObject;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscribeCommand"
.end annotation


# instance fields
.field private mDuration:I

.field private mPushNode:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/sip/SipSessionGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipSessionGroup;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "duration"
    .parameter "pushNode"

    .prologue
    .line 2402
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SubscribeCommand;->this$0:Lcom/android/server/sip/SipSessionGroup;

    .line 2403
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 2404
    iput p2, p0, Lcom/android/server/sip/SipSessionGroup$SubscribeCommand;->mDuration:I

    .line 2405
    iput-object p3, p0, Lcom/android/server/sip/SipSessionGroup$SubscribeCommand;->mPushNode:Ljava/lang/String;

    .line 2406
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 2409
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SubscribeCommand;->mDuration:I

    return v0
.end method

.method public getPushNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SubscribeCommand;->mPushNode:Ljava/lang/String;

    return-object v0
.end method
